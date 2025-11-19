@interface BRCFSEventToSyncUpEvent
- (id)additionalPayload;
- (id)associatedAppTelemetryEvent;
- (id)subDescription;
@end

@implementation BRCFSEventToSyncUpEvent

- (id)additionalPayload
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"isPackage";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPackage];
  v10[0] = v3;
  v9[1] = @"contentSize";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_contentSize];
  v10[1] = v4;
  v9[2] = @"syncUpBatchSize";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncUpBatchSize];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)subDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BRCItemID *)self->_itemID debugItemIDString];
  v5 = v4;
  if (self->_isPackage)
  {
    v6 = "pkg ";
  }

  else
  {
    v6 = "";
  }

  contentSize = self->_contentSize;
  v8 = [v3 stringWithFormat:@" i:%@ %ssz:%lld su-batch:%lld", v4, v6, contentSize, self->_syncUpBatchSize];

  return v8;
}

- (id)associatedAppTelemetryEvent
{
  [(BRCEventMetric *)self duration];
  v2 = [AppTelemetryTimeSeriesEvent newFSEventToSyncUpEventWithDuration:?];

  return v2;
}

@end