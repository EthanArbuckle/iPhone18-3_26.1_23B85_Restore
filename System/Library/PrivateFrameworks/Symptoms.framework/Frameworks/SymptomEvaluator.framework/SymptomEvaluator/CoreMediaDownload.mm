@interface CoreMediaDownload
- (id)coreMediaDownloadStateToString:(unsigned int)a3;
- (id)description;
@end

@implementation CoreMediaDownload

- (id)coreMediaDownloadStateToString:(unsigned int)a3
{
  if (a3 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_27898F408[a3];
  }
}

- (id)description
{
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = dateStringMillisecondsFromReferenceInterval(self->_startTime);
  prevRunsCellTxBytes = self->_prevRunsCellTxBytes;
  prevRunsCellRxBytes = self->_prevRunsCellRxBytes;
  prevRunsWiFiRxBytes = self->_prevRunsWiFiRxBytes;
  prevRunsWiFiTxBytes = self->_prevRunsWiFiTxBytes;
  prevRunBusyTime = self->_prevRunBusyTime;
  prevRunIdleTime = self->_prevRunIdleTime;
  v8 = dateStringMillisecondsFromReferenceInterval(self->_thisRunStartTime);
  thisRunStartCellRxBytes = self->_thisRunStartCellRxBytes;
  thisRunStartCellTxBytes = self->_thisRunStartCellTxBytes;
  thisRunStartWiFiRxBytes = self->_thisRunStartWiFiRxBytes;
  thisRunStartWiFiTxBytes = self->_thisRunStartWiFiTxBytes;
  v13 = [(CoreMediaDownload *)self coreMediaDownloadStateToString:self->_downloadState];
  v14 = v13;
  estimatedDuration = self->_estimatedDuration;
  quarantineStartTime = self->_quarantineStartTime;
  if (quarantineStartTime == 0.0)
  {
    v18 = [v22 initWithFormat:@"CoreMediaDownload started %@ cell rx %lld tx %lld wifi rx %lld tx %lld busy %.6f idle %.6f resume %@ baseline cell rx %lld tx %lld wifi rx %lld tx %lld state %@ est duration  %.3f quarantine-start %@", v3, prevRunsCellRxBytes, prevRunsCellTxBytes, prevRunsWiFiRxBytes, prevRunsWiFiTxBytes, *&prevRunBusyTime, *&prevRunIdleTime, v8, thisRunStartCellRxBytes, thisRunStartCellTxBytes, thisRunStartWiFiRxBytes, thisRunStartWiFiTxBytes, v13, *&estimatedDuration, @"<null>"];
  }

  else
  {
    v17 = dateStringMillisecondsFromReferenceInterval(quarantineStartTime);
    v18 = [v22 initWithFormat:@"CoreMediaDownload started %@ cell rx %lld tx %lld wifi rx %lld tx %lld busy %.6f idle %.6f resume %@ baseline cell rx %lld tx %lld wifi rx %lld tx %lld state %@ est duration  %.3f quarantine-start %@", v3, prevRunsCellRxBytes, prevRunsCellTxBytes, prevRunsWiFiRxBytes, prevRunsWiFiTxBytes, *&prevRunBusyTime, *&prevRunIdleTime, v8, thisRunStartCellRxBytes, thisRunStartCellTxBytes, thisRunStartWiFiRxBytes, thisRunStartWiFiTxBytes, v14, *&estimatedDuration, v17];
  }

  return v18;
}

@end