@interface SVXButtonEvent
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXButtonEvent)initWithCoder:(id)coder;
- (SVXButtonEvent)initWithType:(int64_t)type timestamp:(unint64_t)timestamp;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXButtonEvent

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:type];
  [coderCopy encodeObject:v7 forKey:@"SVXButtonEvent::type"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [coderCopy encodeObject:v8 forKey:@"SVXButtonEvent::timestamp"];
}

- (SVXButtonEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXButtonEvent::type"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXButtonEvent::timestamp"];

  unsignedLongLongValue = [v7 unsignedLongLongValue];

  return [(SVXButtonEvent *)self initWithType:integerValue timestamp:unsignedLongLongValue];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SVXButtonEvent)initWithType:(int64_t)type timestamp:(unint64_t)timestamp
{
  v7.receiver = self;
  v7.super_class = SVXButtonEvent;
  result = [(SVXButtonEvent *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_timestamp = timestamp;
  }

  return result;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXButtonEventMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXButtonEventMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXButtonEvent *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXButtonEventMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXButtonEventMutation *)v4 generate];

  return generate;
}

@end