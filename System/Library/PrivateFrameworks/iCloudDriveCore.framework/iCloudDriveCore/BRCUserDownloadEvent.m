@interface BRCUserDownloadEvent
- (BRCUserDownloadEvent)init;
- (id)additionalPayload;
- (id)associatedAppTelemetryEvent;
- (id)subDescription;
@end

@implementation BRCUserDownloadEvent

- (BRCUserDownloadEvent)init
{
  v6.receiver = self;
  v6.super_class = BRCUserDownloadEvent;
  v2 = [(BRCUserDownloadEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fileObjectIDs = v2->_fileObjectIDs;
    v2->_fileObjectIDs = v3;
  }

  return v2;
}

- (id)additionalPayload
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"didSucceed";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_didSucceed];
  v12[0] = v3;
  v11[1] = @"isDownloadingForBackup";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDownloadingForBackup];
  v12[1] = v4;
  v11[2] = @"isRecursiveDownload";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRecursiveDownload];
  v12[2] = v5;
  v11[3] = @"itemCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_itemCount];
  v12[3] = v6;
  v11[4] = @"totalContentSize";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalContentSize];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)subDescription
{
  v2 = "";
  if (self->_isRecursiveDownload)
  {
    v3 = "recursive ";
  }

  else
  {
    v3 = "";
  }

  if (self->_isDownloadingForBackup)
  {
    v2 = "for-backup";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@" sz:%lld cnt:%lld %s%s", self->_totalContentSize, self->_itemCount, v3, v2];
}

- (id)associatedAppTelemetryEvent
{
  [(BRCEventMetric *)self duration];
  v2 = [AppTelemetryTimeSeriesEvent newUserDownloadEventWithDuration:?];

  return v2;
}

@end