@interface AudioVideoSample
- (id)description;
@end

@implementation AudioVideoSample

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = dateStringMillisecondsFromReferenceInterval(self->_startTimeIntervalSinceReferenceDate);
  elapsedTime = self->_elapsedTime;
  rxBytes = self->_rxBytes;
  txBytes = self->_txBytes;
  [(AudioVideoSample *)self averageRxThroughput];
  v9 = v8;
  [(AudioVideoSample *)self averageTxThroughput];
  v11 = [v3 stringWithFormat:@"AudioVideoSample start %@ elapsed %8.3f secs, bytes rx %lld tx %lld avg tput in Mbps rx %.6f tx %.6f", v4, *&elapsedTime, rxBytes, txBytes, v9, v10];

  return v11;
}

@end