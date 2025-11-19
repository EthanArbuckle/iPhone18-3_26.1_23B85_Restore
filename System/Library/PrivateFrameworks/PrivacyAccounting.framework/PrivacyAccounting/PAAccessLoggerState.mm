@interface PAAccessLoggerState
- (PAAccessLoggerState)init;
- (id)lookupCurrentAccessForSlot:(id)a3;
- (id)takeOngoingAccessIntervalStateForAccess:(id)a3;
- (id)takeOngoingAccessIntervalStateForSlot:(id)a3;
- (void)setOngoingAccessIntervalState:(id)a3 forSlot:(id)a4;
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
    v4 = [MEMORY[0x1E695DF90] dictionary];
    ongoingAccessIntervals = v3->_ongoingAccessIntervals;
    v3->_ongoingAccessIntervals = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    slotByAccessForOngoingAccessInterval = v3->_slotByAccessForOngoingAccessInterval;
    v3->_slotByAccessForOngoingAccessInterval = v6;

    v8 = objc_opt_new();
    negativeAccessCache = v3->_negativeAccessCache;
    v3->_negativeAccessCache = v8;

    [(NSCache *)v3->_negativeAccessCache setName:@"com.apple.PrivacyAccounting.NegativeAccessCache"];
  }

  return v3;
}

- (void)setOngoingAccessIntervalState:(id)a3 forSlot:(id)a4
{
  ongoingAccessIntervals = self->_ongoingAccessIntervals;
  v7 = a4;
  v8 = a3;
  [(NSMutableDictionary *)ongoingAccessIntervals setObject:v8 forKeyedSubscript:v7];
  slotByAccessForOngoingAccessInterval = self->_slotByAccessForOngoingAccessInterval;
  v10 = [v8 access];

  [(NSMutableDictionary *)slotByAccessForOngoingAccessInterval setObject:v7 forKeyedSubscript:v10];
}

- (id)lookupCurrentAccessForSlot:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_ongoingAccessIntervals objectForKeyedSubscript:a3];
  v4 = [v3 access];

  return v4;
}

- (id)takeOngoingAccessIntervalStateForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_ongoingAccessIntervals objectForKeyedSubscript:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_ongoingAccessIntervals setObject:0 forKeyedSubscript:v4];
    slotByAccessForOngoingAccessInterval = self->_slotByAccessForOngoingAccessInterval;
    v7 = [v5 access];
    [(NSMutableDictionary *)slotByAccessForOngoingAccessInterval setObject:0 forKeyedSubscript:v7];

    v8 = v5;
  }

  return v5;
}

- (id)takeOngoingAccessIntervalStateForAccess:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_slotByAccessForOngoingAccessInterval objectForKeyedSubscript:a3];
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