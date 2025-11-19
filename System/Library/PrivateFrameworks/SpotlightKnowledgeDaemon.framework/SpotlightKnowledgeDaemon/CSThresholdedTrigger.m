@interface CSThresholdedTrigger
- (BOOL)incrementAndCheckPerformActionForKey:(id)a3;
- (CSThresholdedTrigger)initWithCountThreshold:(int64_t)a3 timeInterval:(double)a4;
@end

@implementation CSThresholdedTrigger

- (CSThresholdedTrigger)initWithCountThreshold:(int64_t)a3 timeInterval:(double)a4
{
  v13.receiver = self;
  v13.super_class = CSThresholdedTrigger;
  v6 = [(CSThresholdedTrigger *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_countThreshold = a3;
    v6->_timeInterval = a4;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    actionCounts = v7->_actionCounts;
    v7->_actionCounts = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastActionDates = v7->_lastActionDates;
    v7->_lastActionDates = v10;
  }

  return v7;
}

- (BOOL)incrementAndCheckPerformActionForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_actionCounts objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSMutableDictionary *)self->_lastActionDates objectForKeyedSubscript:v4];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [(NSMutableDictionary *)self->_lastActionDates objectForKeyedSubscript:v4];

  if (!v10)
  {
    [(NSMutableDictionary *)self->_lastActionDates setObject:v9 forKeyedSubscript:v4];
  }

  if (v7 >= self->_countThreshold || v8 && ([v9 timeIntervalSinceDate:v8], v12 = v11, -[CSThresholdedTrigger timeInterval](self, "timeInterval"), v12 >= v13))
  {
    [(NSMutableDictionary *)self->_actionCounts setObject:0 forKeyedSubscript:v4];
    [(NSMutableDictionary *)self->_lastActionDates setObject:v9 forKeyedSubscript:v4];
    v15 = 1;
  }

  else
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
    [(NSMutableDictionary *)self->_actionCounts setObject:v14 forKeyedSubscript:v4];

    v15 = 0;
  }

  return v15;
}

@end