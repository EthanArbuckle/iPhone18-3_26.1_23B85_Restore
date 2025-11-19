@interface MADAutoAssetConnector
+ (id)_getAutoAssetConnectorStateTable;
+ (id)autoAssetConnector;
+ (void)alteredMonitoringMarkers:(id)a3 withTriggeredNoRetry:(id)a4 withTriggeredRequiringRetry:(id)a5;
+ (void)observedNetworkPathToServerDown:(id)a3;
+ (void)observedNetworkPathToServerUp:(id)a3;
+ (void)resumeMonitoringMarkers:(id)a3 withMarkersRequiringRetry:(id)a4;
+ (void)scheduledMarkerFinished:(id)a3 withPotentialNetworkFailure:(BOOL)a4;
+ (void)simulateNetworkPathDown:(id)a3;
+ (void)simulateNetworkPathUp:(id)a3;
- (BOOL)_isAnyServerUpForJobsToBeAttempted:(id)a3;
- (BOOL)_isBackoffRetryRequired:(id)a3;
- (BOOL)_isMarker:(id)a3 trackedByArray:(id)a4;
- (BOOL)_isMarkerBeingMonitored:(id)a3;
- (BOOL)_isPathToServerForMarkerUp:(id)a3;
- (BOOL)_triggerNextMarker;
- (MADAutoAssetConnector)init;
- (id)_followupInUseServerStatus:(id)a3;
- (id)_startTimer:(id)a3 ofTimerCategory:(id)a4 forOneShotSecs:(int64_t)a5 withFiredMessage:(id)a6 postingEvent:(id)a7;
- (id)_updateLatestSummary;
- (id)summary;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)action_AlteredJobsDecidePreemptBackoff:(id)a3 error:(id *)a4;
- (int64_t)action_AlteredJobsDecideStillActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_AlteredJobsReplaceDecideHaveJobs:(id)a3 error:(id *)a4;
- (int64_t)action_ClearOSTransaction:(id)a3 error:(id *)a4;
- (int64_t)action_DecideServerApplicableToJobs:(id)a3 error:(id *)a4;
- (int64_t)action_FiredBackoffDecideServerApplicableToJobs:(id)a3 error:(id *)a4;
- (int64_t)action_FiredBackoffIgnored:(id)a3 error:(id *)a4;
- (int64_t)action_FiredInitial:(id)a3 error:(id *)a4;
- (int64_t)action_FiredInitialDecideServerApplicableToJobs:(id)a3 error:(id *)a4;
- (int64_t)action_FiredRetryConnOrderAttemptFirstJobActive:(id)a3 error:(id *)a4;
- (int64_t)action_FiredRetryDiscTakeOSXactOrderAttempt1st:(id)a3 error:(id *)a4;
- (int64_t)action_FiredRetryWait:(id)a3 error:(id *)a4;
- (int64_t)action_FiredRetryWaitIgnored:(id)a3 error:(id *)a4;
- (int64_t)action_JobFinishedDecideHaveJobs:(id)a3 error:(id *)a4;
- (int64_t)action_JobFinishedDecideStillActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_NextScheduledJobNowActive:(id)a3 error:(id *)a4;
- (int64_t)action_OrderAttemptTakeOSXactFirstJobActive:(id)a3 error:(id *)a4;
- (int64_t)action_ResumeDecideRequiringRetry:(id)a3 error:(id *)a4;
- (int64_t)action_StartBackoffAndRetryWaitTimersClearOSXact:(id)a3 error:(id *)a4;
- (int64_t)action_StartInitialWaitTimer:(id)a3 error:(id *)a4;
- (int64_t)action_StartupAlteredJobsReplaceDecideHaveJobs:(id)a3 error:(id *)a4;
- (int64_t)action_StopBackoffTakeOSXactOrderAttempt1st:(id)a3 error:(id *)a4;
- (int64_t)action_StopBackoffTimer:(id)a3 error:(id *)a4;
- (int64_t)action_StopBackoffTimerTakeOSTransaction:(id)a3 error:(id *)a4;
- (int64_t)action_TakeOSTransaction:(id)a3 error:(id *)a4;
- (int64_t)action_TrackServerDown:(id)a3 error:(id *)a4;
- (int64_t)action_TrackServerDownDecideApplicableToJobs:(id)a3 error:(id *)a4;
- (int64_t)action_TrackServerDownDecideInUseActiveJob:(id)a3 error:(id *)a4;
- (int64_t)action_TrackServerUp:(id)a3 error:(id *)a4;
- (int64_t)action_TrackServerUpDecideApplicableToJobs:(id)a3 error:(id *)a4;
- (int64_t)action_TrackServerUpDecideInUseActiveJob:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)_addObserverForMarker:(id)a3;
- (void)_adoptAlteredMarkers:(id)a3 fromLocation:(id)a4;
- (void)_chooseOrderForNextAttemptAndStartFirstJob:(id)a3 beginningOSTransaction:(BOOL)a4;
- (void)_firedTimer:(id)a3 ofTimerCategory:(id)a4;
- (void)_issueFollowupApplicableServersUpDown:(id)a3;
- (void)_issueFollowupWhetherHaveJobs:(id)a3 notifyingWhenNoJobs:(BOOL)a4;
- (void)_logClearedActiveJobAndAttemptRemainingMarkers:(id)a3;
- (void)_logClearedActiveJobMarker:(id)a3;
- (void)_logClearedAttemptRemainingMarkers:(id)a3;
- (void)_logCurrentAttemptRemainingMarkers:(id)a3;
- (void)_logMarkerRequiringRetry:(id)a3 addedMarker:(id)a4;
- (void)_logMarkerRequiringRetry:(id)a3 removedMarker:(id)a4;
- (void)_logMarkersBeingMonitored:(id)a3;
- (void)_logMarkersRequiringRetry:(id)a3;
- (void)_logNextActiveJobForAttemptRemainingMarkers:(id)a3;
- (void)_logTriggeredMarkerNoRetry:(id)a3 addedMarker:(id)a4;
- (void)_logTriggeredMarkerNoRetry:(id)a3 removedMarker:(id)a4;
- (void)_logTriggeredMarkerRequiringRetry:(id)a3 addedMarker:(id)a4;
- (void)_logTriggeredMarkerRequiringRetry:(id)a3 removedMarker:(id)a4;
- (void)_logTriggeredMarkersCleared:(id)a3;
- (void)_logTriggeredMarkersNoRetry:(id)a3;
- (void)_logTriggeredMarkersRequiringRetry:(id)a3;
- (void)_refreshTrackingOfFinishedMarker:(id)a3 withPotentialNetworkFailure:(BOOL)a4;
- (void)_removeObserverForMarker:(id)a3;
- (void)_setBackoffRetryLevel:(int64_t)a3 forReason:(id)a4;
- (void)_stoppedTimer:(id)a3 ofTimerCategory:(id)a4;
- (void)_trackServerDown:(id)a3 fromLocation:(id)a4;
- (void)_trackServerUp:(id)a3 fromLocation:(id)a4;
- (void)osTransactionBegin:(id)a3;
- (void)osTransactionEnd:(id)a3;
@end

@implementation MADAutoAssetConnector

+ (id)_getAutoAssetConnectorStateTable
{
  v423[0] = @"ReadyToResume";
  v421[0] = @"ResumeMonitoringMarkers";
  v2 = kSUCoreActionKey;
  v419 = kSUCoreActionKey;
  v420 = @"ResumeDecideRequiringRetry";
  v146 = [NSDictionary dictionaryWithObjects:&v420 forKeys:&v419 count:1];
  v422[0] = v146;
  v421[1] = @"ResumeNothingRequiringRetry";
  v3 = kSUCoreNextStateKey;
  v417[0] = kSUCoreNextStateKey;
  v417[1] = v2;
  v418[0] = @"IdleStartup";
  v418[1] = @"StartInitialWaitTimer";
  v145 = [NSDictionary dictionaryWithObjects:v418 forKeys:v417 count:2];
  v422[1] = v145;
  v421[2] = @"ResumeHaveJobsRequiringRetry";
  v415[0] = v3;
  v415[1] = v2;
  v416[0] = @"DetermineConnectivityStartup";
  v416[1] = @"StartInitialWaitTimer";
  v144 = [NSDictionary dictionaryWithObjects:v416 forKeys:v415 count:2];
  v422[2] = v144;
  v143 = [NSDictionary dictionaryWithObjects:v422 forKeys:v421 count:3];
  v424[0] = v143;
  v423[1] = @"IdleStartup";
  v413[0] = @"AlteredTriggeredMarkers";
  v411 = v2;
  v412 = @"StartupAlteredJobsReplaceDecideHaveJobs";
  v142 = [NSDictionary dictionaryWithObjects:&v412 forKeys:&v411 count:1];
  v414[0] = v142;
  v413[1] = @"JobFinishedForMarker";
  v409 = v2;
  v4 = kSUCoreFSMActionNoOp;
  v410 = kSUCoreFSMActionNoOp;
  v141 = [NSDictionary dictionaryWithObjects:&v410 forKeys:&v409 count:1];
  v414[1] = v141;
  v413[2] = @"NetworkPathToServerUp";
  v407 = v2;
  v408 = @"TrackServerUp";
  v140 = [NSDictionary dictionaryWithObjects:&v408 forKeys:&v407 count:1];
  v414[2] = v140;
  v413[3] = @"NetworkPathToServerDown";
  v405 = v2;
  v406 = @"TrackServerDown";
  v139 = [NSDictionary dictionaryWithObjects:&v406 forKeys:&v405 count:1];
  v414[3] = v139;
  v413[4] = @"TimeoutInitialStartup";
  v403[0] = v3;
  v403[1] = v2;
  v404[0] = @"Idle";
  v404[1] = @"FiredInitial";
  v138 = [NSDictionary dictionaryWithObjects:v404 forKeys:v403 count:2];
  v414[4] = v138;
  v413[5] = @"AttemptAbandoned";
  v401 = v2;
  v402 = v4;
  v137 = [NSDictionary dictionaryWithObjects:&v402 forKeys:&v401 count:1];
  v414[5] = v137;
  v413[6] = @"AlteredHaveJobs";
  v399 = v3;
  v400 = @"DetermineConnectivityStartup";
  v136 = [NSDictionary dictionaryWithObjects:&v400 forKeys:&v399 count:1];
  v414[6] = v136;
  v413[7] = @"AlteredNoJobs";
  v397 = v2;
  v398 = v4;
  v135 = [NSDictionary dictionaryWithObjects:&v398 forKeys:&v397 count:1];
  v414[7] = v135;
  v134 = [NSDictionary dictionaryWithObjects:v414 forKeys:v413 count:8];
  v424[1] = v134;
  v423[2] = @"DetermineConnectivityStartup";
  v395[0] = @"AlteredTriggeredMarkers";
  v393 = v2;
  v394 = @"StartupAlteredJobsReplaceDecideHaveJobs";
  v133 = [NSDictionary dictionaryWithObjects:&v394 forKeys:&v393 count:1];
  v396[0] = v133;
  v395[1] = @"JobFinishedForMarker";
  v391 = v2;
  v392 = @"JobFinishedDecideHaveJobs";
  v132 = [NSDictionary dictionaryWithObjects:&v392 forKeys:&v391 count:1];
  v396[1] = v132;
  v395[2] = @"NetworkPathToServerUp";
  v389 = v2;
  v390 = @"TrackServerUp";
  v131 = [NSDictionary dictionaryWithObjects:&v390 forKeys:&v389 count:1];
  v396[2] = v131;
  v395[3] = @"NetworkPathToServerDown";
  v387 = v2;
  v388 = @"TrackServerDown";
  v130 = [NSDictionary dictionaryWithObjects:&v388 forKeys:&v387 count:1];
  v396[3] = v130;
  v395[4] = @"TimeoutInitialStartup";
  v385 = v2;
  v386 = @"FiredInitialDecideServerApplicableToJobs";
  v129 = [NSDictionary dictionaryWithObjects:&v386 forKeys:&v385 count:1];
  v396[4] = v129;
  v395[5] = @"AttemptAbandoned";
  v383 = v2;
  v384 = v4;
  v128 = [NSDictionary dictionaryWithObjects:&v384 forKeys:&v383 count:1];
  v396[5] = v128;
  v395[6] = @"AlteredHaveJobs";
  v381 = v2;
  v382 = v4;
  v127 = [NSDictionary dictionaryWithObjects:&v382 forKeys:&v381 count:1];
  v396[6] = v127;
  v395[7] = @"AlteredNoJobs";
  v379 = v3;
  v380 = @"IdleStartup";
  v126 = [NSDictionary dictionaryWithObjects:&v380 forKeys:&v379 count:1];
  v396[7] = v126;
  v395[8] = @"ApplicableServersUp";
  v377[0] = v3;
  v377[1] = v2;
  v378[0] = @"ConnectedActiveJob";
  v378[1] = @"OrderAttemptTakeOSXactFirstJobActive";
  v125 = [NSDictionary dictionaryWithObjects:v378 forKeys:v377 count:2];
  v396[8] = v125;
  v395[9] = @"ApplicableServersDown";
  v375[0] = v3;
  v375[1] = v2;
  v376[0] = @"DisconnectedActiveJob";
  v376[1] = @"OrderAttemptTakeOSXactFirstJobActive";
  v124 = [NSDictionary dictionaryWithObjects:v376 forKeys:v375 count:2];
  v396[9] = v124;
  v123 = [NSDictionary dictionaryWithObjects:v396 forKeys:v395 count:10];
  v424[2] = v123;
  v423[3] = @"Idle";
  v373[0] = @"AlteredTriggeredMarkers";
  v371 = v2;
  v372 = @"AlteredJobsReplaceDecideHaveJobs";
  v122 = [NSDictionary dictionaryWithObjects:&v372 forKeys:&v371 count:1];
  v374[0] = v122;
  v373[1] = @"JobFinishedForMarker";
  v369 = v2;
  v370 = v4;
  v121 = [NSDictionary dictionaryWithObjects:&v370 forKeys:&v369 count:1];
  v374[1] = v121;
  v373[2] = @"NetworkPathToServerUp";
  v367 = v2;
  v368 = @"TrackServerUp";
  v120 = [NSDictionary dictionaryWithObjects:&v368 forKeys:&v367 count:1];
  v374[2] = v120;
  v373[3] = @"NetworkPathToServerDown";
  v365 = v2;
  v366 = @"TrackServerDown";
  v119 = [NSDictionary dictionaryWithObjects:&v366 forKeys:&v365 count:1];
  v374[3] = v119;
  v373[4] = @"TimeoutRetryWait";
  v363 = v2;
  v364 = @"FiredRetryWaitIgnored";
  v118 = [NSDictionary dictionaryWithObjects:&v364 forKeys:&v363 count:1];
  v374[4] = v118;
  v373[5] = @"TimeoutBackoffRetry";
  v361 = v2;
  v362 = @"FiredBackoffIgnored";
  v117 = [NSDictionary dictionaryWithObjects:&v362 forKeys:&v361 count:1];
  v374[5] = v117;
  v373[6] = @"AttemptAbandoned";
  v359 = v2;
  v360 = v4;
  v116 = [NSDictionary dictionaryWithObjects:&v360 forKeys:&v359 count:1];
  v374[6] = v116;
  v373[7] = @"AlteredHaveJobs";
  v357 = v2;
  v358 = @"DecideServerApplicableToJobs";
  v115 = [NSDictionary dictionaryWithObjects:&v358 forKeys:&v357 count:1];
  v374[7] = v115;
  v373[8] = @"AlteredNoJobs";
  v355 = v2;
  v356 = v4;
  v114 = [NSDictionary dictionaryWithObjects:&v356 forKeys:&v355 count:1];
  v374[8] = v114;
  v373[9] = @"ApplicableServersUp";
  v353[0] = v3;
  v353[1] = v2;
  v354[0] = @"ConnectedActiveJob";
  v354[1] = @"OrderAttemptTakeOSXactFirstJobActive";
  v113 = [NSDictionary dictionaryWithObjects:v354 forKeys:v353 count:2];
  v374[9] = v113;
  v373[10] = @"ApplicableServersDown";
  v351[0] = v3;
  v351[1] = v2;
  v352[0] = @"DisconnectedActiveJob";
  v352[1] = @"OrderAttemptTakeOSXactFirstJobActive";
  v112 = [NSDictionary dictionaryWithObjects:v352 forKeys:v351 count:2];
  v374[10] = v112;
  v111 = [NSDictionary dictionaryWithObjects:v374 forKeys:v373 count:11];
  v424[3] = v111;
  v423[4] = @"DisconnectedActiveJob";
  v349[0] = @"AlteredTriggeredMarkers";
  v347 = v2;
  v348 = @"AlteredJobsDecideStillActiveJob";
  v110 = [NSDictionary dictionaryWithObjects:&v348 forKeys:&v347 count:1];
  v350[0] = v110;
  v349[1] = @"JobFinishedForMarker";
  v345 = v2;
  v346 = @"JobFinishedDecideStillActiveJob";
  v109 = [NSDictionary dictionaryWithObjects:&v346 forKeys:&v345 count:1];
  v350[1] = v109;
  v349[2] = @"NetworkPathToServerUp";
  v343 = v2;
  v344 = @"TrackServerUpDecideInUseActiveJob";
  v108 = [NSDictionary dictionaryWithObjects:&v344 forKeys:&v343 count:1];
  v350[2] = v108;
  v349[3] = @"NetworkPathToServerDown";
  v341 = v2;
  v342 = @"TrackServerDown";
  v107 = [NSDictionary dictionaryWithObjects:&v342 forKeys:&v341 count:1];
  v350[3] = v107;
  v349[4] = @"TimeoutRetryWait";
  v339 = v2;
  v340 = @"FiredRetryWaitIgnored";
  v106 = [NSDictionary dictionaryWithObjects:&v340 forKeys:&v339 count:1];
  v350[4] = v106;
  v349[5] = @"TimeoutBackoffRetry";
  v337 = v2;
  v338 = @"FiredBackoffIgnored";
  v105 = [NSDictionary dictionaryWithObjects:&v338 forKeys:&v337 count:1];
  v350[5] = v105;
  v349[6] = @"AttemptAbandoned";
  v335[0] = v3;
  v335[1] = v2;
  v336[0] = @"BackoffWait";
  v336[1] = @"StartBackoffAndRetryWaitTimersClearOSXact";
  v104 = [NSDictionary dictionaryWithObjects:v336 forKeys:v335 count:2];
  v350[6] = v104;
  v349[7] = @"AlteredStillActiveJob";
  v333 = v2;
  v334 = v4;
  v103 = [NSDictionary dictionaryWithObjects:&v334 forKeys:&v333 count:1];
  v350[7] = v103;
  v349[8] = @"AlteredActiveGoneConnected";
  v331[0] = v3;
  v331[1] = v2;
  v332[0] = @"ConnectedActiveJob";
  v332[1] = @"NextScheduledJobNowActive";
  v102 = [NSDictionary dictionaryWithObjects:v332 forKeys:v331 count:2];
  v350[8] = v102;
  v349[9] = @"AlteredActiveGoneDisconnected";
  v329 = v2;
  v330 = @"NextScheduledJobNowActive";
  v101 = [NSDictionary dictionaryWithObjects:&v330 forKeys:&v329 count:1];
  v350[9] = v101;
  v349[10] = @"AlteredAttemptDoneNoJobs";
  v327[0] = v3;
  v327[1] = v2;
  v328[0] = @"Idle";
  v328[1] = @"ClearOSTransaction";
  v100 = [NSDictionary dictionaryWithObjects:v328 forKeys:v327 count:2];
  v350[10] = v100;
  v349[11] = @"AlteredAttemptDoneBackoff";
  v325[0] = v3;
  v325[1] = v2;
  v326[0] = @"BackoffWait";
  v326[1] = @"StartBackoffAndRetryWaitTimersClearOSXact";
  v99 = [NSDictionary dictionaryWithObjects:v326 forKeys:v325 count:2];
  v350[11] = v99;
  v349[12] = @"JobFinishedNextConnected";
  v323[0] = v3;
  v323[1] = v2;
  v324[0] = @"ConnectedActiveJob";
  v324[1] = @"NextScheduledJobNowActive";
  v98 = [NSDictionary dictionaryWithObjects:v324 forKeys:v323 count:2];
  v350[12] = v98;
  v349[13] = @"JobFinishedNextDisconnected";
  v321 = v2;
  v322 = @"NextScheduledJobNowActive";
  v97 = [NSDictionary dictionaryWithObjects:&v322 forKeys:&v321 count:1];
  v350[13] = v97;
  v349[14] = @"JobFinishedAttemptDoneNoJobs";
  v319[0] = v3;
  v319[1] = v2;
  v320[0] = @"Idle";
  v320[1] = @"ClearOSTransaction";
  v96 = [NSDictionary dictionaryWithObjects:v320 forKeys:v319 count:2];
  v350[14] = v96;
  v349[15] = @"JobFinishedAttemptDoneBackoff";
  v317[0] = v3;
  v317[1] = v2;
  v318[0] = @"BackoffWait";
  v318[1] = @"StartBackoffAndRetryWaitTimersClearOSXact";
  v95 = [NSDictionary dictionaryWithObjects:v318 forKeys:v317 count:2];
  v350[15] = v95;
  v349[16] = @"InUseServerUp";
  v315 = v3;
  v316 = @"ConnectedActiveJob";
  v94 = [NSDictionary dictionaryWithObjects:&v316 forKeys:&v315 count:1];
  v350[16] = v94;
  v349[17] = @"InUseServerDown";
  v313 = v2;
  v314 = v4;
  v93 = [NSDictionary dictionaryWithObjects:&v314 forKeys:&v313 count:1];
  v350[17] = v93;
  v92 = [NSDictionary dictionaryWithObjects:v350 forKeys:v349 count:18];
  v424[4] = v92;
  v423[5] = @"ConnectedActiveJob";
  v311[0] = @"AlteredTriggeredMarkers";
  v309 = v2;
  v310 = @"AlteredJobsDecideStillActiveJob";
  v91 = [NSDictionary dictionaryWithObjects:&v310 forKeys:&v309 count:1];
  v312[0] = v91;
  v311[1] = @"JobFinishedForMarker";
  v307 = v2;
  v308 = @"JobFinishedDecideStillActiveJob";
  v90 = [NSDictionary dictionaryWithObjects:&v308 forKeys:&v307 count:1];
  v312[1] = v90;
  v311[2] = @"NetworkPathToServerUp";
  v305 = v2;
  v306 = @"TrackServerUp";
  v89 = [NSDictionary dictionaryWithObjects:&v306 forKeys:&v305 count:1];
  v312[2] = v89;
  v311[3] = @"NetworkPathToServerDown";
  v303 = v2;
  v304 = @"TrackServerDownDecideInUseActiveJob";
  v88 = [NSDictionary dictionaryWithObjects:&v304 forKeys:&v303 count:1];
  v312[3] = v88;
  v311[4] = @"TimeoutRetryWait";
  v301 = v2;
  v302 = @"FiredRetryWaitIgnored";
  v87 = [NSDictionary dictionaryWithObjects:&v302 forKeys:&v301 count:1];
  v312[4] = v87;
  v311[5] = @"TimeoutBackoffRetry";
  v299 = v2;
  v300 = @"FiredBackoffIgnored";
  v86 = [NSDictionary dictionaryWithObjects:&v300 forKeys:&v299 count:1];
  v312[5] = v86;
  v311[6] = @"AttemptAbandoned";
  v297[0] = v3;
  v297[1] = v2;
  v298[0] = @"BackoffWait";
  v298[1] = @"StartBackoffAndRetryWaitTimersClearOSXact";
  v85 = [NSDictionary dictionaryWithObjects:v298 forKeys:v297 count:2];
  v312[6] = v85;
  v311[7] = @"AlteredStillActiveJob";
  v295 = v2;
  v296 = v4;
  v84 = [NSDictionary dictionaryWithObjects:&v296 forKeys:&v295 count:1];
  v312[7] = v84;
  v311[8] = @"AlteredActiveGoneConnected";
  v293 = v2;
  v294 = @"NextScheduledJobNowActive";
  v83 = [NSDictionary dictionaryWithObjects:&v294 forKeys:&v293 count:1];
  v312[8] = v83;
  v311[9] = @"AlteredActiveGoneDisconnected";
  v291[0] = v3;
  v291[1] = v2;
  v292[0] = @"DisconnectedActiveJob";
  v292[1] = @"NextScheduledJobNowActive";
  v82 = [NSDictionary dictionaryWithObjects:v292 forKeys:v291 count:2];
  v312[9] = v82;
  v311[10] = @"AlteredAttemptDoneNoJobs";
  v289[0] = v3;
  v289[1] = v2;
  v290[0] = @"Idle";
  v290[1] = @"ClearOSTransaction";
  v81 = [NSDictionary dictionaryWithObjects:v290 forKeys:v289 count:2];
  v312[10] = v81;
  v311[11] = @"AlteredAttemptDoneBackoff";
  v287[0] = v3;
  v287[1] = v2;
  v288[0] = @"BackoffWait";
  v288[1] = @"StartBackoffAndRetryWaitTimersClearOSXact";
  v80 = [NSDictionary dictionaryWithObjects:v288 forKeys:v287 count:2];
  v312[11] = v80;
  v311[12] = @"JobFinishedNextConnected";
  v285 = v2;
  v286 = @"NextScheduledJobNowActive";
  v79 = [NSDictionary dictionaryWithObjects:&v286 forKeys:&v285 count:1];
  v312[12] = v79;
  v311[13] = @"JobFinishedNextDisconnected";
  v283[0] = v3;
  v283[1] = v2;
  v284[0] = @"DisconnectedActiveJob";
  v284[1] = @"NextScheduledJobNowActive";
  v78 = [NSDictionary dictionaryWithObjects:v284 forKeys:v283 count:2];
  v312[13] = v78;
  v311[14] = @"JobFinishedAttemptDoneNoJobs";
  v281[0] = v3;
  v281[1] = v2;
  v282[0] = @"Idle";
  v282[1] = @"ClearOSTransaction";
  v77 = [NSDictionary dictionaryWithObjects:v282 forKeys:v281 count:2];
  v312[14] = v77;
  v311[15] = @"JobFinishedAttemptDoneBackoff";
  v279[0] = v3;
  v279[1] = v2;
  v280[0] = @"BackoffWait";
  v280[1] = @"StartBackoffAndRetryWaitTimersClearOSXact";
  v76 = [NSDictionary dictionaryWithObjects:v280 forKeys:v279 count:2];
  v312[15] = v76;
  v311[16] = @"InUseServerUp";
  v277 = v2;
  v278 = v4;
  v75 = [NSDictionary dictionaryWithObjects:&v278 forKeys:&v277 count:1];
  v312[16] = v75;
  v311[17] = @"InUseServerDown";
  v275 = v3;
  v276 = @"DisconnectedActiveJob";
  v74 = [NSDictionary dictionaryWithObjects:&v276 forKeys:&v275 count:1];
  v312[17] = v74;
  v73 = [NSDictionary dictionaryWithObjects:v312 forKeys:v311 count:18];
  v424[5] = v73;
  v423[6] = @"BackoffWait";
  v273[0] = @"AlteredTriggeredMarkers";
  v271 = v2;
  v272 = @"AlteredJobsDecidePreemptBackoff";
  v72 = [NSDictionary dictionaryWithObjects:&v272 forKeys:&v271 count:1];
  v274[0] = v72;
  v273[1] = @"JobFinishedForMarker";
  v269 = v2;
  v270 = @"JobFinishedDecideHaveJobs";
  v71 = [NSDictionary dictionaryWithObjects:&v270 forKeys:&v269 count:1];
  v274[1] = v71;
  v273[2] = @"NetworkPathToServerUp";
  v267 = v2;
  v268 = @"TrackServerUpDecideApplicableToJobs";
  v70 = [NSDictionary dictionaryWithObjects:&v268 forKeys:&v267 count:1];
  v274[2] = v70;
  v273[3] = @"NetworkPathToServerDown";
  v265 = v2;
  v266 = @"TrackServerDown";
  v69 = [NSDictionary dictionaryWithObjects:&v266 forKeys:&v265 count:1];
  v274[3] = v69;
  v273[4] = @"TimeoutRetryWait";
  v263[0] = v3;
  v263[1] = v2;
  v264[0] = @"Backoff";
  v264[1] = @"FiredRetryWait";
  v68 = [NSDictionary dictionaryWithObjects:v264 forKeys:v263 count:2];
  v274[4] = v68;
  v273[5] = @"TimeoutBackoffRetry";
  v261 = v2;
  v262 = @"FiredBackoffDecideServerApplicableToJobs";
  v67 = [NSDictionary dictionaryWithObjects:&v262 forKeys:&v261 count:1];
  v274[5] = v67;
  v273[6] = @"AttemptAbandoned";
  v259 = v2;
  v260 = v4;
  v66 = [NSDictionary dictionaryWithObjects:&v260 forKeys:&v259 count:1];
  v274[6] = v66;
  v273[7] = @"AlteredPreemptConnected";
  v257[0] = v3;
  v257[1] = v2;
  v258[0] = @"RetryConnectedWait";
  v258[1] = @"StopBackoffTimerTakeOSTransaction";
  v65 = [NSDictionary dictionaryWithObjects:v258 forKeys:v257 count:2];
  v274[7] = v65;
  v273[8] = @"AlteredPreemptDisconnected";
  v255 = v2;
  v256 = v4;
  v64 = [NSDictionary dictionaryWithObjects:&v256 forKeys:&v255 count:1];
  v274[8] = v64;
  v273[9] = @"AlteredHaveJobs";
  v253 = v2;
  v254 = v4;
  v63 = [NSDictionary dictionaryWithObjects:&v254 forKeys:&v253 count:1];
  v274[9] = v63;
  v273[10] = @"AlteredNoJobs";
  v251[0] = v3;
  v251[1] = v2;
  v252[0] = @"IdleWait";
  v252[1] = @"StopBackoffTimer";
  v62 = [NSDictionary dictionaryWithObjects:v252 forKeys:v251 count:2];
  v274[10] = v62;
  v273[11] = @"ApplicableServersUp";
  v249[0] = v3;
  v249[1] = v2;
  v250[0] = @"RetryConnectedWait";
  v250[1] = @"StopBackoffTimerTakeOSTransaction";
  v61 = [NSDictionary dictionaryWithObjects:v250 forKeys:v249 count:2];
  v274[11] = v61;
  v273[12] = @"ApplicableServersDown";
  v247 = v2;
  v248 = v4;
  v60 = [NSDictionary dictionaryWithObjects:&v248 forKeys:&v247 count:1];
  v274[12] = v60;
  v59 = [NSDictionary dictionaryWithObjects:v274 forKeys:v273 count:13];
  v424[6] = v59;
  v423[7] = @"IdleWait";
  v245[0] = @"AlteredTriggeredMarkers";
  v243 = v2;
  v244 = @"AlteredJobsReplaceDecideHaveJobs";
  v58 = [NSDictionary dictionaryWithObjects:&v244 forKeys:&v243 count:1];
  v246[0] = v58;
  v245[1] = @"JobFinishedForMarker";
  v241 = v2;
  v242 = @"JobFinishedDecideHaveJobs";
  v57 = [NSDictionary dictionaryWithObjects:&v242 forKeys:&v241 count:1];
  v246[1] = v57;
  v245[2] = @"NetworkPathToServerUp";
  v239 = v2;
  v240 = @"TrackServerUp";
  v56 = [NSDictionary dictionaryWithObjects:&v240 forKeys:&v239 count:1];
  v246[2] = v56;
  v245[3] = @"NetworkPathToServerDown";
  v237 = v2;
  v238 = @"TrackServerDown";
  v55 = [NSDictionary dictionaryWithObjects:&v238 forKeys:&v237 count:1];
  v246[3] = v55;
  v245[4] = @"TimeoutRetryWait";
  v235[0] = v3;
  v235[1] = v2;
  v236[0] = @"Idle";
  v236[1] = @"FiredRetryWait";
  v54 = [NSDictionary dictionaryWithObjects:v236 forKeys:v235 count:2];
  v246[4] = v54;
  v245[5] = @"TimeoutBackoffRetry";
  v233 = v2;
  v234 = @"FiredBackoffIgnored";
  v53 = [NSDictionary dictionaryWithObjects:&v234 forKeys:&v233 count:1];
  v246[5] = v53;
  v245[6] = @"AttemptAbandoned";
  v231 = v2;
  v232 = v4;
  v52 = [NSDictionary dictionaryWithObjects:&v232 forKeys:&v231 count:1];
  v246[6] = v52;
  v245[7] = @"AlteredHaveJobs";
  v229 = v2;
  v230 = @"DecideServerApplicableToJobs";
  v51 = [NSDictionary dictionaryWithObjects:&v230 forKeys:&v229 count:1];
  v246[7] = v51;
  v245[8] = @"AlteredNoJobs";
  v227 = v2;
  v228 = v4;
  v50 = [NSDictionary dictionaryWithObjects:&v228 forKeys:&v227 count:1];
  v246[8] = v50;
  v245[9] = @"ApplicableServersUp";
  v225[0] = v3;
  v225[1] = v2;
  v226[0] = @"RetryConnectedWait";
  v226[1] = @"TakeOSTransaction";
  v49 = [NSDictionary dictionaryWithObjects:v226 forKeys:v225 count:2];
  v246[9] = v49;
  v245[10] = @"ApplicableServersDown";
  v223 = v3;
  v224 = @"RetryDisconnectedWait";
  v48 = [NSDictionary dictionaryWithObjects:&v224 forKeys:&v223 count:1];
  v246[10] = v48;
  v47 = [NSDictionary dictionaryWithObjects:v246 forKeys:v245 count:11];
  v424[7] = v47;
  v423[8] = @"RetryDisconnectedWait";
  v221[0] = @"AlteredTriggeredMarkers";
  v219 = v2;
  v220 = @"AlteredJobsReplaceDecideHaveJobs";
  v46 = [NSDictionary dictionaryWithObjects:&v220 forKeys:&v219 count:1];
  v222[0] = v46;
  v221[1] = @"JobFinishedForMarker";
  v217 = v2;
  v218 = @"JobFinishedDecideHaveJobs";
  v45 = [NSDictionary dictionaryWithObjects:&v218 forKeys:&v217 count:1];
  v222[1] = v45;
  v221[2] = @"NetworkPathToServerUp";
  v215 = v2;
  v216 = @"TrackServerUpDecideApplicableToJobs";
  v44 = [NSDictionary dictionaryWithObjects:&v216 forKeys:&v215 count:1];
  v222[2] = v44;
  v221[3] = @"NetworkPathToServerDown";
  v213 = v2;
  v214 = @"TrackServerDown";
  v43 = [NSDictionary dictionaryWithObjects:&v214 forKeys:&v213 count:1];
  v222[3] = v43;
  v221[4] = @"TimeoutRetryWait";
  v211[0] = v3;
  v211[1] = v2;
  v212[0] = @"DisconnectedActiveJob";
  v212[1] = @"FiredRetryDiscTakeOSXactOrderAttempt1st";
  v42 = [NSDictionary dictionaryWithObjects:v212 forKeys:v211 count:2];
  v222[4] = v42;
  v221[5] = @"TimeoutBackoffRetry";
  v209 = v2;
  v210 = @"FiredBackoffIgnored";
  v41 = [NSDictionary dictionaryWithObjects:&v210 forKeys:&v209 count:1];
  v222[5] = v41;
  v221[6] = @"AttemptAbandoned";
  v207 = v2;
  v208 = v4;
  v40 = [NSDictionary dictionaryWithObjects:&v208 forKeys:&v207 count:1];
  v222[6] = v40;
  v221[7] = @"AlteredHaveJobs";
  v205 = v2;
  v206 = @"DecideServerApplicableToJobs";
  v39 = [NSDictionary dictionaryWithObjects:&v206 forKeys:&v205 count:1];
  v222[7] = v39;
  v221[8] = @"AlteredNoJobs";
  v203 = v3;
  v204 = @"IdleWait";
  v38 = [NSDictionary dictionaryWithObjects:&v204 forKeys:&v203 count:1];
  v222[8] = v38;
  v221[9] = @"ApplicableServersUp";
  v201[0] = v3;
  v201[1] = v2;
  v202[0] = @"RetryConnectedWait";
  v202[1] = @"TakeOSTransaction";
  v37 = [NSDictionary dictionaryWithObjects:v202 forKeys:v201 count:2];
  v222[9] = v37;
  v221[10] = @"ApplicableServersDown";
  v199 = v2;
  v200 = v4;
  v36 = [NSDictionary dictionaryWithObjects:&v200 forKeys:&v199 count:1];
  v222[10] = v36;
  v35 = [NSDictionary dictionaryWithObjects:v222 forKeys:v221 count:11];
  v424[8] = v35;
  v423[9] = @"RetryConnectedWait";
  v197[0] = @"AlteredTriggeredMarkers";
  v195 = v2;
  v196 = @"AlteredJobsReplaceDecideHaveJobs";
  v34 = [NSDictionary dictionaryWithObjects:&v196 forKeys:&v195 count:1];
  v198[0] = v34;
  v197[1] = @"JobFinishedForMarker";
  v193 = v2;
  v194 = @"JobFinishedDecideHaveJobs";
  v33 = [NSDictionary dictionaryWithObjects:&v194 forKeys:&v193 count:1];
  v198[1] = v33;
  v197[2] = @"NetworkPathToServerUp";
  v191 = v2;
  v192 = @"TrackServerUp";
  v32 = [NSDictionary dictionaryWithObjects:&v192 forKeys:&v191 count:1];
  v198[2] = v32;
  v197[3] = @"NetworkPathToServerDown";
  v189 = v2;
  v190 = @"TrackServerDownDecideApplicableToJobs";
  v31 = [NSDictionary dictionaryWithObjects:&v190 forKeys:&v189 count:1];
  v198[3] = v31;
  v197[4] = @"TimeoutRetryWait";
  v187[0] = v3;
  v187[1] = v2;
  v188[0] = @"ConnectedActiveJob";
  v188[1] = @"FiredRetryConnOrderAttemptFirstJobActive";
  v30 = [NSDictionary dictionaryWithObjects:v188 forKeys:v187 count:2];
  v198[4] = v30;
  v197[5] = @"TimeoutBackoffRetry";
  v185 = v2;
  v186 = @"FiredBackoffIgnored";
  v29 = [NSDictionary dictionaryWithObjects:&v186 forKeys:&v185 count:1];
  v198[5] = v29;
  v197[6] = @"AttemptAbandoned";
  v183 = v2;
  v184 = v4;
  v28 = [NSDictionary dictionaryWithObjects:&v184 forKeys:&v183 count:1];
  v198[6] = v28;
  v197[7] = @"AlteredHaveJobs";
  v181 = v2;
  v182 = @"DecideServerApplicableToJobs";
  v27 = [NSDictionary dictionaryWithObjects:&v182 forKeys:&v181 count:1];
  v198[7] = v27;
  v197[8] = @"AlteredNoJobs";
  v179[0] = v3;
  v179[1] = v2;
  v180[0] = @"IdleWait";
  v180[1] = @"ClearOSTransaction";
  v26 = [NSDictionary dictionaryWithObjects:v180 forKeys:v179 count:2];
  v198[8] = v26;
  v197[9] = @"ApplicableServersUp";
  v177 = v2;
  v178 = v4;
  v25 = [NSDictionary dictionaryWithObjects:&v178 forKeys:&v177 count:1];
  v198[9] = v25;
  v197[10] = @"ApplicableServersDown";
  v175[0] = v3;
  v175[1] = v2;
  v176[0] = @"RetryDisconnectedWait";
  v176[1] = @"ClearOSTransaction";
  v24 = [NSDictionary dictionaryWithObjects:v176 forKeys:v175 count:2];
  v198[10] = v24;
  v23 = [NSDictionary dictionaryWithObjects:v198 forKeys:v197 count:11];
  v424[9] = v23;
  v423[10] = @"Backoff";
  v173[0] = @"AlteredTriggeredMarkers";
  v171 = v2;
  v172 = @"AlteredJobsDecidePreemptBackoff";
  v22 = [NSDictionary dictionaryWithObjects:&v172 forKeys:&v171 count:1];
  v174[0] = v22;
  v173[1] = @"JobFinishedForMarker";
  v169 = v2;
  v170 = @"JobFinishedDecideHaveJobs";
  v21 = [NSDictionary dictionaryWithObjects:&v170 forKeys:&v169 count:1];
  v174[1] = v21;
  v173[2] = @"NetworkPathToServerUp";
  v167 = v2;
  v168 = @"TrackServerUpDecideApplicableToJobs";
  v20 = [NSDictionary dictionaryWithObjects:&v168 forKeys:&v167 count:1];
  v174[2] = v20;
  v173[3] = @"NetworkPathToServerDown";
  v165 = v2;
  v166 = @"TrackServerDown";
  v19 = [NSDictionary dictionaryWithObjects:&v166 forKeys:&v165 count:1];
  v174[3] = v19;
  v173[4] = @"TimeoutRetryWait";
  v163 = v2;
  v164 = @"FiredRetryWaitIgnored";
  v18 = [NSDictionary dictionaryWithObjects:&v164 forKeys:&v163 count:1];
  v174[4] = v18;
  v173[5] = @"TimeoutBackoffRetry";
  v161 = v2;
  v162 = @"FiredBackoffDecideServerApplicableToJobs";
  v17 = [NSDictionary dictionaryWithObjects:&v162 forKeys:&v161 count:1];
  v174[5] = v17;
  v173[6] = @"AttemptAbandoned";
  v159 = v2;
  v160 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
  v174[6] = v5;
  v173[7] = @"AlteredPreemptConnected";
  v157[0] = v3;
  v157[1] = v2;
  v158[0] = @"ConnectedActiveJob";
  v158[1] = @"StopBackoffTakeOSXactOrderAttempt1st";
  v6 = [NSDictionary dictionaryWithObjects:v158 forKeys:v157 count:2];
  v174[7] = v6;
  v173[8] = @"AlteredPreemptDisconnected";
  v155[0] = v3;
  v155[1] = v2;
  v156[0] = @"DisconnectedActiveJob";
  v156[1] = @"StopBackoffTakeOSXactOrderAttempt1st";
  v7 = [NSDictionary dictionaryWithObjects:v156 forKeys:v155 count:2];
  v174[8] = v7;
  v173[9] = @"AlteredHaveJobs";
  v153 = v2;
  v154 = v4;
  v8 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v153 count:1];
  v174[9] = v8;
  v173[10] = @"AlteredNoJobs";
  v151[0] = v3;
  v151[1] = v2;
  v152[0] = @"Idle";
  v152[1] = @"StopBackoffTimer";
  v9 = [NSDictionary dictionaryWithObjects:v152 forKeys:v151 count:2];
  v174[10] = v9;
  v173[11] = @"ApplicableServersUp";
  v149[0] = v3;
  v149[1] = v2;
  v150[0] = @"ConnectedActiveJob";
  v150[1] = @"OrderAttemptTakeOSXactFirstJobActive";
  v10 = [NSDictionary dictionaryWithObjects:v150 forKeys:v149 count:2];
  v174[11] = v10;
  v173[12] = @"ApplicableServersDown";
  v147[0] = v3;
  v147[1] = v2;
  v148[0] = @"DisconnectedActiveJob";
  v148[1] = @"OrderAttemptTakeOSXactFirstJobActive";
  v11 = [NSDictionary dictionaryWithObjects:v148 forKeys:v147 count:2];
  v174[12] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v174 forKeys:v173 count:13];
  v424[10] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v424 forKeys:v423 count:11];

  v14 = v13;
  v15 = [[NSDictionary alloc] initWithDictionary:v13 copyItems:1];

  return v15;
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v11 = a3;
  v12 = a6;
  if ([v11 isEqualToString:kSUCoreFSMActionNoOp])
  {
    v13 = 0;
  }

  else
  {
    if ([v11 isEqualToString:@"ResumeDecideRequiringRetry"])
    {
      v14 = [(MADAutoAssetConnector *)self action_ResumeDecideRequiringRetry:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"StartInitialWaitTimer"])
    {
      v14 = [(MADAutoAssetConnector *)self action_StartInitialWaitTimer:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"StartBackoffAndRetryWaitTimersClearOSXact"])
    {
      v14 = [(MADAutoAssetConnector *)self action_StartBackoffAndRetryWaitTimersClearOSXact:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"StopBackoffTimer"])
    {
      v14 = [(MADAutoAssetConnector *)self action_StopBackoffTimer:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"StopBackoffTimerTakeOSTransaction"])
    {
      v14 = [(MADAutoAssetConnector *)self action_StopBackoffTimerTakeOSTransaction:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"StopBackoffTakeOSXactOrderAttempt1st"])
    {
      v14 = [(MADAutoAssetConnector *)self action_StopBackoffTakeOSXactOrderAttempt1st:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"FiredInitial"])
    {
      v14 = [(MADAutoAssetConnector *)self action_FiredInitial:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"FiredInitialDecideServerApplicableToJobs"])
    {
      v14 = [(MADAutoAssetConnector *)self action_FiredInitialDecideServerApplicableToJobs:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"FiredRetryWaitIgnored"])
    {
      v14 = [(MADAutoAssetConnector *)self action_FiredRetryWaitIgnored:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"FiredBackoffIgnored"])
    {
      v14 = [(MADAutoAssetConnector *)self action_FiredBackoffIgnored:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"FiredRetryWait"])
    {
      v14 = [(MADAutoAssetConnector *)self action_FiredRetryWait:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"FiredBackoffDecideServerApplicableToJobs"])
    {
      v14 = [(MADAutoAssetConnector *)self action_FiredBackoffDecideServerApplicableToJobs:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"FiredRetryDiscTakeOSXactOrderAttempt1st"])
    {
      v14 = [(MADAutoAssetConnector *)self action_FiredRetryDiscTakeOSXactOrderAttempt1st:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"FiredRetryConnOrderAttemptFirstJobActive"])
    {
      v14 = [(MADAutoAssetConnector *)self action_FiredRetryConnOrderAttemptFirstJobActive:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"TrackServerUp"])
    {
      v14 = [(MADAutoAssetConnector *)self action_TrackServerUp:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"TrackServerDown"])
    {
      v14 = [(MADAutoAssetConnector *)self action_TrackServerDown:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"TrackServerUpDecideApplicableToJobs"])
    {
      v14 = [(MADAutoAssetConnector *)self action_TrackServerUpDecideApplicableToJobs:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"TrackServerDownDecideApplicableToJobs"])
    {
      v14 = [(MADAutoAssetConnector *)self action_TrackServerDownDecideApplicableToJobs:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"TrackServerUpDecideInUseActiveJob"])
    {
      v14 = [(MADAutoAssetConnector *)self action_TrackServerUpDecideInUseActiveJob:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"TrackServerDownDecideInUseActiveJob"])
    {
      v14 = [(MADAutoAssetConnector *)self action_TrackServerDownDecideInUseActiveJob:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"StartupAlteredJobsReplaceDecideHaveJobs"])
    {
      v14 = [(MADAutoAssetConnector *)self action_StartupAlteredJobsReplaceDecideHaveJobs:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AlteredJobsReplaceDecideHaveJobs"])
    {
      v14 = [(MADAutoAssetConnector *)self action_AlteredJobsReplaceDecideHaveJobs:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AlteredJobsDecideStillActiveJob"])
    {
      v14 = [(MADAutoAssetConnector *)self action_AlteredJobsDecideStillActiveJob:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AlteredJobsDecidePreemptBackoff"])
    {
      v14 = [(MADAutoAssetConnector *)self action_AlteredJobsDecidePreemptBackoff:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideServerApplicableToJobs"])
    {
      v14 = [(MADAutoAssetConnector *)self action_DecideServerApplicableToJobs:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"TakeOSTransaction"])
    {
      v14 = [(MADAutoAssetConnector *)self action_TakeOSTransaction:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ClearOSTransaction"])
    {
      v14 = [(MADAutoAssetConnector *)self action_ClearOSTransaction:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"OrderAttemptTakeOSXactFirstJobActive"])
    {
      v14 = [(MADAutoAssetConnector *)self action_OrderAttemptTakeOSXactFirstJobActive:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"NextScheduledJobNowActive"])
    {
      v14 = [(MADAutoAssetConnector *)self action_NextScheduledJobNowActive:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"JobFinishedDecideHaveJobs"])
    {
      v14 = [(MADAutoAssetConnector *)self action_JobFinishedDecideHaveJobs:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"JobFinishedDecideStillActiveJob"])
    {
      v14 = [(MADAutoAssetConnector *)self action_JobFinishedDecideStillActiveJob:v12 error:a8];
    }

    else
    {
      v14 = [(MADAutoAssetConnector *)self actionUnknownAction:v11 error:a8];
    }

    v13 = v14;
  }

  return v13;
}

- (MADAutoAssetConnector)init
{
  v31.receiver = self;
  v31.super_class = MADAutoAssetConnector;
  v2 = [(MADAutoAssetConnector *)&v31 init];
  if (v2)
  {
    v3 = [objc_opt_class() _getAutoAssetConnectorStateTable];
    stateTable = v2->_stateTable;
    v2->_stateTable = v3;

    latestSafeSummary = v2->_latestSafeSummary;
    v2->_latestSafeSummary = @"INIT";

    v6 = objc_alloc_init(NSMutableArray);
    monitorMarkers = v2->_monitorMarkers;
    v2->_monitorMarkers = v6;

    v8 = objc_alloc_init(NSMutableArray);
    markersRequiringRetry = v2->_markersRequiringRetry;
    v2->_markersRequiringRetry = v8;

    v10 = objc_alloc_init(NSMutableArray);
    triggeredMarkersNoRetry = v2->_triggeredMarkersNoRetry;
    v2->_triggeredMarkersNoRetry = v10;

    v12 = objc_alloc_init(NSMutableArray);
    triggeredMarkersRequiringRetry = v2->_triggeredMarkersRequiringRetry;
    v2->_triggeredMarkersRequiringRetry = v12;

    activeAttemptOSTransaction = v2->_activeAttemptOSTransaction;
    v2->_activeAttemptOSTransaction = 0;

    initialWaitTimer = v2->_initialWaitTimer;
    v2->_initialWaitTimer = 0;

    backoffRetryTimer = v2->_backoffRetryTimer;
    v2->_backoffRetryLevel = 0;
    v2->_backoffRetryTimer = 0;

    waitBeforeRetryTimer = v2->_waitBeforeRetryTimer;
    v2->_waitBeforeRetryTimer = 0;

    v18 = objc_alloc_init(NSMutableDictionary);
    catalogServerNetworkPathObservers = v2->_catalogServerNetworkPathObservers;
    v2->_catalogServerNetworkPathObservers = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    catalogServerNetworkPathStatus = v2->_catalogServerNetworkPathStatus;
    v2->_catalogServerNetworkPathStatus = v20;

    activeJobMarker = v2->_activeJobMarker;
    v2->_activeJobMarker = 0;

    currentAttemptBeginningMarkers = v2->_currentAttemptBeginningMarkers;
    v2->_currentAttemptBeginningMarkers = 0;

    v24 = objc_alloc_init(NSMutableArray);
    currentAttemptRemainingMarkers = v2->_currentAttemptRemainingMarkers;
    v2->_currentAttemptRemainingMarkers = v24;

    v26 = [[SUCoreFSM alloc] initMachine:@"AutoAssetConnector" withTable:v2->_stateTable startingIn:@"ReadyToResume" usingDelegate:v2 registeringAllInfoClass:objc_opt_class()];
    autoConnectorFSM = v2->_autoConnectorFSM;
    v2->_autoConnectorFSM = v26;

    if (!v2->_autoConnectorFSM)
    {
      v28 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "{init} failed to initialize AutoAssetConnector FSM", v30, 2u);
      }
    }
  }

  return v2;
}

+ (id)autoAssetConnector
{
  if (autoAssetConnector_dispatchOnceAutoAssetConnector != -1)
  {
    +[MADAutoAssetConnector autoAssetConnector];
  }

  v3 = autoAssetConnector___autoAssetConnector;

  return v3;
}

void __43__MADAutoAssetConnector_autoAssetConnector__block_invoke(id a1)
{
  autoAssetConnector___autoAssetConnector = objc_alloc_init(MADAutoAssetConnector);

  _objc_release_x1();
}

+ (void)resumeMonitoringMarkers:(id)a3 withMarkersRequiringRetry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MADAutoAssetConnector autoAssetConnector];
  if (v7)
  {
    [@"com.apple.MobileAsset.AutoAssetConnector.alteredMonitoringMarkers" UTF8String];
    v8 = os_transaction_create();
    v9 = [v7 autoConnectorFSM];
    v10 = [[MADAutoAssetConnectorParam alloc] initWithMonitorMarkers:v5 withMarkersNoRetry:0 withMarkersRequiringRetry:v6 withEventOSTransaction:v8];
    [v9 postEvent:@"ResumeMonitoringMarkers" withInfo:v10];
  }

  else
  {
    v8 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-CONNECTOR:resumeMonitoringMarkers} | no auto-asset-connector", v11, 2u);
    }
  }
}

+ (void)alteredMonitoringMarkers:(id)a3 withTriggeredNoRetry:(id)a4 withTriggeredRequiringRetry:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[MADAutoAssetConnector autoAssetConnector];
  if (v10)
  {
    [@"com.apple.MobileAsset.AutoAssetConnector.alteredMonitoringMarkers" UTF8String];
    v11 = os_transaction_create();
    v12 = [v10 autoConnectorFSM];
    v13 = [[MADAutoAssetConnectorParam alloc] initWithMonitorMarkers:v7 withMarkersNoRetry:v8 withMarkersRequiringRetry:v9 withEventOSTransaction:v11];
    [v12 postEvent:@"AlteredTriggeredMarkers" withInfo:v13];
  }

  else
  {
    v11 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "{AUTO-CONNECTOR:alteredMonitoringMarkers} | no auto-asset-connector", v14, 2u);
    }
  }
}

+ (void)scheduledMarkerFinished:(id)a3 withPotentialNetworkFailure:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[MADAutoAssetConnector autoAssetConnector];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 autoConnectorFSM];
    v9 = [[MADAutoAssetConnectorParam alloc] initWithScheduledMarkerFinished:v5 withPotentialNetworkFailure:v4];
    [v8 postEvent:@"JobFinishedForMarker" withInfo:v9];
  }

  else
  {
    v10 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-CONNECTOR:scheduledMarkerFinished} | no auto-asset-connector", v11, 2u);
    }
  }
}

+ (void)observedNetworkPathToServerUp:(id)a3
{
  v3 = a3;
  if (!+[MADAutoAssetControlManager preferenceAutoAssetObserverIgnoreNetworkStatus])
  {
    v4 = +[MADAutoAssetConnector autoAssetConnector];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 autoConnectorFSM];
      v7 = [[MADAutoAssetConnectorParam alloc] initWithObservedNetworkPath:v3];
      [v6 postEvent:@"NetworkPathToServerUp" withInfo:v7];
    }

    else
    {
      v6 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{AUTO-CONNECTOR:observedNetworkPathToServerUp} | no auto-asset-connector", v8, 2u);
      }
    }
  }
}

+ (void)observedNetworkPathToServerDown:(id)a3
{
  v3 = a3;
  if (!+[MADAutoAssetControlManager preferenceAutoAssetObserverIgnoreNetworkStatus])
  {
    v4 = +[MADAutoAssetConnector autoAssetConnector];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 autoConnectorFSM];
      v7 = [[MADAutoAssetConnectorParam alloc] initWithObservedNetworkPath:v3];
      [v6 postEvent:@"NetworkPathToServerDown" withInfo:v7];
    }

    else
    {
      v6 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{AUTO-CONNECTOR:observedNetworkPathToServerDown} | no auto-asset-connector", v8, 2u);
      }
    }
  }
}

+ (void)simulateNetworkPathUp:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetConnector autoAssetConnector];
  if (v4)
  {
    v5 = [v3 assetType];
    v6 = [DownloadManager pathToCatalogLookupServer:v5 usingDownloadOptions:0];

    v7 = [v4 autoConnectorFSM];
    v8 = [[MADAutoAssetConnectorParam alloc] initWithObservedNetworkPath:v6];
    [v7 postEvent:@"NetworkPathToServerUp" withInfo:v8];
  }

  else
  {
    v6 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{AUTO-CONNECTOR:observedNetworkPathToServerDown} | no auto-asset-connector", v9, 2u);
    }
  }
}

+ (void)simulateNetworkPathDown:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetConnector autoAssetConnector];
  if (v4)
  {
    v5 = [v3 assetType];
    v6 = [DownloadManager pathToCatalogLookupServer:v5 usingDownloadOptions:0];

    v7 = [v4 autoConnectorFSM];
    v8 = [[MADAutoAssetConnectorParam alloc] initWithObservedNetworkPath:v6];
    [v7 postEvent:@"NetworkPathToServerDown" withInfo:v8];
  }

  else
  {
    v6 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{AUTO-CONNECTOR:observedNetworkPathToServerDown} | no auto-asset-connector", v9, 2u);
    }
  }
}

- (int64_t)action_ResumeDecideRequiringRetry:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 monitorMarkers];
  if (v8)
  {
    v9 = v8;
    v10 = [v5 monitorMarkers];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [NSMutableArray alloc];
      v13 = [v5 monitorMarkers];
      v14 = [v12 initWithArray:v13];
      [(MADAutoAssetConnector *)self setMonitorMarkers:v14];

      [(MADAutoAssetConnector *)self _logMarkersBeingMonitored:@"ResumeDecideRequiringRetry"];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = [v5 monitorMarkers];
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          v19 = 0;
          do
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [(MADAutoAssetConnector *)self _addObserverForMarker:*(*(&v30 + 1) + 8 * v19)];
            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v17);
      }
    }
  }

  v20 = [v5 markersRequiringRetry];
  if (v20 && (v21 = v20, [v5 markersRequiringRetry], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v21, v23))
  {
    v24 = [NSMutableArray alloc];
    v25 = [v5 markersRequiringRetry];
    v26 = [v24 initWithArray:v25];
    [(MADAutoAssetConnector *)self setMarkersRequiringRetry:v26];

    [(MADAutoAssetConnector *)self _logMarkersRequiringRetry:@"ResumeDecideRequiringRetry"];
    v27 = @"ResumeHaveJobsRequiringRetry";
  }

  else
  {
    v27 = @"ResumeNothingRequiringRetry";
  }

  v28 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  [v28 followupEvent:v27 withInfo:v5];

  return 0;
}

- (int64_t)action_StartInitialWaitTimer:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = +[MADAutoAssetControlManager preferenceConnectorInitialWaitSecs];
  if (v7 == -1)
  {
    v8 = 600;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(MADAutoAssetConnector *)self _startTimer:@"StartInitialWaitTimer" ofTimerCategory:@"INITIAL_WAIT_TIMER" forOneShotSecs:v8 withFiredMessage:@"INITIAL_WAIT_TIMER" postingEvent:@"TimeoutInitialStartup"];
  [(MADAutoAssetConnector *)self setInitialWaitTimer:v9];

  return 0;
}

- (int64_t)action_StartBackoffAndRetryWaitTimersClearOSXact:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(MADAutoAssetConnector *)self osTransactionEnd:@"StartBackoffAndRetryWaitTimersClearOSXact"];
  v7 = +[MADAutoAssetControlManager preferenceConnectorBackoffRetryTimes];
  v8 = +[MADAutoAssetControlManager preferenceConnectorWaitBeforeRetrySecs];
  if (!v7)
  {
    v7 = +[MADAutoAssetConnector backoffRetryLevelDefaultTimes];
  }

  if ([(MADAutoAssetConnector *)self backoffRetryLevel]<= 6)
  {
    [(MADAutoAssetConnector *)self _setBackoffRetryLevel:[(MADAutoAssetConnector *)self backoffRetryLevel]+ 1 forReason:@"starting backoff-retry delay period"];
  }

  v9 = [v7 count];
  if (v9 <= [(MADAutoAssetConnector *)self backoffRetryLevel])
  {
    v11 = &loc_93A80;
  }

  else
  {
    v10 = [v7 objectAtIndex:{-[MADAutoAssetConnector backoffRetryLevel](self, "backoffRetryLevel")}];
    v11 = [v10 integerValue];
  }

  if (v8 == -1)
  {
    v8 = 30;
  }

  v12 = [(MADAutoAssetConnector *)self _startTimer:@"StartBackoffAndRetryWaitTimersClearOSXact" ofTimerCategory:@"BACKOFF_RETRY_TIMER" forOneShotSecs:v11 withFiredMessage:@"BACKOFF_RETRY_TIMER" postingEvent:@"TimeoutBackoffRetry"];
  [(MADAutoAssetConnector *)self setBackoffRetryTimer:v12];

  v13 = [(MADAutoAssetConnector *)self _startTimer:@"StartBackoffAndRetryWaitTimersClearOSXact" ofTimerCategory:@"WAIT_BEFORE_RETRY_TIMER" forOneShotSecs:v8 withFiredMessage:@"WAIT_BEFORE_RETRY_TIMER" postingEvent:@"TimeoutRetryWait"];
  [(MADAutoAssetConnector *)self setWaitBeforeRetryTimer:v13];

  return 0;
}

- (int64_t)action_StopBackoffTimer:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self backoffRetryTimer];

  if (v7)
  {
    v8 = [(MADAutoAssetConnector *)self backoffRetryTimer];
    [v8 invalidate];

    [(MADAutoAssetConnector *)self setBackoffRetryTimer:0];
    [(MADAutoAssetConnector *)self _stoppedTimer:@"StopBackoffTimer" ofTimerCategory:@"BACKOFF_RETRY_TIMER"];
  }

  return 0;
}

- (int64_t)action_StopBackoffTimerTakeOSTransaction:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self backoffRetryTimer];

  if (v7)
  {
    v8 = [(MADAutoAssetConnector *)self backoffRetryTimer];
    [v8 invalidate];

    [(MADAutoAssetConnector *)self setBackoffRetryTimer:0];
    [(MADAutoAssetConnector *)self _stoppedTimer:@"StopBackoffTimerTakeOSTransaction" ofTimerCategory:@"BACKOFF_RETRY_TIMER"];
  }

  [(MADAutoAssetConnector *)self osTransactionBegin:@"StopBackoffTimerTakeOSTransaction"];
  return 0;
}

- (int64_t)action_StopBackoffTakeOSXactOrderAttempt1st:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self backoffRetryTimer];

  if (v7)
  {
    v8 = [(MADAutoAssetConnector *)self backoffRetryTimer];
    [v8 invalidate];

    [(MADAutoAssetConnector *)self setBackoffRetryTimer:0];
    [(MADAutoAssetConnector *)self _stoppedTimer:@"StopBackoffTakeOSXactOrderAttempt1st" ofTimerCategory:@"WAIT_BEFORE_RETRY_TIMER"];
  }

  [(MADAutoAssetConnector *)self _chooseOrderForNextAttemptAndStartFirstJob:@"StopBackoffTakeOSXactOrderAttempt1st" beginningOSTransaction:1];
  return 0;
}

- (int64_t)action_FiredInitial:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self initialWaitTimer];

  if (v7)
  {
    [(MADAutoAssetConnector *)self setInitialWaitTimer:0];
    [(MADAutoAssetConnector *)self _firedTimer:@"FiredInitial" ofTimerCategory:@"INITIAL_WAIT_TIMER"];
  }

  return 0;
}

- (int64_t)action_FiredInitialDecideServerApplicableToJobs:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self initialWaitTimer];

  if (v7)
  {
    [(MADAutoAssetConnector *)self setInitialWaitTimer:0];
    [(MADAutoAssetConnector *)self _firedTimer:@"FiredInitialDecideServerApplicableToJobs" ofTimerCategory:@"INITIAL_WAIT_TIMER"];
  }

  [(MADAutoAssetConnector *)self _issueFollowupApplicableServersUpDown:@"FiredInitialDecideServerApplicableToJobs"];
  return 0;
}

- (int64_t)action_FiredRetryWaitIgnored:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self initialWaitTimer];

  if (v7)
  {
    [(MADAutoAssetConnector *)self setInitialWaitTimer:0];
    [(MADAutoAssetConnector *)self _firedTimer:@"FiredRetryWaitIgnored" ofTimerCategory:@"WAIT_BEFORE_RETRY_TIMER"];
  }

  return 0;
}

- (int64_t)action_FiredBackoffIgnored:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self initialWaitTimer];

  if (v7)
  {
    [(MADAutoAssetConnector *)self setInitialWaitTimer:0];
    [(MADAutoAssetConnector *)self _firedTimer:@"FiredBackoffIgnored" ofTimerCategory:@"BACKOFF_RETRY_TIMER"];
  }

  return 0;
}

- (int64_t)action_FiredRetryWait:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self initialWaitTimer];

  if (v7)
  {
    [(MADAutoAssetConnector *)self setInitialWaitTimer:0];
    [(MADAutoAssetConnector *)self _firedTimer:@"FiredRetryWait" ofTimerCategory:@"WAIT_BEFORE_RETRY_TIMER"];
  }

  return 0;
}

- (int64_t)action_FiredBackoffDecideServerApplicableToJobs:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self initialWaitTimer];

  if (v7)
  {
    [(MADAutoAssetConnector *)self setInitialWaitTimer:0];
    [(MADAutoAssetConnector *)self _firedTimer:@"FiredBackoffDecideServerApplicableToJobs" ofTimerCategory:@"BACKOFF_RETRY_TIMER"];
  }

  [(MADAutoAssetConnector *)self _issueFollowupApplicableServersUpDown:@"FiredBackoffDecideServerApplicableToJobs"];
  return 0;
}

- (int64_t)action_FiredRetryDiscTakeOSXactOrderAttempt1st:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self initialWaitTimer];

  if (v7)
  {
    [(MADAutoAssetConnector *)self setInitialWaitTimer:0];
    [(MADAutoAssetConnector *)self _firedTimer:@"FiredRetryDiscTakeOSXactOrderAttempt1st" ofTimerCategory:@"WAIT_BEFORE_RETRY_TIMER"];
  }

  [(MADAutoAssetConnector *)self _chooseOrderForNextAttemptAndStartFirstJob:@"FiredRetryDiscTakeOSXactOrderAttempt1st" beginningOSTransaction:1];
  return 0;
}

- (int64_t)action_FiredRetryConnOrderAttemptFirstJobActive:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self initialWaitTimer];

  if (v7)
  {
    [(MADAutoAssetConnector *)self setInitialWaitTimer:0];
    [(MADAutoAssetConnector *)self _firedTimer:@"FiredRetryConnOrderAttemptFirstJobActive" ofTimerCategory:@"WAIT_BEFORE_RETRY_TIMER"];
  }

  [(MADAutoAssetConnector *)self _chooseOrderForNextAttemptAndStartFirstJob:@"FiredRetryConnOrderAttemptFirstJobActive" beginningOSTransaction:0];
  return 0;
}

- (int64_t)action_TrackServerUp:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 observedNetworkPath];

  [(MADAutoAssetConnector *)self _trackServerUp:v8 fromLocation:@"TrackServerUp"];
  return 0;
}

- (int64_t)action_TrackServerDown:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 observedNetworkPath];

  [(MADAutoAssetConnector *)self _trackServerDown:v8 fromLocation:@"TrackServerDown"];
  return 0;
}

- (int64_t)action_TrackServerUpDecideApplicableToJobs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 observedNetworkPath];
  [(MADAutoAssetConnector *)self _trackServerUp:v8 fromLocation:@"TrackServerUpDecideApplicableToJobs"];

  if ([(MADAutoAssetConnector *)self _isAnyServerUpForJobsToBeAttempted:@"TrackServerUpDecideApplicableToJobs"])
  {
    v9 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    [v9 followupEvent:@"ApplicableServersUp" withInfo:v5];
  }

  return 0;
}

- (int64_t)action_TrackServerDownDecideApplicableToJobs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 observedNetworkPath];
  [(MADAutoAssetConnector *)self _trackServerDown:v8 fromLocation:@"TrackServerDownDecideApplicableToJobs"];

  if (![(MADAutoAssetConnector *)self _isAnyServerUpForJobsToBeAttempted:@"TrackServerUpDecideApplicableToJobs"])
  {
    v9 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    [v9 followupEvent:@"ApplicableServersDown" withInfo:v5];
  }

  return 0;
}

- (int64_t)action_TrackServerUpDecideInUseActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MADAutoAssetConnector *)self _followupInUseServerStatus:@"TrackServerUpDecideInUseActiveJob"];
  v9 = [v5 observedNetworkPath];
  [(MADAutoAssetConnector *)self _trackServerUp:v9 fromLocation:@"TrackServerUpDecideInUseActiveJob"];

  v10 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  [v10 followupEvent:v8 withInfo:v5];

  return 0;
}

- (int64_t)action_TrackServerDownDecideInUseActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MADAutoAssetConnector *)self _followupInUseServerStatus:@"TrackServerUpDecideInUseActiveJob"];
  v9 = [v5 observedNetworkPath];
  [(MADAutoAssetConnector *)self _trackServerDown:v9 fromLocation:@"TrackServerDownDecideInUseActiveJob"];

  v10 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  [v10 followupEvent:v8 withInfo:v5];

  return 0;
}

- (int64_t)action_StartupAlteredJobsReplaceDecideHaveJobs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  [(MADAutoAssetConnector *)self _adoptAlteredMarkers:v5 fromLocation:@"StartupAlteredJobsReplaceDecideHaveJobs"];
  [(MADAutoAssetConnector *)self _issueFollowupWhetherHaveJobs:@"[STARTUP] set of monitored markers replaced" notifyingWhenNoJobs:0];
  return 0;
}

- (int64_t)action_AlteredJobsReplaceDecideHaveJobs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  [(MADAutoAssetConnector *)self _adoptAlteredMarkers:v5 fromLocation:@"AlteredJobsReplaceDecideHaveJobs"];
  [(MADAutoAssetConnector *)self _issueFollowupWhetherHaveJobs:@"set of monitored markers replaced" notifyingWhenNoJobs:1];
  return 0;
}

- (int64_t)action_AlteredJobsDecideStillActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [[MADAutoAssetConnectorParam alloc] initWithSafeSummary:@"set of monitored markers altered mid-attempt"];
  [(MADAutoAssetConnector *)self _adoptAlteredMarkers:v5 fromLocation:@"AlteredJobsDecideStillActiveJob"];

  v9 = [(MADAutoAssetConnector *)self activeJobMarker];

  if (v9)
  {
    v10 = [(MADAutoAssetConnector *)self activeJobMarker];
    v11 = [(MADAutoAssetConnector *)self _isMarkerBeingMonitored:v10];

    if (v11)
    {
      v12 = @"AlteredStillActiveJob";
      goto LABEL_15;
    }
  }

  else
  {
    v13 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v14 = [v13 diag];
    [v14 trackAnomaly:@"AUTO-CONNECTOR" forReason:@"{AlteredJobsDecideStillActiveJob} no active-job-marker when deciding whether still active job" withResult:6111 withError:0];
  }

  [(MADAutoAssetConnector *)self setActiveJobMarker:0];
  [(MADAutoAssetConnector *)self _logClearedActiveJobMarker:@"AlteredJobsDecideStillActiveJob"];
  v15 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
  v16 = [v15 count];

  if (!v16)
  {
    v19 = [(MADAutoAssetConnector *)self markersRequiringRetry];
    if (![v19 count])
    {
      v20 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
      if (![v20 count])
      {
        v23 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
        v24 = [v23 count];

        if (!v24)
        {
          [(MADAutoAssetConnector *)self _setBackoffRetryLevel:0 forReason:@"auto-asset-scheduler altered scheduled-jobs mid-attempt - no more jobs to be attempted"];
          v12 = @"AlteredAttemptDoneNoJobs";
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
    v12 = @"AlteredAttemptDoneBackoff";
    goto LABEL_15;
  }

  v17 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
  v18 = [v17 objectAtIndex:0];

  if ([(MADAutoAssetConnector *)self _isPathToServerForMarkerUp:v18])
  {
    v12 = @"AlteredActiveGoneConnected";
  }

  else
  {
    v12 = @"AlteredActiveGoneDisconnected";
  }

LABEL_15:
  v21 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  [v21 followupEvent:v12 withInfo:v8];

  return 0;
}

- (int64_t)action_AlteredJobsDecidePreemptBackoff:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 markersNoRetry];
  if ([v8 count])
  {

    [(MADAutoAssetConnector *)self _adoptAlteredMarkers:v5 fromLocation:@"AlteredJobsDecidePreemptBackoff"];
  }

  else
  {
    v9 = [v5 markersRequiringRetry];
    v10 = [v9 count];

    [(MADAutoAssetConnector *)self _adoptAlteredMarkers:v5 fromLocation:@"AlteredJobsDecidePreemptBackoff"];
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [(MADAutoAssetConnector *)self _isAnyServerUpForJobsToBeAttempted:@"AlteredJobsDecidePreemptBackoff"];
  v12 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v13 = v12;
  if (v11)
  {
    v14 = @"AlteredPreemptConnected";
  }

  else
  {
    v14 = @"AlteredPreemptDisconnected";
  }

  [v12 followupEvent:v14 withInfo:v5];

LABEL_8:
  return 0;
}

- (int64_t)action_DecideServerApplicableToJobs:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(MADAutoAssetConnector *)self _issueFollowupApplicableServersUpDown:@"DecideServerApplicableToJobs"];
  return 0;
}

- (int64_t)action_TakeOSTransaction:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(MADAutoAssetConnector *)self osTransactionBegin:@"TakeOSTransaction"];
  return 0;
}

- (int64_t)action_ClearOSTransaction:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(MADAutoAssetConnector *)self osTransactionEnd:@"ClearOSTransaction"];
  return 0;
}

- (int64_t)action_OrderAttemptTakeOSXactFirstJobActive:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(MADAutoAssetConnector *)self _chooseOrderForNextAttemptAndStartFirstJob:@"OrderAttemptTakeOSXactFirstJobActive" beginningOSTransaction:1];
  return 0;
}

- (int64_t)action_NextScheduledJobNowActive:(id)a3 error:(id *)a4
{
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self activeJobMarker];

  if (v7)
  {
    v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v9 = [v8 diag];
    [v9 trackAnomaly:@"AUTO-CONNECTOR" forReason:@"{NextScheduledJobNowActive} active-job-marker when not expected" withResult:6103 withError:0];

    [(MADAutoAssetConnector *)self setActiveJobMarker:0];
    [(MADAutoAssetConnector *)self _logClearedActiveJobMarker:@"NextScheduledJobNowActive"];
  }

  v10 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
  if (!v10 || (v11 = v10, -[MADAutoAssetConnector currentAttemptRemainingMarkers](self, "currentAttemptRemainingMarkers"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v11, !v13))
  {
    v14 = @"{NextScheduledJobNowActive} no [more] jobs remaining for current attempt when jobs expected";
    goto LABEL_8;
  }

  if (![(MADAutoAssetConnector *)self _triggerNextMarker])
  {
    v14 = @"{NextScheduledJobNowActive} unable to start next triggered job";
LABEL_8:
    v15 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v16 = [v15 diag];
    [v16 trackAnomaly:@"AUTO-CONNECTOR" forReason:v14 withResult:6110 withError:0];

    [(MADAutoAssetConnector *)self setCurrentAttemptBeginningMarkers:0];
    v17 = objc_alloc_init(NSMutableArray);
    [(MADAutoAssetConnector *)self setCurrentAttemptRemainingMarkers:v17];

    [(MADAutoAssetConnector *)self _logClearedAttemptRemainingMarkers:v14];
    v18 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v19 = [[MADAutoAssetConnectorParam alloc] initWithSafeSummary:v14];
    [v18 postEvent:@"AttemptAbandoned" withInfo:v19];
  }

  return 0;
}

- (int64_t)action_JobFinishedDecideHaveJobs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 finishedMarker];

  if (v8)
  {
    v9 = [v5 finishedMarker];
    v10 = [(MADAutoAssetConnector *)self activeJobMarker];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = [(MADAutoAssetConnector *)self autoConnectorFSM];
      v13 = [v12 diag];
      [v13 trackAnomaly:@"AUTO-CONNECTOR" forReason:@"{JobFinishedDecideHaveJobs} finishedMarker = activeJobMarker (when no attempt in progress)" withResult:6102 withError:0];

      [(MADAutoAssetConnector *)self setActiveJobMarker:0];
      [(MADAutoAssetConnector *)self setCurrentAttemptBeginningMarkers:0];
      v14 = objc_alloc_init(NSMutableArray);
      [(MADAutoAssetConnector *)self setCurrentAttemptRemainingMarkers:v14];

      [(MADAutoAssetConnector *)self _logClearedActiveJobAndAttemptRemainingMarkers:@"JobFinishedDecideHaveJobs"];
    }

    v15 = [v5 finishedMarker];
    -[MADAutoAssetConnector _refreshTrackingOfFinishedMarker:withPotentialNetworkFailure:](self, "_refreshTrackingOfFinishedMarker:withPotentialNetworkFailure:", v15, [v5 potentialNetworkFailure]);
  }

  else
  {
    v15 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v16 = [v15 diag];
    [v16 trackAnomaly:@"AUTO-CONNECTOR" forReason:@"{JobFinishedDecideHaveJobs} no finishedMarker" withResult:6102 withError:0];
  }

  [(MADAutoAssetConnector *)self _issueFollowupWhetherHaveJobs:@"active-job (known to marker) finished" notifyingWhenNoJobs:0];
  return 0;
}

- (int64_t)action_JobFinishedDecideStillActiveJob:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 finishedMarker];

  if (!v8)
  {
    v18 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v19 = [v18 diag];
    [(MADAutoAssetConnectorParam *)v19 trackAnomaly:@"AUTO-CONNECTOR" forReason:@"{JobFinishedDecideStillActiveJob} no finishedMarker" withResult:6102 withError:0];
LABEL_14:

    goto LABEL_15;
  }

  v9 = [v5 finishedMarker];
  v10 = [(MADAutoAssetConnector *)self activeJobMarker];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    [(MADAutoAssetConnector *)self setActiveJobMarker:0];
    [(MADAutoAssetConnector *)self _logClearedActiveJobMarker:@"JobFinishedDecideStillActiveJob"];
    v12 = [v5 finishedMarker];
    -[MADAutoAssetConnector _refreshTrackingOfFinishedMarker:withPotentialNetworkFailure:](self, "_refreshTrackingOfFinishedMarker:withPotentialNetworkFailure:", v12, [v5 potentialNetworkFailure]);

    v13 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
      v16 = [v15 objectAtIndex:0];

      if ([(MADAutoAssetConnector *)self _isPathToServerForMarkerUp:v16])
      {
        v17 = @"JobFinishedNextConnected";
      }

      else
      {
        v17 = @"JobFinishedNextDisconnected";
      }
    }

    else if ([(MADAutoAssetConnector *)self _isBackoffRetryRequired:@"JobFinishedDecideStillActiveJob"])
    {
      v17 = @"JobFinishedAttemptDoneBackoff";
    }

    else
    {
      v17 = @"JobFinishedAttemptDoneNoJobs";
    }

    v18 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v19 = [[MADAutoAssetConnectorParam alloc] initWithSafeSummary:@"JobFinishedDecideStillActiveJob"];
    [v18 followupEvent:v17 withInfo:v19];
    goto LABEL_14;
  }

  v18 = [v5 finishedMarker];
  -[MADAutoAssetConnector _refreshTrackingOfFinishedMarker:withPotentialNetworkFailure:](self, "_refreshTrackingOfFinishedMarker:withPotentialNetworkFailure:", v18, [v5 potentialNetworkFailure]);
LABEL_15:

  return 0;
}

- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] initWithFormat:@"unknown action(%@)", v5];

  v7 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v8 = [v7 diag];
  [v8 dumpTracked:v6 dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];

  return 0;
}

- (void)_adoptAlteredMarkers:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v125 = v7;
  v128 = [[NSString alloc] initWithFormat:@"%@:_adoptAlteredMarkers", v7];
  v10 = [[NSMutableString alloc] initWithString:&stru_4BD3F0];
  v11 = [v6 monitorMarkers];

  v126 = v6;
  if (v11)
  {
    v12 = [(MADAutoAssetConnector *)self monitorMarkers];
    objc_msgSend(v10, "appendString:", @"monitorMarkers(");
    v13 = [NSMutableArray alloc];
    v14 = [v6 monitorMarkers];
    v15 = [v13 initWithArray:v14];
    [(MADAutoAssetConnector *)self setMonitorMarkers:v15];

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v161 objects:v177 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v162;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v162 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v161 + 1) + 8 * i);
          if (![(MADAutoAssetConnector *)self _isMarkerBeingMonitored:v21])
          {
            [(MADAutoAssetConnector *)self _removeObserverForMarker:v21];
            v22 = [v21 summary];
            [v10 appendFormat:@"removeObserver:%@|", v22];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v161 objects:v177 count:16];
      }

      while (v18);
    }

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v23 = [(MADAutoAssetConnector *)self monitorMarkers];
    v24 = [v23 countByEnumeratingWithState:&v157 objects:v176 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v158;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v158 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v157 + 1) + 8 * j);
          [(MADAutoAssetConnector *)self _addObserverForMarker:v28];
          v29 = [v28 summary];
          [v10 appendFormat:@"addObserver:%@|", v29];
        }

        v25 = [v23 countByEnumeratingWithState:&v157 objects:v176 count:16];
      }

      while (v25);
    }

    [(MADAutoAssetConnector *)self _logMarkersBeingMonitored:v128];
    v30 = objc_alloc_init(NSMutableArray);
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v31 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
    v32 = [v31 countByEnumeratingWithState:&v153 objects:v175 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v154;
      do
      {
        for (k = 0; k != v33; k = k + 1)
        {
          if (*v154 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v153 + 1) + 8 * k);
          if ([(MADAutoAssetConnector *)self _isMarkerBeingMonitored:v36])
          {
            [v30 addObject:v36];
            v37 = [v36 summary];
            [v10 appendFormat:@"trimTrigNoRetry:%@|", v37];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v153 objects:v175 count:16];
      }

      while (v33);
    }

    v38 = [v30 count];
    v39 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
    v40 = [v39 count];

    if (v38 != v40)
    {
      [(MADAutoAssetConnector *)self setTriggeredMarkersNoRetry:v30];
      [v10 appendString:@"setTrigNoRetry|"];
      [(MADAutoAssetConnector *)self _logTriggeredMarkersNoRetry:v128];
    }

    v41 = objc_alloc_init(NSMutableArray);

    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v42 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
    v43 = [v42 countByEnumeratingWithState:&v149 objects:v174 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v150;
      do
      {
        for (m = 0; m != v44; m = m + 1)
        {
          if (*v150 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v149 + 1) + 8 * m);
          if ([(MADAutoAssetConnector *)self _isMarkerBeingMonitored:v47])
          {
            [v41 addObject:v47];
            v48 = [v47 summary];
            [v10 appendFormat:@"trimTrigRetry:%@|", v48];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v149 objects:v174 count:16];
      }

      while (v44);
    }

    v49 = [v41 count];
    v50 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
    v51 = [v50 count];

    if (v49 != v51)
    {
      [(MADAutoAssetConnector *)self setTriggeredMarkersRequiringRetry:v41];
      [v10 appendString:@"setTrigRetry|"];
      [(MADAutoAssetConnector *)self _logTriggeredMarkersRequiringRetry:v128];
    }

    v52 = objc_alloc_init(NSMutableArray);

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v53 = [(MADAutoAssetConnector *)self markersRequiringRetry];
    v54 = [v53 countByEnumeratingWithState:&v145 objects:v173 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v146;
      do
      {
        for (n = 0; n != v55; n = n + 1)
        {
          if (*v146 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v145 + 1) + 8 * n);
          if ([(MADAutoAssetConnector *)self _isMarkerBeingMonitored:v58])
          {
            [v52 addObject:v58];
            v59 = [v58 summary];
            [v10 appendFormat:@"trimRetry:%@|", v59];
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v145 objects:v173 count:16];
      }

      while (v55);
    }

    v60 = [v52 count];
    v61 = [(MADAutoAssetConnector *)self markersRequiringRetry];
    v62 = [v61 count];

    if (v60 != v62)
    {
      [(MADAutoAssetConnector *)self setMarkersRequiringRetry:v52];
      [v10 appendString:@"setRetry|"];
      [(MADAutoAssetConnector *)self _logMarkersRequiringRetry:v128];
    }

    [v10 appendString:@""]);

    v6 = v126;
  }

  v63 = [v6 markersNoRetry];

  if (v63)
  {
    objc_msgSend(v10, "appendString:", @"markersNoRetry(");
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v64 = [v6 markersNoRetry];
    v65 = [v64 countByEnumeratingWithState:&v141 objects:v172 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v142;
      do
      {
        for (ii = 0; ii != v66; ii = ii + 1)
        {
          if (*v142 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v141 + 1) + 8 * ii);
          if ([(MADAutoAssetConnector *)self _isMarkerBeingMonitored:v69])
          {
            v70 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
            v71 = [(MADAutoAssetConnector *)self _isMarker:v69 trackedByArray:v70];

            if ((v71 & 1) == 0)
            {
              v72 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
              [v72 addObject:v69];

              v73 = [v69 summary];
              [v10 appendFormat:@"trigNoRetry:%@|", v73];

              [(MADAutoAssetConnector *)self _logTriggeredMarkerNoRetry:v128 addedMarker:v69];
            }
          }

          else
          {
            v74 = [(MADAutoAssetConnector *)self autoConnectorFSM];
            v75 = [v74 diag];
            v76 = [[NSString alloc] initWithFormat:@"{%@} auto-asset-scheduled provided markersNoRetry entry not being monitored | marker:%@", v128, v69];
            [v75 trackAnomaly:@"AUTO-CONNECTOR" forReason:v76 withResult:6103 withError:0];
          }
        }

        v66 = [v64 countByEnumeratingWithState:&v141 objects:v172 count:16];
      }

      while (v66);
    }

    [v10 appendString:@""]);
    v6 = v126;
  }

  v77 = [v6 markersRequiringRetry];

  if (v77)
  {
    objc_msgSend(v10, "appendString:", @"markersRequiringRetry(");
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v78 = [v6 markersRequiringRetry];
    v79 = [v78 countByEnumeratingWithState:&v137 objects:v171 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v138;
      do
      {
        for (jj = 0; jj != v80; jj = jj + 1)
        {
          if (*v138 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v83 = *(*(&v137 + 1) + 8 * jj);
          if ([(MADAutoAssetConnector *)self _isMarkerBeingMonitored:v83])
          {
            v84 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
            v85 = [(MADAutoAssetConnector *)self _isMarker:v83 trackedByArray:v84];

            if ((v85 & 1) == 0)
            {
              v86 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
              [v86 addObject:v83];

              v87 = [v83 summary];
              [v10 appendFormat:@"trigRetry:%@|", v87];

              [(MADAutoAssetConnector *)self _logTriggeredMarkerRequiringRetry:v128 addedMarker:v83];
              v88 = [(MADAutoAssetConnector *)self markersRequiringRetry];
              v89 = [(MADAutoAssetConnector *)self _isMarker:v83 trackedByArray:v88];

              if ((v89 & 1) == 0)
              {
                v90 = [(MADAutoAssetConnector *)self markersRequiringRetry];
                [v90 addObject:v83];

                v91 = [v83 summary];
                [v10 appendFormat:@"markerRetry:%@|", v91];

                [(MADAutoAssetConnector *)self _logMarkerRequiringRetry:v128 addedMarker:v83];
              }
            }
          }

          else
          {
            v92 = [(MADAutoAssetConnector *)self autoConnectorFSM];
            v93 = [v92 diag];
            v94 = [[NSString alloc] initWithFormat:@"{%@} auto-asset-scheduled provided markersRequiringRetry entry not being monitored | marker:%@", v128, v83];
            [v93 trackAnomaly:@"AUTO-CONNECTOR" forReason:v94 withResult:6103 withError:0];
          }
        }

        v80 = [v78 countByEnumeratingWithState:&v137 objects:v171 count:16];
      }

      while (v80);
    }

    [v10 appendString:@""]);
    v6 = v126;
  }

  v95 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
  v96 = [v95 count];

  if (v96)
  {
    v97 = [(MADAutoAssetConnector *)self currentAttemptBeginningMarkers];

    if (v97)
    {
      v98 = [NSMutableArray alloc];
      v99 = [(MADAutoAssetConnector *)self currentAttemptBeginningMarkers];
      v100 = [v98 initWithArray:v99];
    }

    else
    {
      v99 = [(MADAutoAssetConnector *)self autoConnectorFSM];
      v101 = [v99 diag];
      [v101 trackAnomaly:@"AUTO-CONNECTOR" forReason:@"have currentAttemptRemainingMarkers yet nil currentAttemptBeginningMarkers" withResult:6110 withError:0];

      v100 = 0;
    }

    v102 = [v6 markersNoRetry];

    if (v102)
    {
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v103 = [v6 markersNoRetry];
      v104 = [v103 countByEnumeratingWithState:&v133 objects:v170 count:16];
      if (v104)
      {
        v105 = v104;
        v127 = 0;
        v106 = *v134;
        do
        {
          for (kk = 0; kk != v105; kk = kk + 1)
          {
            if (*v134 != v106)
            {
              objc_enumerationMutation(v103);
            }

            v108 = *(*(&v133 + 1) + 8 * kk);
            v109 = [(MADAutoAssetConnector *)self currentAttemptBeginningMarkers];
            v110 = [(MADAutoAssetConnector *)self _isMarker:v108 trackedByArray:v109];

            if ((v110 & 1) == 0)
            {
              v111 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
              [v111 addObject:v108];

              if (v100)
              {
                [v100 addObject:v108];
                v127 = 1;
              }

              v112 = [v108 summary];
              [v10 appendFormat:@"addNoRetryCurrent:%@|", v112];
            }
          }

          v105 = [v103 countByEnumeratingWithState:&v133 objects:v170 count:16];
        }

        while (v105);
      }

      else
      {
        v127 = 0;
      }

      v6 = v126;
    }

    else
    {
      v127 = 0;
    }

    v113 = [v6 markersRequiringRetry];

    if (v113)
    {
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v114 = [v6 markersRequiringRetry];
      v115 = [v114 countByEnumeratingWithState:&v129 objects:v169 count:16];
      if (v115)
      {
        v116 = v115;
        v117 = *v130;
        do
        {
          for (mm = 0; mm != v116; mm = mm + 1)
          {
            if (*v130 != v117)
            {
              objc_enumerationMutation(v114);
            }

            v119 = *(*(&v129 + 1) + 8 * mm);
            v120 = [(MADAutoAssetConnector *)self currentAttemptBeginningMarkers];
            v121 = [(MADAutoAssetConnector *)self _isMarker:v119 trackedByArray:v120];

            if ((v121 & 1) == 0)
            {
              v122 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
              [v122 addObject:v119];

              if (v100)
              {
                [v100 addObject:v119];
                v127 = 1;
              }

              v123 = [v119 summary];
              [v10 appendFormat:@"addRetryCurrent:%@|", v123];
            }
          }

          v116 = [v114 countByEnumeratingWithState:&v129 objects:v169 count:16];
        }

        while (v116);
      }

      v6 = v126;
    }

    if (v127)
    {
      [(MADAutoAssetConnector *)self setCurrentAttemptBeginningMarkers:v100];
    }
  }

  v124 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v166 = v128;
    v167 = 2114;
    v168 = v10;
    _os_log_impl(&dword_0, v124, OS_LOG_TYPE_DEBUG, "{%{public}@} adoptMarkersFlow:%{public}@", buf, 0x16u);
  }
}

- (BOOL)_isMarkerBeingMonitored:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(MADAutoAssetConnector *)self monitorMarkers];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([v4 isEqual:*(*(&v12 + 1) + 8 * i)])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)_isMarker:(id)a3 trackedByArray:(id)a4
{
  v5 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([v5 isEqual:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_issueFollowupWhetherHaveJobs:(id)a3 notifyingWhenNoJobs:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [[MADAutoAssetConnectorParam alloc] initWithSafeSummary:v17];
  v9 = [(MADAutoAssetConnector *)self monitorMarkers];
  if ([v9 count])
  {
    v10 = [(MADAutoAssetConnector *)self markersRequiringRetry];
    if ([v10 count])
    {
LABEL_5:

LABEL_6:
      v12 = @"AlteredHaveJobs";
      goto LABEL_11;
    }

    v11 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
    if ([v11 count])
    {

      goto LABEL_5;
    }

    v15 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
    v16 = [v15 count];

    if (v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = [[NSString alloc] initWithFormat:@"no [more] jobs triggered or requiring retry (%@)", v17];
  [(MADAutoAssetConnector *)self _setBackoffRetryLevel:0 forReason:v13];

  if (v4)
  {
    +[MADAutoAssetControlManager schedulerTriggeredNoActivity];
  }

  v12 = @"AlteredNoJobs";
LABEL_11:
  v14 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  [v14 followupEvent:v12 withInfo:v8];
}

- (void)_refreshTrackingOfFinishedMarker:(id)a3 withPotentialNetworkFailure:(BOOL)a4
{
  v6 = a3;
  v7 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
      v13 = [v12 objectAtIndex:v11];

      LOBYTE(v12) = [v13 isEqual:v6];
      if (v12)
      {
        break;
      }

      ++v11;
      v14 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
      v15 = [v14 count];

      if (v11 >= v15)
      {
        goto LABEL_8;
      }
    }

    v16 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
    v17 = [v16 count];

    if (v11 < v17)
    {
      v18 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
      [v18 removeObjectAtIndex:v11];

      [(MADAutoAssetConnector *)self _logTriggeredMarkerNoRetry:@"_refreshTrackingOfFinishedMarker" removedMarker:v6];
    }
  }

LABEL_8:
  v19 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
  v20 = [v19 count];

  if (v20)
  {
    v21 = 0;
    while (1)
    {
      v22 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
      v23 = [v22 objectAtIndex:v21];

      LOBYTE(v22) = [v23 isEqual:v6];
      if (v22)
      {
        break;
      }

      ++v21;
      v24 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
      v25 = [v24 count];

      if (v21 >= v25)
      {
        goto LABEL_15;
      }
    }

    v26 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
    v27 = [v26 count];

    if (v21 < v27)
    {
      v28 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
      [v28 removeObjectAtIndex:v21];

      [(MADAutoAssetConnector *)self _logTriggeredMarkerRequiringRetry:@"_refreshTrackingOfFinishedMarker" removedMarker:v6];
    }
  }

LABEL_15:
  if ([(MADAutoAssetConnector *)self _isMarkerBeingMonitored:v6])
  {
    if (a4)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v29 = [(MADAutoAssetConnector *)self markersRequiringRetry];
      v30 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v46;
        while (2)
        {
          v33 = 0;
          do
          {
            if (*v46 != v32)
            {
              objc_enumerationMutation(v29);
            }

            if ([*(*(&v45 + 1) + 8 * v33) isEqual:v6])
            {

              goto LABEL_34;
            }

            v33 = v33 + 1;
          }

          while (v31 != v33);
          v31 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      v34 = [(MADAutoAssetConnector *)self markersRequiringRetry];
      [v34 addObject:v6];

      [(MADAutoAssetConnector *)self _logMarkerRequiringRetry:@"_refreshTrackingOfFinishedMarker" addedMarker:v6];
    }

    else
    {
      v35 = [(MADAutoAssetConnector *)self markersRequiringRetry];
      v36 = [v35 count];

      if (v36)
      {
        v37 = 0;
        while (1)
        {
          v38 = [(MADAutoAssetConnector *)self markersRequiringRetry];
          v39 = [v38 objectAtIndex:v37];

          LOBYTE(v38) = [v39 isEqual:v6];
          if (v38)
          {
            break;
          }

          ++v37;
          v40 = [(MADAutoAssetConnector *)self markersRequiringRetry];
          v41 = [v40 count];

          if (v37 >= v41)
          {
            goto LABEL_34;
          }
        }

        v42 = [(MADAutoAssetConnector *)self markersRequiringRetry];
        v43 = [v42 count];

        if (v37 < v43)
        {
          v44 = [(MADAutoAssetConnector *)self markersRequiringRetry];
          [v44 removeObjectAtIndex:v37];

          [(MADAutoAssetConnector *)self _logMarkerRequiringRetry:@"_refreshTrackingOfFinishedMarker" removedMarker:v6];
        }
      }
    }
  }

LABEL_34:
}

- (void)_chooseOrderForNextAttemptAndStartFirstJob:(id)a3 beginningOSTransaction:(BOOL)a4
{
  v75 = a4;
  v76 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v77 = objc_alloc_init(NSMutableArray);
  v78 = objc_alloc_init(NSMutableArray);
  v79 = objc_alloc_init(NSMutableArray);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v7 = [(MADAutoAssetConnector *)self markersRequiringRetry];
  v8 = [v7 countByEnumeratingWithState:&v96 objects:v116 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v97;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v97 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v96 + 1) + 8 * i);
        v13 = [v12 assetType];
        v14 = [DownloadManager pathToCatalogLookupServer:v13 usingDownloadOptions:0];

        if (!v14)
        {
          v19 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = [(MADAutoAssetConnector *)self _updateLatestSummary];
            v21 = [v12 summary];
            *buf = 138544642;
            v105 = v20;
            v106 = 2114;
            v107 = @">----->";
            v108 = 2114;
            v109 = v76;
            v110 = 2114;
            v111 = @"MARKERS_REQUIRING_RETRY";
            v112 = 2114;
            v113 = v21;
            v114 = 2114;
            v115 = @"<-----<";
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | unable to determine path to catalog lookup server\n#_CONNR:(%{public}@) markerRequiringRetry:%{public}@\n#_CONNR:%{public}@", buf, 0x3Eu);
          }

LABEL_13:
          [v79 addObject:v12];
          goto LABEL_16;
        }

        v15 = [v14 absoluteString];
        v16 = [(MADAutoAssetConnector *)self catalogServerNetworkPathStatus];
        v17 = [v16 safeObjectForKey:v15 ofClass:objc_opt_class()];

        if (!v17)
        {
          goto LABEL_13;
        }

        if ([v17 integerValue] == &dword_0 + 2)
        {
          v18 = v77;
        }

        else
        {
          v18 = v78;
        }

        [v18 addObject:v12];

LABEL_16:
      }

      v9 = [v7 countByEnumeratingWithState:&v96 objects:v116 count:16];
    }

    while (v9);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v22 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
  v23 = [v22 countByEnumeratingWithState:&v92 objects:v103 count:16];
  if (!v23)
  {
    goto LABEL_35;
  }

  v24 = v23;
  v25 = *v93;
  do
  {
    for (j = 0; j != v24; j = j + 1)
    {
      if (*v93 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v92 + 1) + 8 * j);
      v28 = [v27 assetType];
      v29 = [DownloadManager pathToCatalogLookupServer:v28 usingDownloadOptions:0];

      if (!v29)
      {
        v34 = _MADLog(@"AutoScheduler");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = [(MADAutoAssetConnector *)self _updateLatestSummary];
          v36 = [v27 summary];
          *buf = 138544642;
          v105 = v35;
          v106 = 2114;
          v107 = @">----->";
          v108 = 2114;
          v109 = v76;
          v110 = 2114;
          v111 = @"TRIGGERED_MARKERS_NO_RETRY";
          v112 = 2114;
          v113 = v36;
          v114 = 2114;
          v115 = @"<-----<";
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | unable to determine path to catalog lookup server\n#_CONNR:(%{public}@) triggeredNoRetry:%{public}@\n#_CONNR:%{public}@", buf, 0x3Eu);
        }

LABEL_30:
        [v79 addObject:v27];
        goto LABEL_33;
      }

      v30 = [v29 absoluteString];
      v31 = [(MADAutoAssetConnector *)self catalogServerNetworkPathStatus];
      v32 = [v31 safeObjectForKey:v30 ofClass:objc_opt_class()];

      if (!v32)
      {
        goto LABEL_30;
      }

      if ([v32 integerValue] == &dword_0 + 2)
      {
        v33 = v77;
      }

      else
      {
        v33 = v78;
      }

      [v33 addObject:v27];

LABEL_33:
    }

    v24 = [v22 countByEnumeratingWithState:&v92 objects:v103 count:16];
  }

  while (v24);
LABEL_35:

  [(MADAutoAssetConnector *)self setCurrentAttemptBeginningMarkers:0];
  v37 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetConnector *)self setCurrentAttemptRemainingMarkers:v37];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v38 = v77;
  v39 = [v38 countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = 0;
    v42 = *v89;
    do
    {
      v43 = 0;
      v44 = v41;
      do
      {
        if (*v89 != v42)
        {
          objc_enumerationMutation(v38);
        }

        v41 = *(*(&v88 + 1) + 8 * v43);

        v45 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
        [v45 addObject:v41];

        v43 = v43 + 1;
        v44 = v41;
      }

      while (v40 != v43);
      v40 = [v38 countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v40);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v46 = v79;
  v47 = [v46 countByEnumeratingWithState:&v84 objects:v101 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = 0;
    v50 = *v85;
    do
    {
      v51 = 0;
      v52 = v49;
      do
      {
        if (*v85 != v50)
        {
          objc_enumerationMutation(v46);
        }

        v49 = *(*(&v84 + 1) + 8 * v51);

        v53 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
        [v53 addObject:v49];

        v51 = v51 + 1;
        v52 = v49;
      }

      while (v48 != v51);
      v48 = [v46 countByEnumeratingWithState:&v84 objects:v101 count:16];
    }

    while (v48);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v54 = v78;
  v55 = [v54 countByEnumeratingWithState:&v80 objects:v100 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = 0;
    v58 = *v81;
    do
    {
      v59 = 0;
      v60 = v57;
      do
      {
        if (*v81 != v58)
        {
          objc_enumerationMutation(v54);
        }

        v57 = *(*(&v80 + 1) + 8 * v59);

        v61 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
        [v61 addObject:v57];

        v59 = v59 + 1;
        v60 = v57;
      }

      while (v56 != v59);
      v56 = [v54 countByEnumeratingWithState:&v80 objects:v100 count:16];
    }

    while (v56);
  }

  v62 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
  v63 = [v62 count];

  if (v63)
  {
    v64 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
    v65 = [v64 copy];
    [(MADAutoAssetConnector *)self setCurrentAttemptBeginningMarkers:v65];
  }

  v66 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetConnector *)self setTriggeredMarkersNoRetry:v66];

  v67 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetConnector *)self setTriggeredMarkersRequiringRetry:v67];

  v68 = v76;
  [(MADAutoAssetConnector *)self _logTriggeredMarkersCleared:v76];
  if (v75)
  {
    [(MADAutoAssetConnector *)self osTransactionBegin:v76];
  }

  if ([(MADAutoAssetConnector *)self _triggerNextMarker])
  {
    [(MADAutoAssetConnector *)self _logCurrentAttemptRemainingMarkers:v76];
  }

  else
  {
    v69 = [[NSString alloc] initWithFormat:@"{%@} unable to start first triggered job", v76];
    v70 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v71 = [v70 diag];
    [v71 trackAnomaly:@"AUTO-CONNECTOR" forReason:v69 withResult:6110 withError:0];

    v68 = v76;
    [(MADAutoAssetConnector *)self setActiveJobMarker:0];
    [(MADAutoAssetConnector *)self setCurrentAttemptBeginningMarkers:0];
    v72 = objc_alloc_init(NSMutableArray);
    [(MADAutoAssetConnector *)self setCurrentAttemptRemainingMarkers:v72];

    [(MADAutoAssetConnector *)self _logClearedActiveJobAndAttemptRemainingMarkers:v76];
    v73 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v74 = [[MADAutoAssetConnectorParam alloc] initWithSafeSummary:v69];
    [v73 postEvent:@"AttemptAbandoned" withInfo:v74];
  }
}

- (BOOL)_triggerNextMarker
{
  v3 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
    v6 = [v5 objectAtIndex:0];
    [(MADAutoAssetConnector *)self setActiveJobMarker:v6];

    v7 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
    [v7 removeObjectAtIndex:0];

    [(MADAutoAssetConnector *)self _logNextActiveJobForAttemptRemainingMarkers:@"_triggerNextMarker"];
    v8 = [(MADAutoAssetConnector *)self activeJobMarker];
    LODWORD(v6) = [v8 isSetJob];

    if (v6)
    {
      v9 = [(MADAutoAssetConnector *)self activeJobMarker];
      v10 = [v9 setPolicy];

      v11 = [(MADAutoAssetConnector *)self activeJobMarker];
      v12 = [v11 pushedPolicy];

      if (v12)
      {
        v13 = [(MADAutoAssetConnector *)self activeJobMarker];
        v14 = [v13 pushedPolicy];

        v15 = [(MADAutoAssetConnector *)self activeJobMarker];
        [v15 setPushedPolicy:0];

        v10 = v14;
      }

      v16 = [MADAutoSetSchedulerTriggered alloc];
      v17 = [(MADAutoAssetConnector *)self activeJobMarker];
      v18 = [v17 clientDomainName];
      v19 = [(MADAutoAssetConnector *)self activeJobMarker];
      v20 = [v19 assetSetIdentifier];
      v21 = [(MADAutoSetSchedulerTriggered *)v16 initForClientDomainName:v18 forAssetSetIdentifier:v20 withSchedulerPolicy:v10];
      v25 = v21;
      v22 = [NSArray arrayWithObjects:&v25 count:1];
      [MADAutoAssetControlManager schedulerTriggeredSets:v22];
    }

    else
    {
      v10 = [(MADAutoAssetConnector *)self activeJobMarker];
      v17 = [v10 assetSelector];
      v24 = v17;
      v18 = [NSArray arrayWithObjects:&v24 count:1];
      [MADAutoAssetControlManager schedulerTriggeredSelectors:v18];
    }
  }

  return v4 != 0;
}

- (void)osTransactionBegin:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [[NSString alloc] initWithFormat:@"%@:osTransactionBegin", v4];
  v8 = [(MADAutoAssetConnector *)self activeAttemptOSTransaction];

  if (v8)
  {
    v9 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v10 = [v9 diag];
    v11 = [[NSString alloc] initWithFormat:@"{%@} OS-transaction already being held", v7];
    v12 = v10;
    v13 = v11;
    v14 = 6103;
LABEL_3:
    [v12 trackAnomaly:@"AUTO-CONNECTOR" forReason:v13 withResult:v14 withError:0];

    goto LABEL_8;
  }

  [@"com.apple.MobileAsset.AutoAssetConnector.TriggeredMarkersAttempt" UTF8String];
  v15 = os_transaction_create();
  [(MADAutoAssetConnector *)self setActiveAttemptOSTransaction:v15];

  v16 = [(MADAutoAssetConnector *)self activeAttemptOSTransaction];

  if (!v16)
  {
    v9 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v10 = [v9 diag];
    v11 = [[NSString alloc] initWithFormat:@"{%@} unable to create OS-transaction", v7];
    v12 = v10;
    v13 = v11;
    v14 = 6101;
    goto LABEL_3;
  }

  v17 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    *buf = 138543618;
    v20 = v18;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n#_CONNR: [OS-TRANSACTION-CONNECTOR] [BEGIN]", buf, 0x16u);
  }

LABEL_8:
}

- (void)osTransactionEnd:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [[NSString alloc] initWithFormat:@"%@:osTransactionEnd", v4];
  v8 = [(MADAutoAssetConnector *)self activeAttemptOSTransaction];

  if (v8)
  {
    [(MADAutoAssetConnector *)self setActiveAttemptOSTransaction:0];
    v9 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MADAutoAssetConnector *)self _updateLatestSummary];
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ {%{public}@}\n#_CONNR: [OS-TRANSACTION-CONNECTOR] [END]", buf, 0x16u);
    }
  }

  else
  {
    v11 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v12 = [v11 diag];
    v13 = [[NSString alloc] initWithFormat:@"{%@} not holding any OS-transaction", v7];
    [v12 trackAnomaly:@"AUTO-CONNECTOR" forReason:v13 withResult:6103 withError:0];
  }
}

- (void)_setBackoffRetryLevel:(int64_t)a3 forReason:(id)a4
{
  v6 = a4;
  v7 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  if ([(MADAutoAssetConnector *)self backoffRetryLevel]!= a3)
  {
    v9 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MADAutoAssetConnector *)self _updateLatestSummary];
      v11 = 138544898;
      v12 = v10;
      v13 = 2114;
      v14 = @">----->";
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = @"BACKOFF_RETRY_LEVEL";
      v19 = 2048;
      v20 = [(MADAutoAssetConnector *)self backoffRetryLevel];
      v21 = 2048;
      v22 = a3;
      v23 = 2114;
      v24 = @"<-----<";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@\n#_CONNR:%{public}@ {_setBackoffRetryLevel} | %{public}@\n#_CONNR:(%{public}@) backoff-retry level change: %ld => %ld\n#_CONNR:%{public}@", &v11, 0x48u);
    }

    [(MADAutoAssetConnector *)self setBackoffRetryLevel:a3];
  }
}

- (BOOL)_isBackoffRetryRequired:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self markersRequiringRetry];
  if ([v7 count])
  {
    goto LABEL_4;
  }

  v8 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
  if ([v8 count])
  {

LABEL_4:
    v9 = 1;
    goto LABEL_5;
  }

  v11 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
  v12 = [v11 count];

  if (v12)
  {
    v9 = 1;
    goto LABEL_6;
  }

  v7 = [[NSString alloc] initWithFormat:@"{%@} no [more] backoff-retry required", v4];
  [(MADAutoAssetConnector *)self _setBackoffRetryLevel:0 forReason:v7];
  v9 = 0;
LABEL_5:

LABEL_6:
  return v9;
}

- (void)_addObserverForMarker:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 assetType];
  v8 = [DownloadManager pathToCatalogLookupServer:v7 usingDownloadOptions:0];

  if (v8)
  {
    v9 = [v8 absoluteString];
    v10 = [(MADAutoAssetConnector *)self catalogServerNetworkPathObservers];
    v11 = [v10 safeObjectForKey:v9 ofClass:objc_opt_class()];

    if (v11)
    {
      v12 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [(MADAutoAssetConnector *)self _updateLatestSummary];
        v14 = [v4 summary];
        v18 = 138544642;
        v19 = v13;
        v20 = 2114;
        v21 = @">----->";
        v22 = 2114;
        v23 = @"NETWORK_PATH_OBSERVERS";
        v24 = 2114;
        v25 = v14;
        v26 = 2114;
        v27 = v9;
        v28 = 2114;
        v29 = @"<-----<";
        v15 = "%{public}@\n#_CONNR:%{public}@ {_addObserverForMarker} | additional marker for catalog lookup server already being observed\n#_CONNR:(%{public}@) markerToObserve:%{public}@ | pathToServer:%{public}@\n#_CONNR:%{public}@";
LABEL_9:
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, v15, &v18, 0x3Eu);
      }
    }

    else
    {
      v11 = [[MADAutoAssetConnectorObserver alloc] initForServerPath:v8];
      v17 = [(MADAutoAssetConnector *)self catalogServerNetworkPathObservers];
      [v17 setSafeObject:v11 forKey:v9];

      v12 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [(MADAutoAssetConnector *)self _updateLatestSummary];
        v14 = [v4 summary];
        v18 = 138544642;
        v19 = v13;
        v20 = 2114;
        v21 = @">----->";
        v22 = 2114;
        v23 = @"NETWORK_PATH_OBSERVERS";
        v24 = 2114;
        v25 = v14;
        v26 = 2114;
        v27 = v9;
        v28 = 2114;
        v29 = @"<-----<";
        v15 = "%{public}@\n#_CONNR:%{public}@ {_addObserverForMarker} | observing path to catalog lookup server\n#_CONNR:(%{public}@) [+] markerToObserve:%{public}@ | pathToServer:%{public}@\n#_CONNR:%{public}@";
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  v9 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v16 = [v4 summary];
    v18 = 138544386;
    v19 = v11;
    v20 = 2114;
    v21 = @">----->";
    v22 = 2114;
    v23 = @"NETWORK_PATH_OBSERVERS";
    v24 = 2114;
    v25 = v16;
    v26 = 2114;
    v27 = @"<-----<";
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@\n#_CONNR:%{public}@ {_addObserverForMarker} | unable to determine path to catalog lookup server\n#_CONNR:(%{public}@) markerToObserve:%{public}@\n#_CONNR:%{public}@", &v18, 0x34u);

LABEL_11:
  }
}

- (void)_removeObserverForMarker:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 assetType];
  v8 = [DownloadManager pathToCatalogLookupServer:v7 usingDownloadOptions:0];

  if (v8)
  {
    v9 = [v8 absoluteString];
    v10 = [(MADAutoAssetConnector *)self catalogServerNetworkPathObservers];
    v11 = [v10 safeObjectForKey:v9 ofClass:objc_opt_class()];

    if (v11)
    {
      v28 = v11;
      v29 = v9;
      v30 = v4;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v12 = [(MADAutoAssetConnector *)self monitorMarkers];
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v31 + 1) + 8 * i) assetType];
            v18 = [DownloadManager pathToCatalogLookupServer:v17 usingDownloadOptions:0];

            v19 = [v18 absoluteString];
            v20 = [v8 absoluteString];
            LOBYTE(v17) = [SUCore stringIsEqual:v19 to:v20];

            if (v17)
            {
              v9 = v29;
              v4 = v30;
              v11 = v28;
              v22 = v12;
              goto LABEL_20;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v21 = [(MADAutoAssetConnector *)self catalogServerNetworkPathObservers];
      v9 = v29;
      [v21 removeObjectForKey:v29];

      v22 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [(MADAutoAssetConnector *)self _updateLatestSummary];
        v4 = v30;
        v24 = [v30 summary];
        *buf = 138544642;
        v37 = v23;
        v38 = 2114;
        v39 = @">----->";
        v40 = 2114;
        v41 = @"NETWORK_PATH_OBSERVERS";
        v42 = 2114;
        v43 = v24;
        v44 = 2114;
        v45 = v29;
        v46 = 2114;
        v47 = @"<-----<";
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {_removeObserverForMarker} | no longer observing path to catalog lookup server\n#_CONNR:(%{public}@) [-] markerToRemove:%{public}@ | pathToServer:%{public}@\n#_CONNR:%{public}@", buf, 0x3Eu);
      }

      else
      {
        v4 = v30;
      }

      v11 = v28;
    }

    else
    {
      v22 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v26 = [(MADAutoAssetConnector *)self _updateLatestSummary];
        v27 = [v4 summary];
        *buf = 138544642;
        v37 = v26;
        v38 = 2114;
        v39 = @">----->";
        v40 = 2114;
        v41 = @"NETWORK_PATH_OBSERVERS";
        v42 = 2114;
        v43 = v27;
        v44 = 2114;
        v45 = v9;
        v46 = 2114;
        v47 = @"<-----<";
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {_removeObserverForMarker} | marker for catalog lookup server was not being observed\n#_CONNR:(%{public}@) markerToRemove:%{public}@ | pathToServer:%{public}@\n#_CONNR:%{public}@", buf, 0x3Eu);
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  v9 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v25 = [v4 summary];
    *buf = 138544386;
    v37 = v11;
    v38 = 2114;
    v39 = @">----->";
    v40 = 2114;
    v41 = @"NETWORK_PATH_OBSERVERS";
    v42 = 2114;
    v43 = v25;
    v44 = 2114;
    v45 = @"<-----<";
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@\n#_CONNR:%{public}@ {_removeObserverForMarker} | unable to determine path to catalog lookup server\n#_CONNR:(%{public}@) markerToRemove:%{public}@\n#_CONNR:%{public}@", buf, 0x34u);

LABEL_21:
  }
}

- (void)_trackServerUp:(id)a3 fromLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v7 absoluteString];

  v11 = [(MADAutoAssetConnector *)self catalogServerNetworkPathObservers];
  v12 = [v11 safeObjectForKey:v10 ofClass:objc_opt_class()];

  if (v12)
  {
    v13 = [[NSNumber alloc] initWithInt:2];
    v14 = [(MADAutoAssetConnector *)self catalogServerNetworkPathStatus];
    [v14 setSafeObject:v13 forKey:v10];

    v15 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MADAutoAssetConnector *)self _updateLatestSummary];
      v19 = 138544642;
      v20 = v16;
      v21 = 2114;
      v22 = @">----->";
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = @"NETWORK_PATH_OBSERVERS";
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = @"<-----<";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | observed path to catalog lookup server now UP\n#_CONNR:(%{public}@) observedNetworkPath:%{public}@ | UP\n#_CONNR:%{public}@", &v19, 0x3Eu);
    }
  }

  else
  {
    v17 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v18 = [v17 diag];
    [v18 trackAnomaly:@"AUTO-CONNECTOR" forReason:@"{_trackServerUp} network path observer is missing" withResult:6103 withError:0];
  }
}

- (void)_trackServerDown:(id)a3 fromLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v7 absoluteString];

  v11 = [(MADAutoAssetConnector *)self catalogServerNetworkPathObservers];
  v12 = [v11 safeObjectForKey:v10 ofClass:objc_opt_class()];

  if (v12)
  {
    v13 = [[NSNumber alloc] initWithInt:1];
    v14 = [(MADAutoAssetConnector *)self catalogServerNetworkPathStatus];
    [v14 setSafeObject:v13 forKey:v10];

    v15 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MADAutoAssetConnector *)self _updateLatestSummary];
      v19 = 138544642;
      v20 = v16;
      v21 = 2114;
      v22 = @">----->";
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = @"NETWORK_PATH_STATUS";
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = @"<-----<";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | observed path to catalog lookup server now DOWN\n#_CONNR:(%{public}@) observedNetworkPath:%{public}@ | DOWN\n#_CONNR:%{public}@", &v19, 0x3Eu);
    }
  }

  else
  {
    v17 = [(MADAutoAssetConnector *)self autoConnectorFSM];
    v18 = [v17 diag];
    [v18 trackAnomaly:@"AUTO-CONNECTOR" forReason:@"{_trackServerDown} network path observer is missing" withResult:6103 withError:0];
  }
}

- (BOOL)_isPathToServerForMarkerUp:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 assetType];

  v8 = [DownloadManager pathToCatalogLookupServer:v7 usingDownloadOptions:0];

  v9 = [v8 absoluteString];
  v10 = [(MADAutoAssetConnector *)self catalogServerNetworkPathStatus];
  v11 = [v10 safeObjectForKey:v9 ofClass:objc_opt_class()];

  if (v11)
  {
    v12 = [v11 integerValue] == &dword_0 + 2;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isAnyServerUpForJobsToBeAttempted:(id)a3
{
  v4 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(MADAutoAssetConnector *)self markersRequiringRetry];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([(MADAutoAssetConnector *)self _isPathToServerForMarkerUp:*(*(&v21 + 1) + 8 * v10)])
      {
        goto LABEL_18;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
  v11 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(v6);
      }

      if ([(MADAutoAssetConnector *)self _isPathToServerForMarkerUp:*(*(&v17 + 1) + 8 * v14)])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_18:
    v15 = 1;
    goto LABEL_19;
  }

LABEL_17:
  v15 = 0;
LABEL_19:

  return v15;
}

- (id)_followupInUseServerStatus:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self activeJobMarker];

  if (v7)
  {
    v8 = [(MADAutoAssetConnector *)self activeJobMarker];
    v9 = [v8 assetType];
    v10 = [DownloadManager pathToCatalogLookupServer:v9 usingDownloadOptions:0];

    if (v10)
    {
      v11 = [v10 absoluteString];
      v12 = [(MADAutoAssetConnector *)self catalogServerNetworkPathStatus];
      v13 = [v12 safeObjectForKey:v11 ofClass:objc_opt_class()];

      v14 = @"InUseServerDown";
      if (v13 && [v13 integerValue] == &dword_0 + 2)
      {
        v14 = @"InUseServerUp";
      }
    }

    else
    {
      v15 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [(MADAutoAssetConnector *)self _updateLatestSummary];
        v17 = [(MADAutoAssetConnector *)self activeJobMarker];
        v18 = [v17 summary];
        v20 = 138544642;
        v21 = v16;
        v22 = 2114;
        v23 = @">----->";
        v24 = 2114;
        v25 = v4;
        v26 = 2114;
        v27 = @"ACTIVE_MARKER";
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        v31 = @"<-----<";
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | unable to determine path to catalog lookup server\n#_CONNR:(%{public}@) activeJobMarker:%{public}@\n#_CONNR:%{public}@", &v20, 0x3Eu);
      }

      v14 = @"InUseServerDown";
    }
  }

  else
  {
    v14 = @"InUseServerDown";
  }

  return v14;
}

- (void)_issueFollowupApplicableServersUpDown:(id)a3
{
  v9 = a3;
  v4 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  LODWORD(v4) = [(MADAutoAssetConnector *)self _isAnyServerUpForJobsToBeAttempted:v9];
  v6 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v7 = [[MADAutoAssetConnectorParam alloc] initWithSafeSummary:v9];
  if (v4)
  {
    v8 = @"ApplicableServersUp";
  }

  else
  {
    v8 = @"ApplicableServersDown";
  }

  [v6 followupEvent:v8 withInfo:v7];
}

- (id)_startTimer:(id)a3 ofTimerCategory:(id)a4 forOneShotSecs:(int64_t)a5 withFiredMessage:(id)a6 postingEvent:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v17 = [v16 extendedStateQueue];
  dispatch_assert_queue_V2(v17);

  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = __98__MADAutoAssetConnector__startTimer_ofTimerCategory_forOneShotSecs_withFiredMessage_postingEvent___block_invoke;
  v30 = &unk_4B2B88;
  v18 = v14;
  v31 = v18;
  v19 = v15;
  v32 = v19;
  v20 = [NSTimer timerWithTimeInterval:0 repeats:&v27 block:a5];
  v21 = _MADLog(@"AutoScheduler");
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(MADAutoAssetConnector *)self _updateLatestSummary:v27];
      v24 = [MADAutoAssetControlManager allocIntervalString:a5];
      *buf = 138544898;
      v34 = v23;
      v35 = 2114;
      v36 = @">----->";
      v37 = 2114;
      v38 = v12;
      v39 = 2114;
      v40 = v13;
      v41 = 2114;
      v42 = v24;
      v43 = 2114;
      v44 = v18;
      v45 = 2114;
      v46 = @"<-----<";
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@\n#_CONNR:%{public}@ {%{public}@}\n#_CONNR:(%{public}@) [+] timer started (%{public}@) [%{public}@]\n#_CONNR:%{public}@", buf, 0x48u);
    }

    v22 = +[NSRunLoop mainRunLoop];
    [v22 addTimer:v20 forMode:NSDefaultRunLoopMode];
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v25 = [(MADAutoAssetConnector *)self _updateLatestSummary:v27];
    *buf = 138544642;
    v34 = v25;
    v35 = 2114;
    v36 = @">----->";
    v37 = 2114;
    v38 = v12;
    v39 = 2114;
    v40 = v13;
    v41 = 2114;
    v42 = v18;
    v43 = 2114;
    v44 = @"<-----<";
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@\n#_CONNR:%{public}@ {%{public}@}\n#_CONNR:(%{public}@) unable to start timer [%{public}@]\n#_CONNR:%{public}@", buf, 0x3Eu);
  }

  return v20;
}

void __98__MADAutoAssetConnector__startTimer_ofTimerCategory_forOneShotSecs_withFiredMessage_postingEvent___block_invoke(uint64_t a1)
{
  v4 = +[MADAutoAssetConnector autoAssetConnector];
  v2 = [[MADAutoAssetConnectorParam alloc] initWithSafeSummary:*(a1 + 32)];
  v3 = [v4 autoConnectorFSM];
  [v3 postEvent:*(a1 + 40) withInfo:v2];
}

- (void)_stoppedTimer:(id)a3 ofTimerCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v12 = 138544386;
    v13 = v11;
    v14 = 2114;
    v15 = @">----->";
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = @"<-----<";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n#_CONNR:%{public}@ {%{public}@}\n#_CONNR:(%{public}@) [-] timer stopped\n#_CONNR:%{public}@", &v12, 0x34u);
  }
}

- (void)_firedTimer:(id)a3 ofTimerCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v12 = 138544386;
    v13 = v11;
    v14 = 2114;
    v15 = @">----->";
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = @"<-----<";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@\n#_CONNR:%{public}@ {%{public}@}\n#_CONNR:(%{public}@) [!] timer fired\n#_CONNR:%{public}@", &v12, 0x34u);
  }
}

- (void)_logMarkersBeingMonitored:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self monitorMarkers];
  v8 = [v7 count];

  v9 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v11 = [(MADAutoAssetConnector *)self monitorMarkers];
    *buf = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = @">----->";
    v23 = 2114;
    v24 = v4;
    v25 = 2114;
    v26 = @"MONITORED_MARKERS";
    v27 = 2048;
    v28 = [v11 count];
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | all markers being monitored\n#_CONNR:(%{public}@) monitorMarkers:%ld", buf, 0x34u);
  }

  if (v8 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = [(MADAutoAssetConnector *)self monitorMarkers];
      v14 = [v13 objectAtIndex:v12];

      v15 = _MADLog(@"AutoScheduler");
      v12 = (v12 + 1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v14 summary];
        *buf = 138544130;
        v20 = @"MONITORED_MARKERS";
        v21 = 2048;
        v22 = v12;
        v23 = 2048;
        v24 = v8;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "\n#_CONNR:(%{public}@) %ld of %ld | monitorMarker:%{public}@", buf, 0x2Au);
      }
    }

    while (v12 != v8);
  }

  v17 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    *buf = 138543618;
    v20 = v18;
    v21 = 2114;
    v22 = @"<-----<";
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@", buf, 0x16u);
  }
}

- (void)_logMarkersRequiringRetry:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self markersRequiringRetry];
  v8 = [v7 count];

  v9 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v11 = [(MADAutoAssetConnector *)self markersRequiringRetry];
    *buf = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = @">----->";
    v23 = 2114;
    v24 = v4;
    v25 = 2114;
    v26 = @"MARKERS_REQUIRING_RETRY";
    v27 = 2048;
    v28 = [v11 count];
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | all requiring retry\n#_CONNR:(%{public}@) requiringRetry:%ld", buf, 0x34u);
  }

  if (v8 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = [(MADAutoAssetConnector *)self markersRequiringRetry];
      v14 = [v13 objectAtIndex:v12];

      v15 = _MADLog(@"AutoScheduler");
      v12 = (v12 + 1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v14 summary];
        *buf = 138544130;
        v20 = @"MARKERS_REQUIRING_RETRY";
        v21 = 2048;
        v22 = v12;
        v23 = 2048;
        v24 = v8;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "\n#_CONNR:(%{public}@) %ld of %ld | requiringRetry:%{public}@", buf, 0x2Au);
      }
    }

    while (v12 != v8);
  }

  v17 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    *buf = 138543618;
    v20 = v18;
    v21 = 2114;
    v22 = @"<-----<";
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@", buf, 0x16u);
  }
}

- (void)_logMarkerRequiringRetry:(id)a3 addedMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v12 = [v7 summary];
    v13 = [(MADAutoAssetConnector *)self markersRequiringRetry];
    v14 = 138544898;
    v15 = v11;
    v16 = 2114;
    v17 = @">----->";
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = @"MARKERS_REQUIRING_RETRY";
    v22 = 2114;
    v23 = v12;
    v24 = 2048;
    v25 = [v13 count];
    v26 = 2114;
    v27 = @"<-----<";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | marker just added to the set requiring retry\n#_CONNR:(%{public}@) [+] addedMarker:%{public}@ | markersRequiringRetry:%ld\n#_CONNR:%{public}@", &v14, 0x48u);
  }
}

- (void)_logMarkerRequiringRetry:(id)a3 removedMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v12 = [v7 summary];
    v13 = [(MADAutoAssetConnector *)self markersRequiringRetry];
    v14 = 138544898;
    v15 = v11;
    v16 = 2114;
    v17 = @">----->";
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = @"MARKERS_REQUIRING_RETRY";
    v22 = 2114;
    v23 = v12;
    v24 = 2048;
    v25 = [v13 count];
    v26 = 2114;
    v27 = @"<-----<";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | marker just removed from the set requiring retry\n#_CONNR:(%{public}@) [-] removedMarker:%{public}@ | markersRequiringRetry:%ld\n#_CONNR:%{public}@", &v14, 0x48u);
  }
}

- (void)_logTriggeredMarkersNoRetry:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
  v8 = [v7 count];

  v9 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v11 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
    *buf = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = @">----->";
    v23 = 2114;
    v24 = v4;
    v25 = 2114;
    v26 = @"TRIGGERED_MARKERS_NO_RETRY";
    v27 = 2048;
    v28 = [v11 count];
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | all triggered (which do not require retry)\n#_CONNR:(%{public}@) triggeredNoRetry:%ld", buf, 0x34u);
  }

  if (v8 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
      v14 = [v13 objectAtIndex:v12];

      v15 = _MADLog(@"AutoScheduler");
      v12 = (v12 + 1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v14 summary];
        *buf = 138544130;
        v20 = @"TRIGGERED_MARKERS_NO_RETRY";
        v21 = 2048;
        v22 = v12;
        v23 = 2048;
        v24 = v8;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "\n#_CONNR:(%{public}@) %ld of %ld | triggeredNoRetry:%{public}@", buf, 0x2Au);
      }
    }

    while (v12 != v8);
  }

  v17 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    *buf = 138543618;
    v20 = v18;
    v21 = 2114;
    v22 = @"<-----<";
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@", buf, 0x16u);
  }
}

- (void)_logTriggeredMarkerNoRetry:(id)a3 addedMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v12 = [v7 summary];
    v13 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
    v14 = 138544898;
    v15 = v11;
    v16 = 2114;
    v17 = @">----->";
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = @"TRIGGERED_MARKERS_NO_RETRY";
    v22 = 2114;
    v23 = v12;
    v24 = 2048;
    v25 = [v13 count];
    v26 = 2114;
    v27 = @"<-----<";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | marker just added to triggered (which do not require retry)\n#_CONNR:(%{public}@) [+] addedMarker:%{public}@ | triggeredNoRetry:%ld\n#_CONNR:%{public}@", &v14, 0x48u);
  }
}

- (void)_logTriggeredMarkerNoRetry:(id)a3 removedMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v12 = [v7 summary];
    v13 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
    v14 = 138544898;
    v15 = v11;
    v16 = 2114;
    v17 = @">----->";
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = @"TRIGGERED_MARKERS_NO_RETRY";
    v22 = 2114;
    v23 = v12;
    v24 = 2048;
    v25 = [v13 count];
    v26 = 2114;
    v27 = @"<-----<";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | marker just removed from triggered (which do not require retry)\n#_CONNR:(%{public}@) [-] removedMarker:%{public}@ | triggeredNoRetry:%ld\n#_CONNR:%{public}@", &v14, 0x48u);
  }
}

- (void)_logTriggeredMarkersRequiringRetry:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
  v8 = [v7 count];

  v9 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v11 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
    *buf = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = @">----->";
    v23 = 2114;
    v24 = v4;
    v25 = 2114;
    v26 = @"TRIGGERED_MARKERS_REQUIRING_RETRY";
    v27 = 2048;
    v28 = [v11 count];
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | all triggered (which require retry)\n#_CONNR:(%{public}@) triggeredRequiringRetry:%ld", buf, 0x34u);
  }

  if (v8 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
      v14 = [v13 objectAtIndex:v12];

      v15 = _MADLog(@"AutoScheduler");
      v12 = (v12 + 1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v14 summary];
        *buf = 138544130;
        v20 = @"TRIGGERED_MARKERS_REQUIRING_RETRY";
        v21 = 2048;
        v22 = v12;
        v23 = 2048;
        v24 = v8;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "\n#_CONNR:(%{public}@) %ld of %ld | triggeredRequiringRetry:%{public}@", buf, 0x2Au);
      }
    }

    while (v12 != v8);
  }

  v17 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    *buf = 138543618;
    v20 = v18;
    v21 = 2114;
    v22 = @"<-----<";
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@", buf, 0x16u);
  }
}

- (void)_logTriggeredMarkerRequiringRetry:(id)a3 addedMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v12 = [v7 summary];
    v13 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
    v14 = 138544898;
    v15 = v11;
    v16 = 2114;
    v17 = @">----->";
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = @"TRIGGERED_MARKERS_REQUIRING_RETRY";
    v22 = 2114;
    v23 = v12;
    v24 = 2048;
    v25 = [v13 count];
    v26 = 2114;
    v27 = @"<-----<";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | marker just added to triggered (which require retry)\n#_CONNR:(%{public}@) [+] addedMarker:%{public}@ | triggeredMarkersRequiringRetry:%ld\n#_CONNR:%{public}@", &v14, 0x48u);
  }
}

- (void)_logTriggeredMarkerRequiringRetry:(id)a3 removedMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v9 = [v8 extendedStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v12 = [v7 summary];
    v13 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
    v14 = 138544898;
    v15 = v11;
    v16 = 2114;
    v17 = @">----->";
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = @"TRIGGERED_MARKERS_REQUIRING_RETRY";
    v22 = 2114;
    v23 = v12;
    v24 = 2048;
    v25 = [v13 count];
    v26 = 2114;
    v27 = @"<-----<";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | marker just removed from triggered (which require retry)\n#_CONNR:(%{public}@) [-] removedMarker:%{public}@ | triggeredMarkersRequiringRetry:%ld\n#_CONNR:%{public}@", &v14, 0x48u);
  }
}

- (void)_logTriggeredMarkersCleared:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v9 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
    v10 = [v9 count];
    v11 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
    v12 = 138545154;
    v13 = v8;
    v14 = 2114;
    v15 = @">----->";
    v16 = 2114;
    v17 = v4;
    v18 = 2114;
    v19 = @"TRIGGERED_MARKERS_NO_RETRY";
    v20 = 2048;
    v21 = v10;
    v22 = 2114;
    v23 = @"TRIGGERED_MARKERS_REQUIRING_RETRY";
    v24 = 2048;
    v25 = [v11 count];
    v26 = 2114;
    v27 = @"<-----<";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | triggered markers cleared (all now part of current attempt set)\n#_CONNR:(%{public}@) [!] triggeredMarkersNoRetry:%ld\n#_CONNR:(%{public}@) [!] triggeredMarkersRequiringRetry:%ld\n#_CONNR:%{public}@", &v12, 0x52u);
  }
}

- (void)_logCurrentAttemptRemainingMarkers:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
  v8 = [v7 count];

  v9 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v11 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
    *buf = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = @">----->";
    v23 = 2114;
    v24 = v4;
    v25 = 2114;
    v26 = @"CURRENT_ATTEMPT_REMAINING_MARKERS";
    v27 = 2048;
    v28 = [v11 count];
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | markers for next attempt determined\n#_CONNR:(%{public}@) currentAttemptRemainingMarkers:%ld", buf, 0x34u);
  }

  if (v8 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
      v14 = [v13 objectAtIndex:v12];

      v15 = _MADLog(@"AutoScheduler");
      v12 = (v12 + 1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v14 summary];
        *buf = 138544130;
        v20 = @"CURRENT_ATTEMPT_REMAINING_MARKERS";
        v21 = 2048;
        v22 = v12;
        v23 = 2048;
        v24 = v8;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "\n#_CONNR:(%{public}@) %ld of %ld | currentAttemptRemainingMarker:%{public}@", buf, 0x2Au);
      }
    }

    while (v12 != v8);
  }

  v17 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    *buf = 138543618;
    v20 = v18;
    v21 = 2114;
    v22 = @"<-----<";
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@", buf, 0x16u);
  }
}

- (void)_logClearedActiveJobMarker:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v9 = 138544386;
    v10 = v8;
    v11 = 2114;
    v12 = @">----->";
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = @"ACTIVE_MARKER";
    v17 = 2114;
    v18 = @"<-----<";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@}\n#_CONNR:(%{public}@) activeJobMarker:NONE\n#_CONNR:%{public}@", &v9, 0x34u);
  }
}

- (void)_logClearedAttemptRemainingMarkers:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v9 = 138544386;
    v10 = v8;
    v11 = 2114;
    v12 = @">----->";
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = @"CURRENT_ATTEMPT_REMAINING_MARKERS";
    v17 = 2114;
    v18 = @"<-----<";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@}\n#_CONNR:(%{public}@) currentAttemptRemainingMarkers:NONE\n#_CONNR:%{public}@", &v9, 0x34u);
  }
}

- (void)_logClearedActiveJobAndAttemptRemainingMarkers:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v9 = 138544386;
    v10 = v8;
    v11 = 2114;
    v12 = @">----->";
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = @"CURRENT_ATTEMPT_REMAINING_MARKERS";
    v17 = 2114;
    v18 = @"<-----<";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@}\n#_CONNR:(%{public}@) activeJobMarker:NONE | currentAttemptRemainingMarkers:NONE\n#_CONNR:%{public}@", &v9, 0x34u);
  }
}

- (void)_logNextActiveJobForAttemptRemainingMarkers:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(MADAutoAssetConnector *)self _updateLatestSummary];
    v9 = [(MADAutoAssetConnector *)self activeJobMarker];
    v10 = [v9 summary];
    v11 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
    v12 = 138544898;
    v13 = v8;
    v14 = 2114;
    v15 = @">----->";
    v16 = 2114;
    v17 = v4;
    v18 = 2114;
    v19 = @"CURRENT_ATTEMPT_REMAINING_MARKERS";
    v20 = 2114;
    v21 = v10;
    v22 = 2048;
    v23 = [v11 count];
    v24 = 2114;
    v25 = @"<-----<";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%{public}@\n#_CONNR:%{public}@ {%{public}@} | advanced to next marker\n#_CONNR:(%{public}@) [~] activeJobMarker:%{public}@ | currentAttemptRemainingMarkers:%ld\n#_CONNR:%{public}@", &v12, 0x48u);
  }
}

- (id)summary
{
  v20 = [(MADAutoAssetConnector *)self monitorMarkers];
  v17 = [v20 count];
  v19 = [(MADAutoAssetConnector *)self markersRequiringRetry];
  v16 = [v19 count];
  v18 = [(MADAutoAssetConnector *)self triggeredMarkersNoRetry];
  v15 = [v18 count];
  v3 = [(MADAutoAssetConnector *)self triggeredMarkersRequiringRetry];
  v4 = [v3 count];
  v5 = [(MADAutoAssetConnector *)self activeAttemptOSTransaction];
  if (v5)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MADAutoAssetConnector *)self backoffRetryLevel];
  v8 = [(MADAutoAssetConnector *)self catalogServerNetworkPathObservers];
  v9 = [v8 count];
  v10 = [(MADAutoAssetConnector *)self activeJobMarker];
  v11 = [v10 summary];
  v12 = [(MADAutoAssetConnector *)self currentAttemptRemainingMarkers];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[monitor:%ld,requiringRetry:%ld|triggered(noRetry:%ld,retryRequired:%ld)|osTrans:%@|backoffLevel:%ld|observers:%ld|attempt(activeMarker:%@,remaining:%ld)]", v17, v16, v15, v4, v6, v7, v9, v11, [v12 count]);

  return v13;
}

- (id)_updateLatestSummary
{
  v3 = [(MADAutoAssetConnector *)self autoConnectorFSM];
  v4 = [v3 extendedStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetConnector *)self summary];
  [(MADAutoAssetConnector *)self setLatestSafeSummary:v5];

  return [(MADAutoAssetConnector *)self latestSafeSummary];
}

@end