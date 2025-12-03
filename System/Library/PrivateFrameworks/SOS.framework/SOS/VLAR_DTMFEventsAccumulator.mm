@interface VLAR_DTMFEventsAccumulator
- (VLAR_DTMFEventsAccumulator)init;
- (id)analyticsDataDict;
- (void)noteDidReceiveDTMFDigit:(char)digit;
@end

@implementation VLAR_DTMFEventsAccumulator

- (VLAR_DTMFEventsAccumulator)init
{
  v6.receiver = self;
  v6.super_class = VLAR_DTMFEventsAccumulator;
  v2 = [(VLAR_DTMFEventsAccumulator *)&v6 init];
  if (v2)
  {
    v3 = [[SOSAnalyticsEventAccumulator alloc] initWithName:@"DTMFEvent"];
    eventsAccumulator = v2->_eventsAccumulator;
    v2->_eventsAccumulator = v3;
  }

  return v2;
}

- (void)noteDidReceiveDTMFDigit:(char)digit
{
  eventsAccumulator = self->_eventsAccumulator;
  v4 = _NSStringFromDTMFDigitChar(digit);
  [(SOSAnalyticsEventAccumulator *)eventsAccumulator noteEvent:v4];
}

- (id)analyticsDataDict
{
  v10[16] = *MEMORY[0x277D85DE8];
  v10[0] = @"1";
  v10[1] = @"2";
  v10[2] = @"3";
  v10[3] = @"4";
  v10[4] = @"5";
  v10[5] = @"6";
  v10[6] = @"7";
  v10[7] = @"8";
  v10[8] = @"9";
  v10[9] = @"0";
  v10[10] = @"Star";
  v10[11] = @"Pound";
  v10[12] = @"A";
  v10[13] = @"B";
  v10[14] = @"C";
  v10[15] = @"D";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:16];
  v8[0] = @"AllEventsKey";
  v8[1] = @"KnownEventsKey";
  v9[0] = @"nDTMFEvents_Total";
  v9[1] = @"nDTMFEvents_Known";
  v8[2] = @"UnknownEventsKey";
  v9[2] = @"nDTMFEvents_Unknown";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v5 = [(SOSAnalyticsEventAccumulator *)self->_eventsAccumulator analyticsDataDictForAccumulatedKeys:v3 outputKeyPrefix:@"nDTMFEvent_" summaryKeysDict:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end