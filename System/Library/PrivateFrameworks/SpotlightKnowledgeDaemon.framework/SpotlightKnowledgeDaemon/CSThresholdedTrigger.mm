@interface CSThresholdedTrigger
- (BOOL)incrementAndCheckPerformActionForKey:(id)key;
- (CSThresholdedTrigger)initWithCountThreshold:(int64_t)threshold timeInterval:(double)interval;
@end

@implementation CSThresholdedTrigger

- (CSThresholdedTrigger)initWithCountThreshold:(int64_t)threshold timeInterval:(double)interval
{
  v13.receiver = self;
  v13.super_class = CSThresholdedTrigger;
  v6 = [(CSThresholdedTrigger *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_countThreshold = threshold;
    v6->_timeInterval = interval;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    actionCounts = v7->_actionCounts;
    v7->_actionCounts = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastActionDates = v7->_lastActionDates;
    v7->_lastActionDates = v10;
  }

  return v7;
}

- (BOOL)incrementAndCheckPerformActionForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_actionCounts objectForKeyedSubscript:keyCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v8 = [(NSMutableDictionary *)self->_lastActionDates objectForKeyedSubscript:keyCopy];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [(NSMutableDictionary *)self->_lastActionDates objectForKeyedSubscript:keyCopy];

  if (!v10)
  {
    [(NSMutableDictionary *)self->_lastActionDates setObject:date forKeyedSubscript:keyCopy];
  }

  if (unsignedIntegerValue >= self->_countThreshold || v8 && ([date timeIntervalSinceDate:v8], v12 = v11, -[CSThresholdedTrigger timeInterval](self, "timeInterval"), v12 >= v13))
  {
    [(NSMutableDictionary *)self->_actionCounts setObject:0 forKeyedSubscript:keyCopy];
    [(NSMutableDictionary *)self->_lastActionDates setObject:date forKeyedSubscript:keyCopy];
    v15 = 1;
  }

  else
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    [(NSMutableDictionary *)self->_actionCounts setObject:v14 forKeyedSubscript:keyCopy];

    v15 = 0;
  }

  return v15;
}

@end