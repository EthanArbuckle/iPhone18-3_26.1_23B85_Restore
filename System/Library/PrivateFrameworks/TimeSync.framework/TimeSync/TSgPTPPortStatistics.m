@interface TSgPTPPortStatistics
- (TSgPTPPortStatistics)init;
- (TSgPTPPortStatistics)initWithDC:(id)a3;
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

- (TSgPTPPortStatistics)initWithDC:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSgPTPPortStatistics;
  v5 = [(TSgPTPPortStatistics *)&v9 init];
  if (v5)
  {
    v5->_portType = [v4 portType];
    v6 = [v4 portIdentifier];
    portIdentifier = v5->_portIdentifier;
    v5->_portIdentifier = v6;

    v5->_portRole = [v4 portRole];
    v5->_receivedSyncCounter = [v4 receivedSyncCounter];
    v5->_receivedFollowUpCounter = [v4 receivedFollowUpCounter];
    v5->_receivedAnnounceCounter = [v4 receivedAnnounceCounter];
    v5->_receivedSignalCounter = [v4 receivedSignalCounter];
    v5->_receivedPacketDiscardCounter = [v4 receivedPacketDiscardCounter];
    v5->_syncReceiptTimeoutCounter = [v4 syncReceiptTimeoutCounter];
    v5->_announceReceiptTimeoutCounter = [v4 announceReceiptTimeoutCounter];
    v5->_allowedLostResponsesExceededCounter = [v4 allowedLostResponsesExceededCounter];
    v5->_transmittedSyncCounter = [v4 transmittedSyncCounter];
    v5->_transmittedFollowUpCounter = [v4 transmittedFollowUpCounter];
    v5->_transmittedAnnounceCounter = [v4 transmittedAnnounceCounter];
    v5->_transmittedSignalCounter = [v4 transmittedSignalCounter];
    v5->_transmittedPacketDiscardCounter = [v4 transmittedPacketDiscardCounter];
    v5->_attemptedSyncCounter = [v4 attemptedSyncCounter];
    v5->_attemptedFollowUpCounter = [v4 attemptedFollowUpCounter];
    v5->_attemptedAnnounceCounter = [v4 attemptedAnnounceCounter];
    v5->_attemptedSignalCounter = [v4 attemptedSignalCounter];
    v5->_rawDelayExceededCounter = [v4 rawDelayExceededCounter];
    v5->_rawDelayMeasurementCounter = [v4 rawDelayMeasurementCounter];
    v5->_receivedPDelayRequestCounter = [v4 receivedPDelayRequestCounter];
    v5->_transmittedPDelayResponseCounter = [v4 transmittedPDelayResponseCounter];
    v5->_transmittedPDelayResponseFollowUpCounter = [v4 transmittedPDelayResponseFollowUpCounter];
    v5->_attemptedPDelayResponseCounter = [v4 attemptedPDelayResponseCounter];
    v5->_attemptedPDelayResponseFollowUpCounter = [v4 attemptedPDelayResponseFollowUpCounter];
    v5->_transmittedPDelayRequestCounter = [v4 transmittedPDelayRequestCounter];
    v5->_attemptedPDelayRequestCounter = [v4 attemptedPDelayRequestCounter];
    v5->_receivedPDelayResponseCounter = [v4 receivedPDelayResponseCounter];
    v5->_receivedPDelayResponseFollowUpCounter = [v4 receivedPDelayResponseFollowUpCounter];
    v5->_receivedDelayRequestCounter = [v4 receivedDelayRequestCounter];
    v5->_transmittedDelayResponseCounter = [v4 transmittedDelayResponseCounter];
    v5->_attemptedDelayResponseCounter = [v4 attemptedDelayResponseCounter];
    v5->_transmittedDelayRequestCounter = [v4 transmittedDelayRequestCounter];
    v5->_attemptedDelayRequestCounter = [v4 attemptedDelayRequestCounter];
    v5->_receivedDelayResponseCounter = [v4 receivedDelayResponseCounter];
    v5->_supersededSyncCounter = [v4 supersededSyncCounter];
    v5->_supersededDelayCounter = [v4 supersededDelayCounter];
  }

  return v5;
}

@end