@interface STEventRequest_MessagesItem
+ (NSSet)allowedKeys;
+ (id)buildRequiredOnlyWithInReplyTo:(id)to withEventType:(id)type withTimestamp:(id)timestamp;
+ (id)buildWithInReplyTo:(id)to withEventType:(id)type withTimestamp:(id)timestamp withPayload:(id)payload;
- (BOOL)loadPayload:(id)payload error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayload;
@end

@implementation STEventRequest_MessagesItem

+ (NSSet)allowedKeys
{
  v5[0] = @"InReplyTo";
  v5[1] = @"EventType";
  v5[2] = @"Timestamp";
  v5[3] = @"Payload";
  v2 = [NSArray arrayWithObjects:v5 count:4];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

+ (id)buildWithInReplyTo:(id)to withEventType:(id)type withTimestamp:(id)timestamp withPayload:(id)payload
{
  payloadCopy = payload;
  timestampCopy = timestamp;
  typeCopy = type;
  toCopy = to;
  v13 = objc_opt_new();
  [v13 setInReplyTo:toCopy];

  [v13 setEventType:typeCopy];
  [v13 setTimestamp:timestampCopy];

  [v13 setPayload:payloadCopy];

  return v13;
}

+ (id)buildRequiredOnlyWithInReplyTo:(id)to withEventType:(id)type withTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  typeCopy = type;
  toCopy = to;
  v10 = objc_opt_new();
  [v10 setInReplyTo:toCopy];

  [v10 setEventType:typeCopy];
  [v10 setTimestamp:timestampCopy];

  return v10;
}

- (BOOL)loadPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  allKeys = [payloadCopy allKeys];
  v8 = [NSMutableSet setWithArray:allKeys];

  v9 = +[STEventRequest_MessagesItem allowedKeys];
  [v8 minusSet:v9];

  if ([v8 count])
  {
    if (!error)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v27 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"Unexpected payload keys: %@", v8];
    v28 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *error = [NSError errorWithDomain:@"error" code:1 userInfo:v11];

    v12 = 0;
  }

  else
  {
    v26 = 0;
    v13 = [(STEventRequest_MessagesItem *)self loadStringFromDictionary:payloadCopy withKey:@"InReplyTo" isRequired:1 defaultValue:0 error:&v26];
    v10 = v26;
    inReplyTo = self->_inReplyTo;
    self->_inReplyTo = v13;

    if (!v10)
    {
      v25 = 0;
      v15 = [(STEventRequest_MessagesItem *)self loadStringFromDictionary:payloadCopy withKey:@"EventType" isRequired:1 defaultValue:0 error:&v25];
      v10 = v25;
      eventType = self->_eventType;
      self->_eventType = v15;

      if (!v10)
      {
        v24 = 0;
        v17 = [(STEventRequest_MessagesItem *)self loadDateFromDictionary:payloadCopy withKey:@"Timestamp" isRequired:1 defaultValue:0 error:&v24];
        v10 = v24;
        timestamp = self->_timestamp;
        self->_timestamp = v17;

        if (!v10)
        {
          v23 = 0;
          v19 = [(STEventRequest_MessagesItem *)self loadDictionaryFromDictionary:payloadCopy withKey:@"Payload" classType:objc_opt_class() isRequired:0 defaultValue:0 error:&v23];
          v10 = v23;
          payload = self->_payload;
          self->_payload = v19;
        }
      }
    }

    v12 = v10 == 0;
    if (error && v10)
    {
      v21 = v10;
      v12 = 0;
      *error = v10;
    }
  }

LABEL_13:
  return v12;
}

- (id)serializePayload
{
  v3 = +[NSMutableDictionary dictionary];
  [(STEventRequest_MessagesItem *)self serializeStringIntoDictionary:v3 withKey:@"InReplyTo" withValue:self->_inReplyTo isRequired:1 defaultValue:0];
  [(STEventRequest_MessagesItem *)self serializeStringIntoDictionary:v3 withKey:@"EventType" withValue:self->_eventType isRequired:1 defaultValue:0];
  [(STEventRequest_MessagesItem *)self serializeDateIntoDictionary:v3 withKey:@"Timestamp" withValue:self->_timestamp isRequired:1 defaultValue:0];
  [(STEventRequest_MessagesItem *)self serializeDictionaryIntoDictionary:v3 withKey:@"Payload" withValue:self->_payload dictSerializer:&stru_1001A3C70 isRequired:0 defaultValue:0];
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = STEventRequest_MessagesItem;
  v4 = [(STEventRequest_MessagesItem *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_inReplyTo copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_eventType copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSDate *)self->_timestamp copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(CEMAnyPayload *)self->_payload copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end