@interface UIBridgeServiceDelegateWrapper
- (void)uiBridgeServiceDetectedSiriDirectedSpeech;
- (void)uiBridgeServiceDetectedSpeechStart;
- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)start;
- (void)uiBridgeServiceDidReceiveTasks:(id)tasks;
- (void)uiBridgeServiceDidStartAttending;
- (void)uiBridgeServiceDidStartAttendingWithRootRequestId:(id)id;
- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)reason;
- (void)uiBridgeServiceReceivedRequestProgress:(id)progress;
- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt;
- (void)uiBridgeServiceReceivedSiriResponse:(id)response;
- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)result;
- (void)uiBridgeServiceWillStartAttending;
@end

@implementation UIBridgeServiceDelegateWrapper

- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)reason
{
  selfCopy = self;
  sub_222DF4780();
}

- (void)uiBridgeServiceWillStartAttending
{
  selfCopy = self;
  sub_222E01EC0();
}

- (void)uiBridgeServiceDidStartAttending
{
  selfCopy = self;
  sub_222E01F20();
}

- (void)uiBridgeServiceDidStartAttendingWithRootRequestId:(id)id
{
  if (id)
  {
    sub_222E098C0();
  }

  selfCopy = self;
  sub_222E01FEC();
}

- (void)uiBridgeServiceDetectedSpeechStart
{
  selfCopy = self;
  sub_222E021A8();
}

- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)start
{
  selfCopy = self;
  sub_222E02208(start);
}

- (void)uiBridgeServiceDetectedSiriDirectedSpeech
{
  selfCopy = self;
  sub_222E02370();
}

- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)result
{
  selfCopy = self;
  sub_222E023D0();
}

- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt
{
  selfCopy = self;
  sub_222E0243C();
}

- (void)uiBridgeServiceReceivedRequestProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  sub_222E0252C();
}

- (void)uiBridgeServiceDidReceiveTasks:(id)tasks
{
  sub_222E06308();
  v4 = sub_222E09920();
  selfCopy = self;
  sub_222E025DC(v4);
}

- (void)uiBridgeServiceReceivedSiriResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  sub_222E02C20();
}

@end