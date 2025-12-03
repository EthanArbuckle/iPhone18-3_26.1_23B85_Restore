@interface PAAccessLoggerState
- (PAAccessLoggerState)init;
- (id)lookupCurrentAccessForSlot:(id)slot;
- (id)takeOngoingAccessIntervalStateForAccess:(id)access;
- (id)takeOngoingAccessIntervalStateForSlot:(id)slot;
- (void)setOngoingAccessIntervalState:(id)state forSlot:(id)slot;
@end

@implementation PAAccessLoggerState

- (PAAccessLoggerState)init
{
  v11.receiver = self;
  v11.super_class = PAAccessLoggerState;
  v2 = [(PAAccessLoggerState *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_loggingEnabled = 1;
    v2->_topAccessIntervalSlot = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    ongoingAccessIntervals = v3->_ongoingAccessIntervals;
    v3->_ongoingAccessIntervals = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    slotByAccessForOngoingAccessInterval = v3->_slotByAccessForOngoingAccessInterval;
    v3->_slotByAccessForOngoingAccessInterval = dictionary2;

    v8 = objc_opt_new();
    negativeAccessCache = v3->_negativeAccessCache;
    v3->_negativeAccessCache = v8;

    [(NSCache *)v3->_negativeAccessCache setName:@"com.apple.PrivacyAccounting.NegativeAccessCache"];
  }

  return v3;
}

- (void)setOngoingAccessIntervalState:(id)state forSlot:(id)slot
{
  ongoingAccessIntervals = self->_ongoingAccessIntervals;
  slotCopy = slot;
  stateCopy = state;
  [(NSMutableDictionary *)ongoingAccessIntervals setObject:stateCopy forKeyedSubscript:slotCopy];
  slotByAccessForOngoingAccessInterval = self->_slotByAccessForOngoingAccessInterval;
  access = [stateCopy access];

  [(NSMutableDictionary *)slotByAccessForOngoingAccessInterval setObject:slotCopy forKeyedSubscript:access];
}

- (id)lookupCurrentAccessForSlot:(id)slot
{
  v3 = [(NSMutableDictionary *)self->_ongoingAccessIntervals objectForKeyedSubscript:slot];
  access = [v3 access];

  return access;
}

- (id)takeOngoingAccessIntervalStateForSlot:(id)slot
{
  slotCopy = slot;
  v5 = [(NSMutableDictionary *)self->_ongoingAccessIntervals objectForKeyedSubscript:slotCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_ongoingAccessIntervals setObject:0 forKeyedSubscript:slotCopy];
    slotByAccessForOngoingAccessInterval = self->_slotByAccessForOngoingAccessInterval;
    access = [v5 access];
    [(NSMutableDictionary *)slotByAccessForOngoingAccessInterval setObject:0 forKeyedSubscript:access];

    v8 = v5;
  }

  return v5;
}

- (id)takeOngoingAccessIntervalStateForAccess:(id)access
{
  v4 = [(NSMutableDictionary *)self->_slotByAccessForOngoingAccessInterval objectForKeyedSubscript:access];
  if (v4)
  {
    v5 = [(PAAccessLoggerState *)self takeOngoingAccessIntervalStateForSlot:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end