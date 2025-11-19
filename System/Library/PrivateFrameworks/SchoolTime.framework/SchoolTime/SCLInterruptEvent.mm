@interface SCLInterruptEvent
- (BOOL)isEqual:(id)a3;
- (SCLInterruptEvent)initWithCoder:(id)a3;
- (id)_initWithEvent:(id)a3;
- (id)_initWithType:(unint64_t)a3 urgency:(unint64_t)a4 sender:(id)a5;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCLInterruptEvent

- (id)_initWithEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 type];
    v7 = [v5 urgency];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = [v5 sender];
  v9 = [(SCLInterruptEvent *)self _initWithType:v6 urgency:v7 sender:v8];

  return v9;
}

- (id)_initWithType:(unint64_t)a3 urgency:(unint64_t)a4 sender:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = SCLInterruptEvent;
  v9 = [(SCLInterruptEvent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    v9->_urgency = a4;
    v11 = [v8 copy];
    sender = v10->_sender;
    v10->_sender = v11;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SCLInterruptEvent *)self type];
  v4 = [(SCLInterruptEvent *)self urgency]^ v3;
  v5 = [(SCLInterruptEvent *)self sender];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCLInterruptEvent *)self type];
      if (v6 == [(SCLInterruptEvent *)v5 type]&& (v7 = [(SCLInterruptEvent *)self urgency], v7 == [(SCLInterruptEvent *)v5 urgency]))
      {
        v8 = [(SCLInterruptEvent *)self sender];
        v9 = [(SCLInterruptEvent *)v5 sender];
        if (v8 == v9)
        {
          v12 = 1;
        }

        else
        {
          v10 = [(SCLInterruptEvent *)self sender];
          v11 = [(SCLInterruptEvent *)v5 sender];
          v12 = [v10 isEqual:v11];
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
  v4 = [(SCLInterruptEvent *)self type];
  v5 = @"<unknown>";
  if (v4 <= 2)
  {
    v5 = off_279B6CA70[v4];
  }

  [v3 appendString:v5 withName:@"type"];
  v6 = [(SCLInterruptEvent *)self urgency];
  v7 = @"critical";
  if (v6 != 1)
  {
    v7 = @"<unknown>";
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"default";
  }

  [v3 appendString:v8 withName:@"urgency"];
  v9 = [(SCLInterruptEvent *)self sender];
  v10 = [v3 appendObject:v9 withName:@"sender" skipIfNil:1];

  v11 = [v3 build];

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SCLInterruptEvent alloc];

  return [(SCLInterruptEvent *)v4 _initWithEvent:self];
}

- (SCLInterruptEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeIntegerForKey:@"urgency"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];

  v8 = [(SCLInterruptEvent *)self _initWithType:v5 urgency:v6 sender:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SCLInterruptEvent type](self forKey:{"type"), @"type"}];
  [v4 encodeInteger:-[SCLInterruptEvent urgency](self forKey:{"urgency"), @"urgency"}];
  v5 = [(SCLInterruptEvent *)self sender];
  [v4 encodeObject:v5 forKey:@"sender"];
}

@end