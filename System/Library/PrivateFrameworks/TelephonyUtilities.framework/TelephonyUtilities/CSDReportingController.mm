@interface CSDReportingController
+ (id)sharedInstanceWithQueue:(id)a3;
- (CSDReportingController)initWithQueue:(id)a3;
- (NSArray)calls;
- (void)addReporter:(id)a3;
- (void)avcBlobRecoveryStartedForConversation:(id)a3;
- (void)avcBlobRecoveryTimedOutForConversation:(id)a3;
- (void)avcBlobRequestMessageRetryFailedForConversationGroupUUID:(id)a3;
- (void)avcBlobRequestMessageRetryStartedForConversationGroupUUID:(id)a3;
- (void)avcBlobRequestMessageRetrySucceededForConversationGroupUUID:(id)a3;
- (void)chatReceived:(id)a3;
- (void)connectionSetupReportReceived:(id)a3 eventType:(int64_t)a4 forConversation:(id)a5;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 addedActivatedLink:(id)a4;
- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)conversationsChangedForConversationManager:(id)a3;
- (void)createConversationReportingSession:(id)a3;
- (void)createOneToOneFTReportingSessionForCallWithUUID:(id)a3 withReportingHierarchyToken:(id)a4 withVideo:(BOOL)a5;
- (void)dealloc;
- (void)didEndSession:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (void)groupActivitiesReportsReceived:(id)a3 forConversation:(id)a4;
- (void)handleCallRecordingEnded:(id)a3;
- (void)handleCallStatusChanged:(id)a3;
- (void)handleReceptionistStateChanged:(id)a3;
- (void)handleScreeningChanged:(id)a3;
- (void)handoffReportReceived:(id)a3 forConversation:(id)a4;
- (void)idsReportsReceived:(id)a3 forConversation:(id)a4;
- (void)idsReportsReceived:(id)a3 forSessionWithUUID:(id)a4;
- (void)messageRetryFailedForConversationGroupUUID:(id)a3;
- (void)messageRetryStartedForConversationGroupUUID:(id)a3;
- (void)messageRetrySucceededForConversationGroupUUID:(id)a3;
- (void)participantClusterChangedForConversation:(id)a3;
- (void)receivedLetMeInRequestForConversation:(id)a3;
- (void)remoteMemberNotInMemberListForConversation:(id)a3;
- (void)reportAllCallsBackgrounded;
- (void)reportCallEnteredForeground:(id)a3;
- (void)reportJoinDurationLongerThanThreasholdForCallUUID:(id)a3 report:(id)a4;
- (void)reportProviderFailedWithAction:(id)a3 forCall:(id)a4;
- (void)reportRouteWasPicked:(id)a3;
- (void)reportRouteWasPickedByAnyTrigger:(id)a3;
- (void)reportTimedOutPickingRoute:(id)a3;
- (void)reportTransactionGroupCompleted:(id)a3;
- (void)reportingController:(id)a3 letMeInRequestStateChangedForConversation:(id)a4;
- (void)transitionAttemptForConversation:(id)a3;
- (void)voipAppBecameDisabledFromLaunching:(id)a3;
- (void)voipAppFailedToPostIncomingCall:(id)a3;
- (void)voipDOSCallIgnored:(id)a3;
- (void)voipPushDroppedOnTheFloor:(id)a3;
@end

@implementation CSDReportingController

- (NSArray)calls
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];

  return v3;
}

+ (id)sharedInstanceWithQueue:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100237F90;
  block[3] = &unk_100619D38;
  v9 = a3;
  v3 = qword_1006ACFA0;
  v4 = v9;
  if (v3 != -1)
  {
    dispatch_once(&qword_1006ACFA0, block);
  }

  v5 = qword_1006ACF98;
  v6 = qword_1006ACF98;

  return v5;
}

- (CSDReportingController)initWithQueue:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = CSDReportingController;
  v6 = [(CSDReportingController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
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
    v18 = v5;
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

- (void)addReporter:(id)a3
{
  v4 = a3;
  if (TUSimulatedModeEnabled())
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not adding reporter %@ since simulated mode is enabled", &v7, 0xCu);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDataSource:self];
  }

  v6 = [(CSDReportingController *)self reporters];
  [v6 addObject:v4];
}

- (void)handleScreeningChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100238460;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleReceptionistStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002386A0;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleCallStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002388E0;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleCallRecordingEnded:(id)a3
{
  v4 = a3;
  v5 = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100238B44;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)reportJoinDurationLongerThanThreasholdForCallUUID:(id)a3 report:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reportJoinDurationLongerThanThreashold for callUUID: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(CSDReportingController *)self reporters];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 reportingController:self forCallUUID:v6 report:v7];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)reportCallEnteredForeground:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "for call: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self callEnteredForeground:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(CSDReportingController *)self reporters];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 allCallsBackgroundedForReportingController:self];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)reportTransactionGroupCompleted:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transactionGroup: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self transactionGroupCompleted:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)reportProviderFailedWithAction:(id)a3 forCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "with action: %@ for call %@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(CSDReportingController *)self reporters];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 reportingController:self providerFailedWithAction:v6 forCall:v7];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)reportRouteWasPicked:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v4;
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
          v12 = [(CSDReportingController *)self calls];
          v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                  objc_enumerationMutation(v12);
                }

                [v10 reportingController:self pickedRoute:v4 forCall:{*(*(&v19 + 1) + 8 * v16), v17}];
                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (void)reportRouteWasPickedByAnyTrigger:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v4;
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
          v12 = [(CSDReportingController *)self calls];
          v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                  objc_enumerationMutation(v12);
                }

                [v10 reportingController:self pickedRoute:v4 updatedByAnyTriggerForCall:{*(*(&v19 + 1) + 8 * v16), v17}];
                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (void)reportTimedOutPickingRoute:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v4;
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
          v12 = [(CSDReportingController *)self calls];
          v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                  objc_enumerationMutation(v12);
                }

                [v10 reportingController:self timedOutPickingRoute:v4 forCall:{*(*(&v19 + 1) + 8 * v16), v17}];
                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (void)createOneToOneFTReportingSessionForCallWithUUID:(id)a3 withReportingHierarchyToken:(id)a4 withVideo:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CSDReportingController *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100239D10;
  v13[3] = &unk_10061BE38;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)createConversationReportingSession:(id)a3
{
  v4 = a3;
  v5 = [(CSDReportingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100239FA8;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)idsReportsReceived:(id)a3 forConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(CSDReportingController *)self reporters];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 reportingController:self receivedIDSReports:v6 forConversation:v7];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)idsReportsReceived:(id)a3 forSessionWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(CSDReportingController *)self reporters];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 reportingController:self receivedIDSReports:v6 forSessionWithUUID:v7];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)chatReceived:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "chat=%@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self receivedIDSChat:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)handoffReportReceived:(id)a3 forConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 UUID];
    *buf = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handoffReportReceived for conversationUUID %@, %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(CSDReportingController *)self reporters];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 reportingController:self receivedHandoffReport:v6 forConversation:v7];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)connectionSetupReportReceived:(id)a3 eventType:(int64_t)a4 forConversation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [CSDRTCConnectionSetup eventTypeNameFrom:a4];
    v12 = [v9 UUID];
    *buf = 138412546;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "connectionSetupReport received eventType %@ for conversationUUID %@", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(CSDReportingController *)self reporters];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 reportingController:self receivedConnectionSetupReport:v8 eventType:a4 forConversation:v9];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (void)groupActivitiesReportsReceived:(id)a3 forConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "groupActivitiesReports received for conversation %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(CSDReportingController *)self reporters];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 reportingController:self receivedGroupActivitiesReports:v6 forConversation:v7];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)avcBlobRecoveryStartedForConversation:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "blob recovery started for conversation %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self AVCBlobRecoveryStartedForConversation:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)remoteMemberNotInMemberListForConversation:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "remoteMemberNotInMemberList for conversation %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self remoteMemberNotInMemberListForConversation:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)transitionAttemptForConversation:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attempted transition for conversation %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self transitionAttemptForConversation:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)avcBlobRecoveryTimedOutForConversation:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "blob recovery timed out for conversation %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self AVCBlobRecoveryTimedOutForConversation:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)messageRetryStartedForConversationGroupUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "message retry started for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self messageRetryStartedForConversationGroupUUID:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)messageRetryFailedForConversationGroupUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "message retry failed for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self messageRetryFailedForConversationGroupUUID:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)messageRetrySucceededForConversationGroupUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "message retry succeeded for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self messageRetrySucceededForConversationGroupUUID:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)avcBlobRequestMessageRetryStartedForConversationGroupUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "avc blob request message retry started for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self avcBlobRequestMessageRetryStartedForConversationGroupUUID:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)avcBlobRequestMessageRetryFailedForConversationGroupUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "avc blob request message retry failed for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self avcBlobRequestMessageRetryFailedForConversationGroupUUID:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)avcBlobRequestMessageRetrySucceededForConversationGroupUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "avc blob request message retry succeeded for conversationGroupUUID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self avcBlobRequestMessageRetrySucceededForConversationGroupUUID:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)voipAppFailedToPostIncomingCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VoIP app %@ failed to post incoming call", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self voipAppFailedToPostIncomingCall:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)voipAppBecameDisabledFromLaunching:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VoIP app %@ no longer eligible to launch", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self voipAppBecameDisabledFromLaunching:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)voipPushDroppedOnTheFloor:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VoIP push for app %@ dropped on the floor", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self voipPushDroppedOnTheFloor:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)voipDOSCallIgnored:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VoIP DOS detected for %@, ignoring call", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self voipDOSCallIgnored:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)receivedLetMeInRequestForConversation:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "receivedLetMeInRequestForConversation: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self receivedLetMeInRequestForConversation:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)didEndSession:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Send activity session ended with startDate %@ endDate%@ session %@", buf, 0x20u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(CSDReportingController *)self reporters];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 reportingController:self didEndSession:v8 startDate:v9 endDate:v10];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)participantClusterChangedForConversation:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CSDReportingController *)self reporters];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 reportingController:self participantClusterChangedForConversation:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)conversationsChangedForConversationManager:(id)a3
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [a3 activeConversations];
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
        v9 = [(CSDReportingController *)self conversationUUIDs];
        v10 = [v8 UUID];
        v11 = [v10 UUIDString];
        v12 = [v9 containsObject:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [(CSDReportingController *)self conversationUUIDs];
          v14 = [v8 UUID];
          v15 = [v14 UUIDString];
          [v13 addObject:v15];

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v16 = [(CSDReportingController *)self reporters];
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v25 + 1) + 8 * v20);
                if (objc_opt_respondsToSelector())
                {
                  [v21 reportingController:self addedActiveConversation:v8];
                }

                v20 = v20 + 1;
              }

              while (v18 != v20);
              v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
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

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self activeRemoteParticipantsChangedForConversation:v5];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4
{
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self remoteMembersChangedForConversation:v5];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self stateChangedForConversation:v5];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)reportingController:(id)a3 letMeInRequestStateChangedForConversation:(id)a4
{
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self letMeInRequestStateChangedForConversation:v5];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v5 = a4;
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
        v11 = [(CSDReportingController *)self conversationUUIDs];
        v12 = [v5 UUID];
        v13 = [v12 UUIDString];
        [v11 removeObject:v13];

        if (objc_opt_respondsToSelector())
        {
          [v10 reportingController:self removedActiveConversation:v5];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)conversationManager:(id)a3 addedActivatedLink:(id)a4
{
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDReportingController *)self reporters];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reportingController:self addedActivatedLink:v5];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end