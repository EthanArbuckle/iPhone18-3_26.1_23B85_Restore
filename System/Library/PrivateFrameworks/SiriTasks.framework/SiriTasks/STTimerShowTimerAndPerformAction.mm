@interface STTimerShowTimerAndPerformAction
- (STTimerShowTimerAndPerformAction)initWithCoder:(id)coder;
- (id)_initWithTimer:(id)timer action:(unint64_t)action;
- (id)_initWithTimers:(id)timers templateActions:(id)actions timerAction:(unint64_t)action;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STTimerShowTimerAndPerformAction

- (STTimerShowTimerAndPerformAction)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = STTimerShowTimerAndPerformAction;
  v5 = [(AFSiriRequest *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_timers"];
    timers = v5->_timers;
    v5->_timers = v9;

    v11 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_templateActions"];
    templateActions = v5->_templateActions;
    v5->_templateActions = v14;

    v5->_action = [coderCopy decodeIntegerForKey:@"_action"];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STTimerShowTimerAndPerformAction;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_timers forKey:{@"_timers", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_templateActions forKey:@"_templateActions"];
  [coderCopy encodeInteger:self->_action forKey:@"_action"];
}

- (id)_initWithTimers:(id)timers templateActions:(id)actions timerAction:(unint64_t)action
{
  timersCopy = timers;
  actionsCopy = actions;
  v16.receiver = self;
  v16.super_class = STTimerShowTimerAndPerformAction;
  v10 = [(AFSiriRequest *)&v16 init];
  if (v10)
  {
    v11 = [timersCopy copy];
    timers = v10->_timers;
    v10->_timers = v11;

    v13 = [actionsCopy copy];
    templateActions = v10->_templateActions;
    v10->_templateActions = v13;

    v10->_action = action;
  }

  return v10;
}

- (id)_initWithTimer:(id)timer action:(unint64_t)action
{
  timerCopy = timer;
  v11.receiver = self;
  v11.super_class = STTimerShowTimerAndPerformAction;
  v7 = [(AFSiriRequest *)&v11 init];
  if (v7)
  {
    if (timerCopy)
    {
      v8 = [MEMORY[0x277CBEA60] arrayWithObject:timerCopy];
      timers = v7->_timers;
      v7->_timers = v8;
    }

    v7->_action = action;
  }

  return v7;
}

@end