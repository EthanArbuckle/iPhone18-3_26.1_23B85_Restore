@interface PhysicalInterfaceSample
- (id)description;
- (unint64_t)rxThroughputBps;
- (unint64_t)txThroughputBps;
@end

@implementation PhysicalInterfaceSample

- (unint64_t)rxThroughputBps
{
  elapsedTime = self->_elapsedTime;
  if (elapsedTime <= 0.0)
  {
    return 0;
  }

  else
  {
    return (self->_rxBytes / elapsedTime);
  }
}

- (unint64_t)txThroughputBps
{
  elapsedTime = self->_elapsedTime;
  if (elapsedTime <= 0.0)
  {
    return 0;
  }

  else
  {
    return (self->_txBytes / elapsedTime);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = dateStringMillisecondsFromReferenceInterval(self->_startTimeIntervalSinceReferenceDate);
  elapsedTime = self->_elapsedTime;
  rxBytes = self->_rxBytes;
  txBytes = self->_txBytes;
  v8 = mbpsThroughput(rxBytes, elapsedTime);
  v9 = [v3 stringWithFormat:@"IfSample from %@ interval %2.3f rx-bytes %lld tx-bytes %lld rx-tput %.6f Mbps tx-tput %.6f Mbps", v4, *&elapsedTime, rxBytes, txBytes, *&v8, mbpsThroughput(self->_txBytes, self->_elapsedTime)];

  return v9;
}

@end