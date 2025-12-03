@interface STTransportRequestPayload
+ (id)_mappedMessagesFromMessages:(id)messages error:(id *)error;
+ (id)eventsPayloadWithMessages:(id)messages error:(id *)error;
+ (id)statusPayloadWithMessages:(id)messages error:(id *)error;
- (NSString)payloadType;
- (STTransportRequestPayload)initWithCoder:(id)coder;
- (STTransportRequestPayload)initWithRequest:(id)request UUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deviceManagementRequestForOrganizationID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STTransportRequestPayload

- (STTransportRequestPayload)initWithRequest:(id)request UUID:(id)d
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = STTransportRequestPayload;
  v8 = [(STTransportPayload *)&v11 initWithUUID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingPayload, request);
  }

  return v9;
}

+ (id)statusPayloadWithMessages:(id)messages error:(id *)error
{
  v13 = 0;
  v5 = [self _mappedMessagesFromMessages:messages error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = STGetDeviceUUID();
    v8 = [STStatusRequest requestWithUDID:v7 withUserShortName:0 withMessages:v5];

    v9 = [[STTransportRequestPayload alloc] initWithRequest:v8];
  }

  else
  {
    v10 = +[STLog payload];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001208F0(v6, v10);
    }

    if (error)
    {
      v11 = v6;
      v9 = 0;
      *error = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)eventsPayloadWithMessages:(id)messages error:(id *)error
{
  v13 = 0;
  v5 = [self _mappedMessagesFromMessages:messages error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = STGetDeviceUUID();
    v8 = [STEventRequest requestWithUDID:v7 withUserShortName:0 withMessages:v5];

    v9 = [[STTransportRequestPayload alloc] initWithRequest:v8];
  }

  else
  {
    v10 = +[STLog payload];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001208F0(v6, v10);
    }

    if (error)
    {
      v11 = v6;
      v9 = 0;
      *error = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSString)payloadType
{
  underlyingPayload = [(STTransportRequestPayload *)self underlyingPayload];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = @"Status";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = @"Events";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = @"Set";
      }

      else
      {
        v3 = @"Unknown";
      }
    }
  }

  return &v3->isa;
}

- (id)deviceManagementRequestForOrganizationID:(id)d
{
  dCopy = d;
  underlyingPayload = [(STTransportRequestPayload *)self underlyingPayload];

  if (!underlyingPayload)
  {
    v6 = +[STLog payload];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100120968(v6);
    }
  }

  underlyingPayload2 = [(STTransportRequestPayload *)self underlyingPayload];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_12;
  }

  underlyingPayload3 = [(STTransportRequestPayload *)self underlyingPayload];
  v10 = objc_opt_new();
  declarations = [underlyingPayload3 declarations];
  v12 = declarations;
  v13 = declarations ? declarations : &__NSArray0__struct;
  [v10 setDeclarations:v13];

  [v10 setOrganizationIdentifier:dCopy];
  v14 = objc_opt_new();
  uUIDString = [v14 UUIDString];
  [v10 setSyncToken:uUIDString];

  if (v10)
  {
    v16 = +[STLog payload];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v17 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Created request %{public}@", &v19, 0xCu);
    }
  }

  else
  {
LABEL_12:
    v16 = +[STLog payload];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1001209AC(self, v16);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)_mappedMessagesFromMessages:(id)messages error:(id *)error
{
  messagesCopy = messages;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [messagesCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = messagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [STStatusRequest_MessagesItem load:*(*(&v16 + 1) + 8 * i) error:error, v16];
        if (!v12)
        {

          v14 = 0;
          goto LABEL_11;
        }

        v13 = v12;
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v6 copy];
LABEL_11:

  return v14;
}

- (STTransportRequestPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STTransportRequestPayload;
  v5 = [(STTransportPayload *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"underlyingPayload"];
    underlyingPayload = v5->_underlyingPayload;
    v5->_underlyingPayload = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STTransportRequestPayload;
  coderCopy = coder;
  [(STTransportPayload *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_underlyingPayload forKey:{@"underlyingPayload", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  underlyingPayload = [(STTransportRequestPayload *)self underlyingPayload];
  uUID = [(STTransportPayload *)self UUID];
  v7 = [v4 initWithRequest:underlyingPayload UUID:uUID];

  return v7;
}

@end