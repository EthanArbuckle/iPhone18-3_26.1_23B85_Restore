@interface SWEmbedAction
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SWEmbedAction)initWithType:(unint64_t)type info:(id)info;
@end

@implementation SWEmbedAction

- (SWEmbedAction)initWithType:(unint64_t)type info:(id)info
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = SWEmbedAction;
  v8 = [(SWEmbedAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_info, info);
  }

  return v9;
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
      type = [(SWEmbedAction *)self type];
      v6 = type == [(SWEmbedAction *)equalCopy type];
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