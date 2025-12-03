@interface SVXAlarmAndTimerFiringContext
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXAlarmAndTimerFiringContext)initWithCoder:(id)coder;
- (SVXAlarmAndTimerFiringContext)initWithOrderedFiringAlarms:(id)alarms orderedFiringTimers:(id)timers hasOtherRunningTimers:(BOOL)runningTimers;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXAlarmAndTimerFiringContext

- (void)encodeWithCoder:(id)coder
{
  orderedFiringAlarms = self->_orderedFiringAlarms;
  coderCopy = coder;
  [coderCopy encodeObject:orderedFiringAlarms forKey:@"SVXAlarmAndTimerFiringContext::orderedFiringAlarms"];
  [coderCopy encodeObject:self->_orderedFiringTimers forKey:@"SVXAlarmAndTimerFiringContext::orderedFiringTimers"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasOtherRunningTimers];
  [coderCopy encodeObject:v6 forKey:@"SVXAlarmAndTimerFiringContext::hasOtherRunningTimers"];
}

- (SVXAlarmAndTimerFiringContext)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"SVXAlarmAndTimerFiringContext::orderedFiringAlarms"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"SVXAlarmAndTimerFiringContext::orderedFiringTimers"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAlarmAndTimerFiringContext::hasOtherRunningTimers"];

  bOOLValue = [v13 BOOLValue];
  v15 = [(SVXAlarmAndTimerFiringContext *)self initWithOrderedFiringAlarms:v8 orderedFiringTimers:v12 hasOtherRunningTimers:bOOLValue];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      hasOtherRunningTimers = self->_hasOtherRunningTimers;
      if (hasOtherRunningTimers == [(SVXAlarmAndTimerFiringContext *)v5 hasOtherRunningTimers])
      {
        orderedFiringAlarms = [(SVXAlarmAndTimerFiringContext *)v5 orderedFiringAlarms];
        orderedFiringAlarms = self->_orderedFiringAlarms;
        if (orderedFiringAlarms == orderedFiringAlarms || [(NSOrderedSet *)orderedFiringAlarms isEqual:orderedFiringAlarms])
        {
          orderedFiringTimers = [(SVXAlarmAndTimerFiringContext *)v5 orderedFiringTimers];
          orderedFiringTimers = self->_orderedFiringTimers;
          v11 = orderedFiringTimers == orderedFiringTimers || [(NSOrderedSet *)orderedFiringTimers isEqual:orderedFiringTimers];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSOrderedSet *)self->_orderedFiringAlarms hash];
  v4 = [(NSOrderedSet *)self->_orderedFiringTimers hash]^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasOtherRunningTimers];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v10.receiver = self;
  v10.super_class = SVXAlarmAndTimerFiringContext;
  v5 = [(SVXAlarmAndTimerFiringContext *)&v10 description];
  v6 = v5;
  if (self->_hasOtherRunningTimers)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v4 initWithFormat:@"%@ {orderedFiringAlarms = %@, orderedFiringTimers = %@, hasOtherRunningTimers = %@}", v5, self->_orderedFiringAlarms, self->_orderedFiringTimers, v7];

  return v8;
}

- (SVXAlarmAndTimerFiringContext)initWithOrderedFiringAlarms:(id)alarms orderedFiringTimers:(id)timers hasOtherRunningTimers:(BOOL)runningTimers
{
  alarmsCopy = alarms;
  timersCopy = timers;
  v16.receiver = self;
  v16.super_class = SVXAlarmAndTimerFiringContext;
  v10 = [(SVXAlarmAndTimerFiringContext *)&v16 init];
  if (v10)
  {
    v11 = [alarmsCopy copy];
    orderedFiringAlarms = v10->_orderedFiringAlarms;
    v10->_orderedFiringAlarms = v11;

    v13 = [timersCopy copy];
    orderedFiringTimers = v10->_orderedFiringTimers;
    v10->_orderedFiringTimers = v13;

    v10->_hasOtherRunningTimers = runningTimers;
  }

  return v10;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXAlarmAndTimerFiringContextMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXAlarmAndTimerFiringContextMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXAlarmAndTimerFiringContext *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXAlarmAndTimerFiringContextMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXAlarmAndTimerFiringContextMutation *)v4 generate];

  return generate;
}

@end