@interface STStatusRequest_MessagesItem
+ (NSSet)allowedKeys;
+ (id)buildRequiredOnlyWithInReplyTo:(id)a3 withStates:(id)a4;
+ (id)buildWithInReplyTo:(id)a3 withStates:(id)a4;
- (BOOL)loadPayload:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayload;
@end

@implementation STStatusRequest_MessagesItem

+ (NSSet)allowedKeys
{
  v5[0] = @"InReplyTo";
  v5[1] = @"States";
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

+ (id)buildWithInReplyTo:(id)a3 withStates:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setInReplyTo:v6];

  [v7 setStates:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithInReplyTo:(id)a3 withStates:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setInReplyTo:v6];

  [v7 setStates:v5];

  return v7;
}

- (BOOL)loadPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 allKeys];
  v8 = [NSMutableSet setWithArray:v7];

  v9 = +[STStatusRequest_MessagesItem allowedKeys];
  [v8 minusSet:v9];

  if ([v8 count])
  {
    if (!a4)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v21 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"Unexpected payload keys: %@", v8];
    v22 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *a4 = [NSError errorWithDomain:@"error" code:1 userInfo:v11];

    v12 = 0;
  }

  else
  {
    v20 = 0;
    v13 = [(STStatusRequest_MessagesItem *)self loadStringFromDictionary:v6 withKey:@"InReplyTo" isRequired:1 defaultValue:0 error:&v20];
    v10 = v20;
    inReplyTo = self->_inReplyTo;
    self->_inReplyTo = v13;

    if (!v10)
    {
      v19 = 0;
      v15 = [(STStatusRequest_MessagesItem *)self loadArrayFromDictionary:v6 withKey:@"States" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 error:&v19];
      v10 = v19;
      states = self->_states;
      self->_states = v15;
    }

    v12 = v10 == 0;
    if (a4 && v10)
    {
      v17 = v10;
      v12 = 0;
      *a4 = v10;
    }
  }

LABEL_11:
  return v12;
}

- (id)serializePayload
{
  v3 = +[NSMutableDictionary dictionary];
  [(STStatusRequest_MessagesItem *)self serializeStringIntoDictionary:v3 withKey:@"InReplyTo" withValue:self->_inReplyTo isRequired:1 defaultValue:0];
  [(STStatusRequest_MessagesItem *)self serializeArrayIntoDictionary:v3 withKey:@"States" withValue:self->_states itemSerializer:&stru_1001A5E80 isRequired:1 defaultValue:0];
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = STStatusRequest_MessagesItem;
  v4 = [(STStatusRequest_MessagesItem *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_inReplyTo copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_states copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end