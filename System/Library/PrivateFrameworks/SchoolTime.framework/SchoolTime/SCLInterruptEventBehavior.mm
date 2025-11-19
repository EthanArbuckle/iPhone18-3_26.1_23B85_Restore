@interface SCLInterruptEventBehavior
- (BOOL)isEqual:(id)a3;
- (SCLInterruptEventBehavior)initWithCoder:(id)a3;
- (SCLInterruptEventBehavior)initWithEvent:(id)a3 interruptEligibility:(unint64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCLInterruptEventBehavior

- (SCLInterruptEventBehavior)initWithEvent:(id)a3 interruptEligibility:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SCLInterruptEventBehavior;
  v7 = [(SCLInterruptEventBehavior *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    event = v7->_event;
    v7->_event = v8;

    v7->_eligibility = a4;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(SCLInterruptEventBehavior *)self event];
  v4 = [v3 hash];
  v5 = [(SCLInterruptEventBehavior *)self eligibility];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCLInterruptEventBehavior *)self event];
      v7 = [(SCLInterruptEventBehavior *)v5 event];
      if ([v6 isEqual:v7])
      {
        v8 = [(SCLInterruptEventBehavior *)self eligibility];
        v9 = v8 == [(SCLInterruptEventBehavior *)v5 eligibility];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SCLInterruptEventBehavior *)self event];
  v5 = [v3 appendObject:v4 withName:@"event" skipIfNil:1];

  v6 = [(SCLInterruptEventBehavior *)self eligibility];
  v7 = @"<unknown>";
  if (v6 == 1)
  {
    v7 = @"eligible";
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"none";
  }

  [v3 appendString:v8 withName:@"eligibleToInterrupt"];
  v9 = [v3 build];

  return v9;
}

- (SCLInterruptEventBehavior)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
  v6 = [v4 decodeIntegerForKey:@"interruptEligible"];

  v7 = [(SCLInterruptEventBehavior *)self initWithEvent:v5 interruptEligibility:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(SCLInterruptEventBehavior *)self event];
  [v5 encodeObject:v4 forKey:@"event"];

  [v5 encodeInteger:-[SCLInterruptEventBehavior eligibility](self forKey:{"eligibility"), @"interruptEligible"}];
}

@end