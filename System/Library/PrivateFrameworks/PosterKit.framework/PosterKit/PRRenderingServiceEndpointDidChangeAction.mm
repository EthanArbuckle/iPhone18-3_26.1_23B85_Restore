@interface PRRenderingServiceEndpointDidChangeAction
- (BSServiceConnectionEndpoint)endpoint;
- (PRRenderingServiceEndpointDidChangeAction)initWithEndpoint:(id)endpoint;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation PRRenderingServiceEndpointDidChangeAction

- (PRRenderingServiceEndpointDidChangeAction)initWithEndpoint:(id)endpoint
{
  v4 = MEMORY[0x1E698E700];
  endpointCopy = endpoint;
  v6 = objc_alloc_init(v4);
  [v6 setObject:endpointCopy forSetting:1];

  v9.receiver = self;
  v9.super_class = PRRenderingServiceEndpointDidChangeAction;
  v7 = [(PRRenderingServiceEndpointDidChangeAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

- (BSServiceConnectionEndpoint)endpoint
{
  info = [(PRRenderingServiceEndpointDidChangeAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"endpoint";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  if (setting == 1)
  {
    v7 = objc_opt_class();
    v8 = objectCopy;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    v10 = [v11 description];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end