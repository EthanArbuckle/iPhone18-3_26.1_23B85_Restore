@interface SWInteraction
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SWInteraction)initWithType:(unint64_t)type;
@end

@implementation SWInteraction

- (SWInteraction)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = SWInteraction;
  result = [(SWInteraction *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      type = [(SWInteraction *)self type];
      v6 = type == [(SWInteraction *)equalCopy type];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)description
{
  if ([(SWInteraction *)self type]== 1)
  {
    v3 = @"interactable";
  }

  else if ([(SWInteraction *)self type]== 2)
  {
    v3 = @"selectable";
  }

  else
  {
    v3 = @"none";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p; type: %@>", objc_opt_class(), self, v3];
}

@end