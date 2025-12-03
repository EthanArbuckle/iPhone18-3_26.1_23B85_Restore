@interface SCLInterruptEvent
- (BOOL)isEqual:(id)equal;
- (SCLInterruptEvent)initWithCoder:(id)coder;
- (id)_initWithEvent:(id)event;
- (id)_initWithType:(unint64_t)type urgency:(unint64_t)urgency sender:(id)sender;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLInterruptEvent

- (id)_initWithEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    type = [eventCopy type];
    urgency = [v5 urgency];
  }

  else
  {
    type = 0;
    urgency = 0;
  }

  sender = [v5 sender];
  v9 = [(SCLInterruptEvent *)self _initWithType:type urgency:urgency sender:sender];

  return v9;
}

- (id)_initWithType:(unint64_t)type urgency:(unint64_t)urgency sender:(id)sender
{
  senderCopy = sender;
  v14.receiver = self;
  v14.super_class = SCLInterruptEvent;
  v9 = [(SCLInterruptEvent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    v9->_urgency = urgency;
    v11 = [senderCopy copy];
    sender = v10->_sender;
    v10->_sender = v11;
  }

  return v10;
}

- (unint64_t)hash
{
  type = [(SCLInterruptEvent *)self type];
  v4 = [(SCLInterruptEvent *)self urgency]^ type;
  sender = [(SCLInterruptEvent *)self sender];
  v6 = [sender hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(SCLInterruptEvent *)self type];
      if (type == [(SCLInterruptEvent *)v5 type]&& (v7 = [(SCLInterruptEvent *)self urgency], v7 == [(SCLInterruptEvent *)v5 urgency]))
      {
        sender = [(SCLInterruptEvent *)self sender];
        sender2 = [(SCLInterruptEvent *)v5 sender];
        if (sender == sender2)
        {
          v12 = 1;
        }

        else
        {
          sender3 = [(SCLInterruptEvent *)self sender];
          sender4 = [(SCLInterruptEvent *)v5 sender];
          v12 = [sender3 isEqual:sender4];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  type = [(SCLInterruptEvent *)self type];
  v5 = @"<unknown>";
  if (type <= 2)
  {
    v5 = off_279B6CA70[type];
  }

  [v3 appendString:v5 withName:@"type"];
  urgency = [(SCLInterruptEvent *)self urgency];
  v7 = @"critical";
  if (urgency != 1)
  {
    v7 = @"<unknown>";
  }

  if (urgency)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"default";
  }

  [v3 appendString:v8 withName:@"urgency"];
  sender = [(SCLInterruptEvent *)self sender];
  v10 = [v3 appendObject:sender withName:@"sender" skipIfNil:1];

  build = [v3 build];

  return build;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SCLInterruptEvent alloc];

  return [(SCLInterruptEvent *)v4 _initWithEvent:self];
}

- (SCLInterruptEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeIntegerForKey:@"urgency"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];

  v8 = [(SCLInterruptEvent *)self _initWithType:v5 urgency:v6 sender:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SCLInterruptEvent type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[SCLInterruptEvent urgency](self forKey:{"urgency"), @"urgency"}];
  sender = [(SCLInterruptEvent *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];
}

@end