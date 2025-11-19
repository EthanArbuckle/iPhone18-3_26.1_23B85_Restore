@interface SVXButtonEvent
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXButtonEvent)initWithCoder:(id)a3;
- (SVXButtonEvent)initWithType:(int64_t)a3 timestamp:(unint64_t)a4;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXButtonEvent

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  v6 = a3;
  v7 = [v4 numberWithInteger:type];
  [v6 encodeObject:v7 forKey:@"SVXButtonEvent::type"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [v6 encodeObject:v8 forKey:@"SVXButtonEvent::timestamp"];
}

- (SVXButtonEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXButtonEvent::type"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXButtonEvent::timestamp"];

  v8 = [v7 unsignedLongLongValue];

  return [(SVXButtonEvent *)self initWithType:v6 timestamp:v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      type = self->_type;
      if (type == [(SVXButtonEvent *)v5 type])
      {
        timestamp = self->_timestamp;
        v8 = timestamp == [(SVXButtonEvent *)v5 timestamp];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = SVXButtonEvent;
  v5 = [(SVXButtonEvent *)&v11 description];
  type = self->_type;
  if (type > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C68050[type];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {type = %@, timestamp = %llu}", v5, v8, self->_timestamp];

  return v9;
}

- (SVXButtonEvent)initWithType:(int64_t)a3 timestamp:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SVXButtonEvent;
  result = [(SVXButtonEvent *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_timestamp = a4;
  }

  return result;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXButtonEventMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXButtonEventMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXButtonEvent *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXButtonEventMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXButtonEventMutation *)v4 generate];

  return v5;
}

@end