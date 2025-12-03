@interface SCLInterruptEventBehavior
- (BOOL)isEqual:(id)equal;
- (SCLInterruptEventBehavior)initWithCoder:(id)coder;
- (SCLInterruptEventBehavior)initWithEvent:(id)event interruptEligibility:(unint64_t)eligibility;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLInterruptEventBehavior

- (SCLInterruptEventBehavior)initWithEvent:(id)event interruptEligibility:(unint64_t)eligibility
{
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SCLInterruptEventBehavior;
  v7 = [(SCLInterruptEventBehavior *)&v11 init];
  if (v7)
  {
    v8 = [eventCopy copy];
    event = v7->_event;
    v7->_event = v8;

    v7->_eligibility = eligibility;
  }

  return v7;
}

- (unint64_t)hash
{
  event = [(SCLInterruptEventBehavior *)self event];
  v4 = [event hash];
  eligibility = [(SCLInterruptEventBehavior *)self eligibility];

  return eligibility ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      event = [(SCLInterruptEventBehavior *)self event];
      event2 = [(SCLInterruptEventBehavior *)v5 event];
      if ([event isEqual:event2])
      {
        eligibility = [(SCLInterruptEventBehavior *)self eligibility];
        v9 = eligibility == [(SCLInterruptEventBehavior *)v5 eligibility];
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
  event = [(SCLInterruptEventBehavior *)self event];
  v5 = [v3 appendObject:event withName:@"event" skipIfNil:1];

  eligibility = [(SCLInterruptEventBehavior *)self eligibility];
  v7 = @"<unknown>";
  if (eligibility == 1)
  {
    v7 = @"eligible";
  }

  if (eligibility)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"none";
  }

  [v3 appendString:v8 withName:@"eligibleToInterrupt"];
  build = [v3 build];

  return build;
}

- (SCLInterruptEventBehavior)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
  v6 = [coderCopy decodeIntegerForKey:@"interruptEligible"];

  v7 = [(SCLInterruptEventBehavior *)self initWithEvent:v5 interruptEligibility:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  event = [(SCLInterruptEventBehavior *)self event];
  [coderCopy encodeObject:event forKey:@"event"];

  [coderCopy encodeInteger:-[SCLInterruptEventBehavior eligibility](self forKey:{"eligibility"), @"interruptEligible"}];
}

@end