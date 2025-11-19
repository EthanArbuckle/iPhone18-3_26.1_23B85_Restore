@interface UIBridgeServiceDelegateWrapper
- (void)uiBridgeServiceDetectedSiriDirectedSpeech;
- (void)uiBridgeServiceDetectedSpeechStart;
- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)a3;
- (void)uiBridgeServiceDidReceiveTasks:(id)a3;
- (void)uiBridgeServiceDidStartAttending;
- (void)uiBridgeServiceDidStartAttendingWithRootRequestId:(id)a3;
- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)a3;
- (void)uiBridgeServiceReceivedRequestProgress:(id)a3;
- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt;
- (void)uiBridgeServiceReceivedSiriResponse:(id)a3;
- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)a3;
- (void)uiBridgeServiceWillStartAttending;
@end

@implementation UIBridgeServiceDelegateWrapper

- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)a3
{
  v3 = self;
  sub_222DF4780();
}

- (void)uiBridgeServiceWillStartAttending
{
  v2 = self;
  sub_222E01EC0();
}

- (void)uiBridgeServiceDidStartAttending
{
  v2 = self;
  sub_222E01F20();
}

- (void)uiBridgeServiceDidStartAttendingWithRootRequestId:(id)a3
{
  if (a3)
  {
    sub_222E098C0();
  }

  v4 = self;
  sub_222E01FEC();
}

- (void)uiBridgeServiceDetectedSpeechStart
{
  v2 = self;
  sub_222E021A8();
}

- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)a3
{
  v4 = self;
  sub_222E02208(a3);
}

- (void)uiBridgeServiceDetectedSiriDirectedSpeech
{
  v2 = self;
  sub_222E02370();
}

- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)a3
{
  v3 = self;
  sub_222E023D0();
}

- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt
{
  v2 = self;
  sub_222E0243C();
}

- (void)uiBridgeServiceReceivedRequestProgress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_222E0252C();
}

- (void)uiBridgeServiceDidReceiveTasks:(id)a3
{
  sub_222E06308();
  v4 = sub_222E09920();
  v5 = self;
  sub_222E025DC(v4);
}

- (void)uiBridgeServiceReceivedSiriResponse:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_222E02C20();
}

@end