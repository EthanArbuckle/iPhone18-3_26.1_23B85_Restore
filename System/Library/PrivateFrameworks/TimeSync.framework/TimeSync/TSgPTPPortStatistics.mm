@interface TSgPTPPortStatistics
- (TSgPTPPortStatistics)init;
- (TSgPTPPortStatistics)initWithDC:(id)c;
@end

@implementation TSgPTPPortStatistics

- (TSgPTPPortStatistics)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSgPTPPortStatistics init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

- (TSgPTPPortStatistics)initWithDC:(id)c
{
  cCopy = c;
  v9.receiver = self;
  v9.super_class = TSgPTPPortStatistics;
  v5 = [(TSgPTPPortStatistics *)&v9 init];
  if (v5)
  {
    v5->_portType = [cCopy portType];
    portIdentifier = [cCopy portIdentifier];
    portIdentifier = v5->_portIdentifier;
    v5->_portIdentifier = portIdentifier;

    v5->_portRole = [cCopy portRole];
    v5->_receivedSyncCounter = [cCopy receivedSyncCounter];
    v5->_receivedFollowUpCounter = [cCopy receivedFollowUpCounter];
    v5->_receivedAnnounceCounter = [cCopy receivedAnnounceCounter];
    v5->_receivedSignalCounter = [cCopy receivedSignalCounter];
    v5->_receivedPacketDiscardCounter = [cCopy receivedPacketDiscardCounter];
    v5->_syncReceiptTimeoutCounter = [cCopy syncReceiptTimeoutCounter];
    v5->_announceReceiptTimeoutCounter = [cCopy announceReceiptTimeoutCounter];
    v5->_allowedLostResponsesExceededCounter = [cCopy allowedLostResponsesExceededCounter];
    v5->_transmittedSyncCounter = [cCopy transmittedSyncCounter];
    v5->_transmittedFollowUpCounter = [cCopy transmittedFollowUpCounter];
    v5->_transmittedAnnounceCounter = [cCopy transmittedAnnounceCounter];
    v5->_transmittedSignalCounter = [cCopy transmittedSignalCounter];
    v5->_transmittedPacketDiscardCounter = [cCopy transmittedPacketDiscardCounter];
    v5->_attemptedSyncCounter = [cCopy attemptedSyncCounter];
    v5->_attemptedFollowUpCounter = [cCopy attemptedFollowUpCounter];
    v5->_attemptedAnnounceCounter = [cCopy attemptedAnnounceCounter];
    v5->_attemptedSignalCounter = [cCopy attemptedSignalCounter];
    v5->_rawDelayExceededCounter = [cCopy rawDelayExceededCounter];
    v5->_rawDelayMeasurementCounter = [cCopy rawDelayMeasurementCounter];
    v5->_receivedPDelayRequestCounter = [cCopy receivedPDelayRequestCounter];
    v5->_transmittedPDelayResponseCounter = [cCopy transmittedPDelayResponseCounter];
    v5->_transmittedPDelayResponseFollowUpCounter = [cCopy transmittedPDelayResponseFollowUpCounter];
    v5->_attemptedPDelayResponseCounter = [cCopy attemptedPDelayResponseCounter];
    v5->_attemptedPDelayResponseFollowUpCounter = [cCopy attemptedPDelayResponseFollowUpCounter];
    v5->_transmittedPDelayRequestCounter = [cCopy transmittedPDelayRequestCounter];
    v5->_attemptedPDelayRequestCounter = [cCopy attemptedPDelayRequestCounter];
    v5->_receivedPDelayResponseCounter = [cCopy receivedPDelayResponseCounter];
    v5->_receivedPDelayResponseFollowUpCounter = [cCopy receivedPDelayResponseFollowUpCounter];
    v5->_receivedDelayRequestCounter = [cCopy receivedDelayRequestCounter];
    v5->_transmittedDelayResponseCounter = [cCopy transmittedDelayResponseCounter];
    v5->_attemptedDelayResponseCounter = [cCopy attemptedDelayResponseCounter];
    v5->_transmittedDelayRequestCounter = [cCopy transmittedDelayRequestCounter];
    v5->_attemptedDelayRequestCounter = [cCopy attemptedDelayRequestCounter];
    v5->_receivedDelayResponseCounter = [cCopy receivedDelayResponseCounter];
    v5->_supersededSyncCounter = [cCopy supersededSyncCounter];
    v5->_supersededDelayCounter = [cCopy supersededDelayCounter];
  }

  return v5;
}

@end