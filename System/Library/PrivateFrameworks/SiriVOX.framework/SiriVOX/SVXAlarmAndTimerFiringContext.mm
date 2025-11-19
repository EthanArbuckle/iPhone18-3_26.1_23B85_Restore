@interface SVXAlarmAndTimerFiringContext
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXAlarmAndTimerFiringContext)initWithCoder:(id)a3;
- (SVXAlarmAndTimerFiringContext)initWithOrderedFiringAlarms:(id)a3 orderedFiringTimers:(id)a4 hasOtherRunningTimers:(BOOL)a5;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXAlarmAndTimerFiringContext

- (void)encodeWithCoder:(id)a3
{
  orderedFiringAlarms = self->_orderedFiringAlarms;
  v5 = a3;
  [v5 encodeObject:orderedFiringAlarms forKey:@"SVXAlarmAndTimerFiringContext::orderedFiringAlarms"];
  [v5 encodeObject:self->_orderedFiringTimers forKey:@"SVXAlarmAndTimerFiringContext::orderedFiringTimers"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasOtherRunningTimers];
  [v5 encodeObject:v6 forKey:@"SVXAlarmAndTimerFiringContext::hasOtherRunningTimers"];
}

- (SVXAlarmAndTimerFiringContext)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"SVXAlarmAndTimerFiringContext::orderedFiringAlarms"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"SVXAlarmAndTimerFiringContext::orderedFiringTimers"];

  v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAlarmAndTimerFiringContext::hasOtherRunningTimers"];

  v14 = [v13 BOOLValue];
  v15 = [(SVXAlarmAndTimerFiringContext *)self initWithOrderedFiringAlarms:v8 orderedFiringTimers:v12 hasOtherRunningTimers:v14];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      hasOtherRunningTimers = self->_hasOtherRunningTimers;
      if (hasOtherRunningTimers == [(SVXAlarmAndTimerFiringContext *)v5 hasOtherRunningTimers])
      {
        v7 = [(SVXAlarmAndTimerFiringContext *)v5 orderedFiringAlarms];
        orderedFiringAlarms = self->_orderedFiringAlarms;
        if (orderedFiringAlarms == v7 || [(NSOrderedSet *)orderedFiringAlarms isEqual:v7])
        {
          v9 = [(SVXAlarmAndTimerFiringContext *)v5 orderedFiringTimers];
          orderedFiringTimers = self->_orderedFiringTimers;
          v11 = orderedFiringTimers == v9 || [(NSOrderedSet *)orderedFiringTimers isEqual:v9];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (SVXAlarmAndTimerFiringContext)initWithOrderedFiringAlarms:(id)a3 orderedFiringTimers:(id)a4 hasOtherRunningTimers:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = SVXAlarmAndTimerFiringContext;
  v10 = [(SVXAlarmAndTimerFiringContext *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    orderedFiringAlarms = v10->_orderedFiringAlarms;
    v10->_orderedFiringAlarms = v11;

    v13 = [v9 copy];
    orderedFiringTimers = v10->_orderedFiringTimers;
    v10->_orderedFiringTimers = v13;

    v10->_hasOtherRunningTimers = a5;
  }

  return v10;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXAlarmAndTimerFiringContextMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXAlarmAndTimerFiringContextMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXAlarmAndTimerFiringContext *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXAlarmAndTimerFiringContextMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXAlarmAndTimerFiringContextMutation *)v4 generate];

  return v5;
}

@end