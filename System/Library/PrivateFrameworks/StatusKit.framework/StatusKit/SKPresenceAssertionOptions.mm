@interface SKPresenceAssertionOptions
- (BOOL)isEqual:(id)a3;
- (SKPresenceAssertionOptions)initWithCoder:(id)a3;
- (SKPresenceAssertionOptions)initWithPriority:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SKPresenceAssertionOptions

- (SKPresenceAssertionOptions)initWithPriority:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SKPresenceAssertionOptions;
  result = [(SKPresenceAssertionOptions *)&v5 init];
  if (result)
  {
    result->_priority = a3;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SKPresenceAssertionOptions *)self priority];

  return [v2 descriptionFromSKUpdatePriority:v3];
}

- (SKPresenceAssertionOptions)initWithCoder:(id)a3
{
  v4 = [a3 decodeInt64ForKey:@"SKPresenceAssertionOptionsPriority"];

  return [(SKPresenceAssertionOptions *)self initWithPriority:v4];
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
      v6 = [(SKPresenceAssertionOptions *)self priority];
      v7 = [(SKPresenceAssertionOptions *)v5 priority];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[SKPresenceAssertionOptions allocWithZone:?]];
  if (result)
  {
    *(result + 1) = self->_priority;
  }

  return result;
}

@end