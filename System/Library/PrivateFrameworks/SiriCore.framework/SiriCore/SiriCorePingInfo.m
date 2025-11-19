@interface SiriCorePingInfo
- (id)copyWithZone:(_NSZone *)a3;
- (void)markPingSentWithIndex:(int64_t)a3;
- (void)markPongReceivedWithIndex:(int64_t)a3;
@end

@implementation SiriCorePingInfo

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(SiriCorePingInfo);
  *(result + 2) = self->_pingAcknowledgedCount;
  *(result + 3) = *&self->_avgPingTime;
  return result;
}

- (void)markPongReceivedWithIndex:(int64_t)a3
{
  outstandingPings = self->_outstandingPings;
  if (outstandingPings)
  {
    v6 = NSMapGet(outstandingPings, a3);
    if (v6)
    {
      v13 = v6;
      NSMapRemove(self->_outstandingPings, a3);
      v7 = [MEMORY[0x277CCAC38] processInfo];
      [v7 systemUptime];
      v9 = v8;
      [v13 doubleValue];
      v11 = v9 - v10;

      v12 = self->_pingAcknowledgedCount + 1;
      self->_pingAcknowledgedCount = v12;
      self->_avgPingTime = self->_avgPingTime + (v11 - self->_avgPingTime) / v12;
    }
  }
}

- (void)markPingSentWithIndex:(int64_t)a3
{
  outstandingPings = self->_outstandingPings;
  if (!outstandingPings)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:1282 valueOptions:0 capacity:1];
    v7 = self->_outstandingPings;
    self->_outstandingPings = v6;

    outstandingPings = self->_outstandingPings;
  }

  v8 = MEMORY[0x277CCABB0];
  v9 = [MEMORY[0x277CCAC38] processInfo];
  [v9 systemUptime];
  NSMapInsert(outstandingPings, a3, [v8 numberWithDouble:?]);
}

@end