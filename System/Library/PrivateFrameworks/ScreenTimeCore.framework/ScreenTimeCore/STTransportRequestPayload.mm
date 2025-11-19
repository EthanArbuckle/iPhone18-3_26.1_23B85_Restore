@interface STTransportRequestPayload
+ (id)_mappedMessagesFromMessages:(id)a3 error:(id *)a4;
+ (id)eventsPayloadWithMessages:(id)a3 error:(id *)a4;
+ (id)statusPayloadWithMessages:(id)a3 error:(id *)a4;
- (NSString)payloadType;
- (STTransportRequestPayload)initWithCoder:(id)a3;
- (STTransportRequestPayload)initWithRequest:(id)a3 UUID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deviceManagementRequestForOrganizationID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STTransportRequestPayload

- (STTransportRequestPayload)initWithRequest:(id)a3 UUID:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = STTransportRequestPayload;
  v8 = [(STTransportPayload *)&v11 initWithUUID:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingPayload, a3);
  }

  return v9;
}

+ (id)statusPayloadWithMessages:(id)a3 error:(id *)a4
{
  v13 = 0;
  v5 = [a1 _mappedMessagesFromMessages:a3 error:&v13];
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

    if (a4)
    {
      v11 = v6;
      v9 = 0;
      *a4 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)eventsPayloadWithMessages:(id)a3 error:(id *)a4
{
  v13 = 0;
  v5 = [a1 _mappedMessagesFromMessages:a3 error:&v13];
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

    if (a4)
    {
      v11 = v6;
      v9 = 0;
      *a4 = v6;
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
  v2 = [(STTransportRequestPayload *)self underlyingPayload];
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

- (id)deviceManagementRequestForOrganizationID:(id)a3
{
  v4 = a3;
  v5 = [(STTransportRequestPayload *)self underlyingPayload];

  if (!v5)
  {
    v6 = +[STLog payload];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100120968(v6);
    }
  }

  v7 = [(STTransportRequestPayload *)self underlyingPayload];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = [(STTransportRequestPayload *)self underlyingPayload];
  v10 = objc_opt_new();
  v11 = [v9 declarations];
  v12 = v11;
  v13 = v11 ? v11 : &__NSArray0__struct;
  [v10 setDeclarations:v13];

  [v10 setOrganizationIdentifier:v4];
  v14 = objc_opt_new();
  v15 = [v14 UUIDString];
  [v10 setSyncToken:v15];

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

+ (id)_mappedMessagesFromMessages:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
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

        v12 = [STStatusRequest_MessagesItem load:*(*(&v16 + 1) + 8 * i) error:a4, v16];
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

- (STTransportRequestPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STTransportRequestPayload;
  v5 = [(STTransportPayload *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"underlyingPayload"];
    underlyingPayload = v5->_underlyingPayload;
    v5->_underlyingPayload = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STTransportRequestPayload;
  v4 = a3;
  [(STTransportPayload *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_underlyingPayload forKey:{@"underlyingPayload", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(STTransportRequestPayload *)self underlyingPayload];
  v6 = [(STTransportPayload *)self UUID];
  v7 = [v4 initWithRequest:v5 UUID:v6];

  return v7;
}

@end