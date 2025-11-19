@interface PRRenderingServiceEndpointDidChangeAction
- (BSServiceConnectionEndpoint)endpoint;
- (PRRenderingServiceEndpointDidChangeAction)initWithEndpoint:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
@end

@implementation PRRenderingServiceEndpointDidChangeAction

- (PRRenderingServiceEndpointDidChangeAction)initWithEndpoint:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:1];

  v9.receiver = self;
  v9.super_class = PRRenderingServiceEndpointDidChangeAction;
  v7 = [(PRRenderingServiceEndpointDidChangeAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

- (BSServiceConnectionEndpoint)endpoint
{
  v2 = [(PRRenderingServiceEndpointDidChangeAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"endpoint";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v6 = a4;
  if (a5 == 1)
  {
    v7 = objc_opt_class();
    v8 = v6;
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