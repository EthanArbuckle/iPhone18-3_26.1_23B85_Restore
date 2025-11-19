@interface RWIProtocolRuntimeCallArgument
- (NSString)objectId;
- (RWIProtocolJSONObject)value;
- (void)setObjectId:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation RWIProtocolRuntimeCallArgument

- (void)setValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeCallArgument;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"value"];
}

- (RWIProtocolJSONObject)value
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeCallArgument;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"value"];
  if (v3)
  {
    v4 = [RWIProtocolJSONObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeCallArgument;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"value"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setObjectId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeCallArgument;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"objectId"];
}

- (NSString)objectId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeCallArgument;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"objectId"];

  return v2;
}

@end