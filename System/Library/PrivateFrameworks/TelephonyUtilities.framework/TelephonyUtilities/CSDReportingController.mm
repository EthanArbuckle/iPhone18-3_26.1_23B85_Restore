@interface CSDReportingController
+ (id)sharedInstanceWithQueue:(id)queue;
- (CSDReportingController)initWithQueue:(id)queue;
- (NSArray)calls;
- (void)addReporter:(id)reporter;
- (void)avcBlobRecoveryStartedForConversation:(id)conversation;
- (void)avcBlobRecoveryTimedOutForConversation:(id)conversation;
- (void)avcBlobRequestMessageRetryFailedForConversationGroupUUID:(id)d;
- (void)avcBlobRequestMessageRetryStartedForConversationGroupUUID:(id)d;
- (void)avcBlobRequestMessageRetrySucceededForConversationGroupUUID:(id)d;
- (void)chatReceived:(id)received;
- (void)connectionSetupReportReceived:(id)received eventType:(int64_t)type forConversation:(id)conversation;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager addedActivatedLink:(id)link;
- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)conversationsChangedForConversationManager:(id)manager;
- (void)createConversationReportingSession:(id)session;
- (void)createOneToOneFTReportingSessionForCallWithUUID:(id)d withReportingHierarchyToken:(id)token withVideo:(BOOL)video;
- (void)dealloc;
- (void)didEndSession:(id)session startDate:(id)date endDate:(id)endDate;
- (void)groupActivitiesReportsReceived:(id)received forConversation:(id)conversation;
- (void)handleCallRecordingEnded:(id)ended;
- (void)handleCallStatusChanged:(id)changed;
- (void)handleReceptionistStateChanged:(id)changed;
- (void)handleScreeningChanged:(id)changed;
- (void)handoffReportReceived:(id)received forConversation:(id)conversation;
- (void)idsReportsReceived:(id)received forConversation:(id)conversation;
- (void)idsReportsReceived:(id)received forSessionWithUUID:(id)d;
- (void)messageRetryFailedForConversationGroupUUID:(id)d;
- (void)messageRetryStartedForConversationGroupUUID:(id)d;
- (void)messageRetrySucceededForConversationGroupUUID:(id)d;
- (void)participantClusterChangedForConversation:(id)conversation;
- (void)receivedLetMeInRequestForConversation:(id)conversation;
- (void)remoteMemberNotInMemberListForConversation:(id)conversation;
- (void)reportAllCallsBackgrounded;
- (void)reportCallEnteredForeground:(id)foreground;
- (void)reportJoinDurationLongerThanThreasholdForCallUUID:(id)d report:(id)report;
- (void)reportProviderFailedWithAction:(id)action forCall:(id)call;
- (void)reportRouteWasPicked:(id)picked;
- (void)reportRouteWasPickedByAnyTrigger:(id)trigger;
- (void)reportTimedOutPickingRoute:(id)route;
- (void)reportTransactionGroupCompleted:(id)completed;
- (void)reportingController:(id)controller letMeInRequestStateChangedForConversation:(id)conversation;
- (void)transitionAttemptForConversation:(id)conversation;
- (void)voipAppBecameDisabledFromLaunching:(id)launching;
- (void)voipAppFailedToPostIncomingCall:(id)call;
- (void)voipDOSCallIgnored:(id)ignored;
- (void)voipPushDroppedOnTheFloor:(id)floor;
@end

@implementation CSDReportingController

- (NSArray)calls
{
  v2 = +[TUCallCenter sharedInstance];
  currentAudioAndVideoCalls = [v2 currentAudioAndVideoCalls];

  return currentAudioAndVideoCalls;
}

+ (id)sharedInstanceWithQueue:(id)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100237F90;
  block[3] = &unk_100619D38;
  queueCopy = queue;
  v3 = qword_1006ACFA0;
  v4 = queueCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_1006ACFA0, block);
  }

  v5 = qword_1006ACF98;
  v6 = qword_1006ACF98;

  return v5;
}

- (CSDReportingController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = CSDReportingController;
  v6 = [(CSDReportingController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = +[NSMutableArray array];
    reporters = v7->_reporters;
    v7->_reporters = v8;

    v10 = +[NSMutableSet set];
    conversationUUIDs = v7->_conversationUUIDs;
    v7->_conversationUUIDs = v10;

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"handleCallStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v12 addObserver:v7 selector:"handleCallStatusChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
    [v12 addObserver:v7 selector:"handleScreeningChanged:" name:TUCallCenterIsScreeningChangedNotification object:0];
    [v12 addObserver:v7 selector:"handleReceptionistStateChanged:" name:TUCallCenterReceptionistStateChangedNotification object:0];
    v13 = +[CSDCallRecordingLaunchService CSDCallRecordingEndedNotification];
    [v12 addObserver:v7 selector:"handleCallRecordingEnded:" name:v13 object:0];

    queue = v7->_queue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002381E4;
    v16[3] = &unk_100619D88;
    v17 = v7;
    v18 = queueCopy;
    dispatch_async(queue, v16);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDReportingController;
  [(CSDReportingController *)&v4 dealloc];
}

- (void)addReporter:(id)reporter
{
  reporterCopy = reporter;
  if (TUSimulatedModeEnabled())
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = reporterCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not adding reporter %@ since simulated mode is enabled", &v7, 0xCu);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [reporterCopy setDataSource:self];
  }

  reporters = [(CSDReportingController *)self reporters];
  [reporters addObject:reporterCopy];
}

- (void)handleScreeningChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100238460;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)handleReceptionistStateChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002386A0;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)handleCallStatusChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002388E0;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)handleCallRecordingEnded:(id)ended
{
  endedCopy = ended;
  queue = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100238B44;
  v7[3] = &unk_100619D88;
  v8 = endedCopy;
  selfCopy = self;
  v6 = endedCopy;
  dispatch_async(queue, v7);
}

- (void)reportJoinDurationLongerThanThreasholdForCallUUID:(id)d report:(id)report
{
  dCopy = d;
  reportCopy = report;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reportJoinDurationLongerThanThreashold for callUUID: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v10 = [reporters countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(reporters);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 reportingController:self forCallUUID:dCopy report:reportCopy];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [reporters countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)reportCallEnteredForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = foregroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "for call: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self callEnteredForeground:foregroundCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)reportAllCallsBackgrounded
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v5 = [reporters countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(reporters);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 allCallsBackgroundedForReportingController:self];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [reporters countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)reportTransactionGroupCompleted:(id)completed
{
  completedCopy = completed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = completedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transactionGroup: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self transactionGroupCompleted:completedCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)reportProviderFailedWithAction:(id)action forCall:(id)call
{
  actionCopy = action;
  callCopy = call;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = actionCopy;
    v22 = 2112;
    v23 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "with action: %@ for call %@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v10 = [reporters countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(reporters);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 reportingController:self providerFailedWithAction:actionCopy forCall:callCopy];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [reporters countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)reportRouteWasPicked:(id)picked
{
  pickedCopy = picked;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = pickedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "route: %@", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CSDReportingController *)self reporters];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      v17 = "reportingController:pickedRoute:forCall:";
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = v7;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          calls = [(CSDReportingController *)self calls];
          v13 = [calls countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            do
            {
              v16 = 0;
              do
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(calls);
                }

                [v10 reportingController:self pickedRoute:pickedCopy forCall:{*(*(&v19 + 1) + 8 * v16), v17}];
                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [calls countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v14);
          }

          v7 = v11;
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }
}

- (void)reportRouteWasPickedByAnyTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = triggerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "picked route: %@", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CSDReportingController *)self reporters];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      v17 = "reportingController:pickedRoute:updatedByAnyTriggerForCall:";
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = v7;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          calls = [(CSDReportingController *)self calls];
          v13 = [calls countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            do
            {
              v16 = 0;
              do
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(calls);
                }

                [v10 reportingController:self pickedRoute:triggerCopy updatedByAnyTriggerForCall:{*(*(&v19 + 1) + 8 * v16), v17}];
                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [calls countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v14);
          }

          v7 = v11;
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }
}

- (void)reportTimedOutPickingRoute:(id)route
{
  routeCopy = route;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = routeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "route: %@", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CSDReportingController *)self reporters];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      v17 = "reportingController:timedOutPickingRoute:forCall:";
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = v7;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          calls = [(CSDReportingController *)self calls];
          v13 = [calls countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            do
            {
              v16 = 0;
              do
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(calls);
                }

                [v10 reportingController:self timedOutPickingRoute:routeCopy forCall:{*(*(&v19 + 1) + 8 * v16), v17}];
                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [calls countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v14);
          }

          v7 = v11;
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }
}

- (void)createOneToOneFTReportingSessionForCallWithUUID:(id)d withReportingHierarchyToken:(id)token withVideo:(BOOL)video
{
  dCopy = d;
  tokenCopy = token;
  queue = [(CSDReportingController *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100239D10;
  v13[3] = &unk_10061BE38;
  v14 = dCopy;
  selfCopy = self;
  v16 = tokenCopy;
  videoCopy = video;
  v11 = tokenCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

- (void)createConversationReportingSession:(id)session
{
  sessionCopy = session;
  queue = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100239FA8;
  v7[3] = &unk_100619D88;
  v8 = sessionCopy;
  selfCopy = self;
  v6 = sessionCopy;
  dispatch_async(queue, v7);
}

- (void)idsReportsReceived:(id)received forConversation:(id)conversation
{
  receivedCopy = received;
  conversationCopy = conversation;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v9 = [reporters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(reporters);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 reportingController:self receivedIDSReports:receivedCopy forConversation:conversationCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [reporters countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)idsReportsReceived:(id)received forSessionWithUUID:(id)d
{
  receivedCopy = received;
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v9 = [reporters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(reporters);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 reportingController:self receivedIDSReports:receivedCopy forSessionWithUUID:dCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [reporters countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)chatReceived:(id)received
{
  receivedCopy = received;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = receivedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "chat=%@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self receivedIDSChat:receivedCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)handoffReportReceived:(id)received forConversation:(id)conversation
{
  receivedCopy = received;
  conversationCopy = conversation;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 138412546;
    v22 = uUID;
    v23 = 2112;
    v24 = receivedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handoffReportReceived for conversationUUID %@, %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v11 = [reporters countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(reporters);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 reportingController:self receivedHandoffReport:receivedCopy forConversation:conversationCopy];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [reporters countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)connectionSetupReportReceived:(id)received eventType:(int64_t)type forConversation:(id)conversation
{
  receivedCopy = received;
  conversationCopy = conversation;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [CSDRTCConnectionSetup eventTypeNameFrom:type];
    uUID = [conversationCopy UUID];
    *buf = 138412546;
    v25 = v11;
    v26 = 2112;
    v27 = uUID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "connectionSetupReport received eventType %@ for conversationUUID %@", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v14 = [reporters countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(reporters);
        }

        v18 = *(*(&v19 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 reportingController:self receivedConnectionSetupReport:receivedCopy eventType:type forConversation:conversationCopy];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [reporters countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (void)groupActivitiesReportsReceived:(id)received forConversation:(id)conversation
{
  receivedCopy = received;
  conversationCopy = conversation;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "groupActivitiesReports received for conversation %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v10 = [reporters countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(reporters);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 reportingController:self receivedGroupActivitiesReports:receivedCopy forConversation:conversationCopy];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [reporters countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)avcBlobRecoveryStartedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "blob recovery started for conversation %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self AVCBlobRecoveryStartedForConversation:conversationCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)remoteMemberNotInMemberListForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "remoteMemberNotInMemberList for conversation %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self remoteMemberNotInMemberListForConversation:conversationCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)transitionAttemptForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attempted transition for conversation %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self transitionAttemptForConversation:conversationCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)avcBlobRecoveryTimedOutForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "blob recovery timed out for conversation %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self AVCBlobRecoveryTimedOutForConversation:conversationCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)messageRetryStartedForConversationGroupUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "message retry started for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self messageRetryStartedForConversationGroupUUID:dCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)messageRetryFailedForConversationGroupUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "message retry failed for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self messageRetryFailedForConversationGroupUUID:dCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)messageRetrySucceededForConversationGroupUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "message retry succeeded for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self messageRetrySucceededForConversationGroupUUID:dCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)avcBlobRequestMessageRetryStartedForConversationGroupUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "avc blob request message retry started for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self avcBlobRequestMessageRetryStartedForConversationGroupUUID:dCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)avcBlobRequestMessageRetryFailedForConversationGroupUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "avc blob request message retry failed for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self avcBlobRequestMessageRetryFailedForConversationGroupUUID:dCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)avcBlobRequestMessageRetrySucceededForConversationGroupUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "avc blob request message retry succeeded for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self avcBlobRequestMessageRetrySucceededForConversationGroupUUID:dCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)voipAppFailedToPostIncomingCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VoIP app %@ failed to post incoming call", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self voipAppFailedToPostIncomingCall:callCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)voipAppBecameDisabledFromLaunching:(id)launching
{
  launchingCopy = launching;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = launchingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VoIP app %@ no longer eligible to launch", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self voipAppBecameDisabledFromLaunching:launchingCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)voipPushDroppedOnTheFloor:(id)floor
{
  floorCopy = floor;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = floorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VoIP push for app %@ dropped on the floor", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self voipPushDroppedOnTheFloor:floorCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)voipDOSCallIgnored:(id)ignored
{
  ignoredCopy = ignored;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = ignoredCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VoIP DOS detected for %@, ignoring call", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self voipDOSCallIgnored:ignoredCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)receivedLetMeInRequestForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "receivedLetMeInRequestForConversation: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self receivedLetMeInRequestForConversation:conversationCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)didEndSession:(id)session startDate:(id)date endDate:(id)endDate
{
  sessionCopy = session;
  dateCopy = date;
  endDateCopy = endDate;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = dateCopy;
    v25 = 2112;
    v26 = endDateCopy;
    v27 = 2112;
    v28 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Send activity session ended with startDate %@ endDate%@ session %@", buf, 0x20u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v13 = [reporters countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(reporters);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 reportingController:self didEndSession:sessionCopy startDate:dateCopy endDate:endDateCopy];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [reporters countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)participantClusterChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v6 = [reporters countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(reporters);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 reportingController:self participantClusterChangedForConversation:conversationCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [reporters countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)conversationsChangedForConversationManager:(id)manager
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [manager activeConversations];
  v4 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    v22 = *v30;
    do
    {
      v7 = 0;
      v23 = v5;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        conversationUUIDs = [(CSDReportingController *)self conversationUUIDs];
        uUID = [v8 UUID];
        uUIDString = [uUID UUIDString];
        v12 = [conversationUUIDs containsObject:uUIDString];

        if ((v12 & 1) == 0)
        {
          conversationUUIDs2 = [(CSDReportingController *)self conversationUUIDs];
          uUID2 = [v8 UUID];
          uUIDString2 = [uUID2 UUIDString];
          [conversationUUIDs2 addObject:uUIDString2];

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          reporters = [(CSDReportingController *)self reporters];
          v17 = [reporters countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v26;
            do
            {
              v20 = 0;
              do
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(reporters);
                }

                v21 = *(*(&v25 + 1) + 8 * v20);
                if (objc_opt_respondsToSelector())
                {
                  [v21 reportingController:self addedActiveConversation:v8];
                }

                v20 = v20 + 1;
              }

              while (v18 != v20);
              v18 = [reporters countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v18);
          }

          v6 = v22;
          v5 = v23;
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v5);
  }
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self activeRemoteParticipantsChangedForConversation:conversationCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self remoteMembersChangedForConversation:conversationCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self stateChangedForConversation:conversationCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)reportingController:(id)controller letMeInRequestStateChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self letMeInRequestStateChangedForConversation:conversationCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(CSDReportingController *)self reporters];
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        conversationUUIDs = [(CSDReportingController *)self conversationUUIDs];
        uUID = [conversationCopy UUID];
        uUIDString = [uUID UUIDString];
        [conversationUUIDs removeObject:uUIDString];

        if (objc_opt_respondsToSelector())
        {
          [v10 reportingController:self removedActiveConversation:conversationCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)conversationManager:(id)manager addedActivatedLink:(id)link
{
  linkCopy = link;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reporters = [(CSDReportingController *)self reporters];
  v7 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reporters);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self addedActivatedLink:linkCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [reporters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end