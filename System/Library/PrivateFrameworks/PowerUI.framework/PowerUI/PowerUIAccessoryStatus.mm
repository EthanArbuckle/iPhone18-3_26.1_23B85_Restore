@interface PowerUIAccessoryStatus
- (PowerUIAccessoryStatus)init;
- (id)description;
@end

@implementation PowerUIAccessoryStatus

- (PowerUIAccessoryStatus)init
{
  v11.receiver = self;
  v11.super_class = PowerUIAccessoryStatus;
  v2 = [(PowerUIAccessoryStatus *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 1;
    disabledUntilDate = v2->_disabledUntilDate;
    v2->_currentState = 1;
    v2->_disabledUntilDate = 0;

    v3->_temporarilyDisabled = 0;
    lastSentDate = v3->_lastSentDate;
    v3->_lastSentDate = 0;

    lastSeenDate = v3->_lastSeenDate;
    v3->_lastSeenDate = 0;

    lastTimeseriesDate = v3->_lastTimeseriesDate;
    v3->_lastTimeseriesDate = 0;

    lastUnderchargeRecordedForPrediction = v3->_lastUnderchargeRecordedForPrediction;
    v3->_lastUnderchargeRecordedForPrediction = 0;

    *&v3->_underchargesSinceLastReport = 0;
    expectedHash = v3->_expectedHash;
    v3->_expectedHash = 0;
    v3->_managerState = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentState];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabled];
  disabledUntilDate = self->_disabledUntilDate;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_temporarilyDisabled];
  lastTimeseriesDate = self->_lastTimeseriesDate;
  v9 = [v3 stringWithFormat:@"AccessoryStatus: currentState=%@ enabled=%@ disabledUntilDate=%@ temporarilyDisabled=%@ lastSentDate=%@ lastSeenDate=%@ lastTimeseriesDate=%@ expectedhash=%@", v4, v5, disabledUntilDate, v7, self->_lastSentDate, self->_lastSeenDate, lastTimeseriesDate, self->_expectedHash];

  return v9;
}

@end