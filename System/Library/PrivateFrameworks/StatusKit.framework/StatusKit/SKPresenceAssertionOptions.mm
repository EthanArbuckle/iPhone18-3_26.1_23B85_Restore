@interface SKPresenceAssertionOptions
- (BOOL)isEqual:(id)equal;
- (SKPresenceAssertionOptions)initWithCoder:(id)coder;
- (SKPresenceAssertionOptions)initWithPriority:(int64_t)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SKPresenceAssertionOptions

- (SKPresenceAssertionOptions)initWithPriority:(int64_t)priority
{
  v5.receiver = self;
  v5.super_class = SKPresenceAssertionOptions;
  result = [(SKPresenceAssertionOptions *)&v5 init];
  if (result)
  {
    result->_priority = priority;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  priority = [(SKPresenceAssertionOptions *)self priority];

  return [v2 descriptionFromSKUpdatePriority:priority];
}

- (SKPresenceAssertionOptions)initWithCoder:(id)coder
{
  v4 = [coder decodeInt64ForKey:@"SKPresenceAssertionOptionsPriority"];

  return [(SKPresenceAssertionOptions *)self initWithPriority:v4];
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
      priority = [(SKPresenceAssertionOptions *)self priority];
      priority2 = [(SKPresenceAssertionOptions *)v5 priority];

      v8 = priority == priority2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[SKPresenceAssertionOptions allocWithZone:?]];
  if (result)
  {
    *(result + 1) = self->_priority;
  }

  return result;
}

@end