@interface SWInteraction
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SWInteraction)initWithType:(unint64_t)a3;
@end

@implementation SWInteraction

- (SWInteraction)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SWInteraction;
  result = [(SWInteraction *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SWInteraction *)self type];
      v6 = v5 == [(SWInteraction *)v4 type];
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