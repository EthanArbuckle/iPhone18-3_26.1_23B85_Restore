@interface SWEmbedAction
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SWEmbedAction)initWithType:(unint64_t)a3 info:(id)a4;
@end

@implementation SWEmbedAction

- (SWEmbedAction)initWithType:(unint64_t)a3 info:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SWEmbedAction;
  v8 = [(SWEmbedAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_info, a4);
  }

  return v9;
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
      v5 = [(SWEmbedAction *)self type];
      v6 = v5 == [(SWEmbedAction *)v4 type];
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
  if ([(SWEmbedAction *)self type]== 1)
  {
    v3 = @"url";
  }

  else if ([(SWEmbedAction *)self type]== 2)
  {
    v3 = @"share";
  }

  else if ([(SWEmbedAction *)self type]== 3)
  {
    v3 = @"close";
  }

  else
  {
    v3 = @"none";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p; type: %@>", objc_opt_class(), self, v3];
}

@end