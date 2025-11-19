@interface UserActivityToBTLEPayload
- (NSDictionary)additionalItems;
- (UserActivityToBTLEPayload)initWithData:(id)a3;
- (UserActivityToBTLEPayload)initWithNSError:(id)a3;
- (id)description;
- (id)encodeAsData;
- (id)init:(id)a3 title:(id)a4 date:(id)a5 userInfoPayload:(id)a6 teamID:(id)a7 activityType:(id)a8;
- (void)addAdditionalItem:(id)a3 forKey:(id)a4;
@end

@implementation UserActivityToBTLEPayload

- (id)init:(id)a3 title:(id)a4 date:(id)a5 userInfoPayload:(id)a6 teamID:(id)a7 activityType:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v36.receiver = self;
  v36.super_class = UserActivityToBTLEPayload;
  v20 = [(UserActivityToBTLEPayload *)&v36 init];
  if (v20)
  {
    v21 = [v15 copy];
    title = v20->_title;
    v20->_title = v21;

    v23 = [v14 copy];
    uniqueIdentifier = v20->_uniqueIdentifier;
    v20->_uniqueIdentifier = v23;

    v25 = [v16 copy];
    when = v20->_when;
    v20->_when = v25;

    v27 = [v17 copy];
    userInfoPayload = v20->_userInfoPayload;
    v20->_userInfoPayload = v27;

    webpageURL = v20->_webpageURL;
    v20->_webpageURL = 0;

    streamsData = v20->_streamsData;
    v20->_streamsData = 0;

    if (v18 && [(__CFString *)v18 isEqual:@"0000000000"])
    {

      v18 = &stru_1000C67D0;
    }

    v31 = [(__CFString *)v18 copy];
    teamID = v20->_teamID;
    v20->_teamID = v31;

    v33 = [v19 copy];
    activityType = v20->_activityType;
    v20->_activityType = v33;
  }

  return v20;
}

- (UserActivityToBTLEPayload)initWithNSError:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UserActivityToBTLEPayload;
  v5 = [(UserActivityToBTLEPayload *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UserActivityToBTLEPayload *)v5 setError:v4];
  }

  return v6;
}

- (NSDictionary)additionalItems
{
  v2 = [(NSMutableDictionary *)self->_additionalItems copy];

  return v2;
}

- (void)addAdditionalItem:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v15 = v6;
  v7 = a4;
  v14 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = self;
    objc_sync_enter(v9);
    additionalItems = v9->_additionalItems;
    if (additionalItems)
    {
      v11 = 1;
    }

    else
    {
      v11 = v6 == 0;
    }

    if (v11)
    {
      if (v6)
      {
        [(NSMutableDictionary *)additionalItems setValue:v6 forKey:v8, v14, v15];
      }

      else
      {
        [(NSMutableDictionary *)additionalItems removeObjectForKey:v8, v14, v15];
      }
    }

    else
    {
      v12 = [[NSMutableDictionary alloc] initWithObjects:&v15 forKeys:&v14 count:1];
      v13 = v9->_additionalItems;
      v9->_additionalItems = v12;
    }

    objc_sync_exit(v9);
  }
}

- (UserActivityToBTLEPayload)initWithData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length] >= 4)
  {
    v6 = *[v5 bytes];
    v43 = 4;
    v7 = v6 & 0xF;
    if ((v6 & 0xF) == 0xF)
    {
      v13 = sub_10004841C(v5, &v43);
      v14 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v13 error:0];
      v15 = [v14 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      [v14 finishDecoding];
      if (!v15)
      {
        v20 = sub_100001A30(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "*** ERROR: Received BTLEUserActivity error packet, but unable to de-archive it, so discarding it.", buf, 2u);
        }

        v5 = 0;
        v12 = 0;
        v11 = self;
        goto LABEL_43;
      }

      v11 = 0;
      v39 = 0;
      obj = 0;
      v16 = 0;
      v17 = 0;
      v18 = v14;
      v10 = v13;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      if (v7 != 1)
      {
        v14 = sub_100001A30(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v45 = v7;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "*** ERROR: Received BTLEUserActivity packet with unknown version, %ld, so discarding it.", buf, 0xCu);
        }

        v12 = 0;
        v13 = v5;
        v11 = self;
        v5 = 0;
        goto LABEL_43;
      }

      if ((v6 & 0x100) != 0)
      {
        v8 = sub_100048254(v5);

        v5 = v8;
        if (!v8)
        {
          v12 = 0;
          goto LABEL_44;
        }
      }

      v9 = sub_10004841C(v5, &v43);
      v10 = v9;
      if (v9 && [v9 length])
      {
        v11 = [[NSString alloc] initWithData:v10 encoding:4];
      }

      else
      {
        v11 = 0;
      }

      v13 = sub_10004841C(v5, &v43);
      v18 = sub_10004841C(v5, &v43);
      if (v18)
      {
        v19 = [NSJSONSerialization JSONObjectWithData:v18 options:0 error:0];
        if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v16 = [v19 objectForKey:@"teamID"];
          v17 = [v19 objectForKey:@"type"];
          v39 = [NSMutableDictionary dictionaryWithDictionary:v19];
        }

        else
        {
          v39 = 0;
          v17 = 0;
          v16 = 0;
        }
      }

      else
      {
        v39 = 0;
        v17 = 0;
        v16 = 0;
      }

      v21 = sub_10004841C(v5, &v43);
      v22 = v21;
      if (v21 && [v21 length])
      {
        obja = v17;
        v23 = [[NSString alloc] initWithData:v22 encoding:4];
        v24 = v23;
        if (v23 && [v23 length])
        {
          v14 = [NSURL URLWithString:v24];
        }

        else
        {
          v14 = 0;
        }

        v17 = obja;
      }

      else
      {
        v14 = 0;
      }

      obj = sub_10004841C(v5, &v43);

      v15 = 0;
    }

    v42.receiver = self;
    v42.super_class = UserActivityToBTLEPayload;
    v25 = [(UserActivityToBTLEPayload *)&v42 init];
    v12 = v25;
    if (v25)
    {
      objc_storeStrong(&v25->_title, v11);
      uniqueIdentifier = v12->_uniqueIdentifier;
      v12->_uniqueIdentifier = 0;

      when = v12->_when;
      v12->_when = 0;

      objc_storeStrong(&v12->_userInfoPayload, v13);
      objc_storeStrong(&v12->_webpageURL, v14);
      objc_storeStrong(&v12->_streamsData, obj);
      v38 = v13;
      if (v16 && [(__CFString *)v16 isEqual:@"0000000000"])
      {
        v28 = v11;

        v16 = &stru_1000C67D0;
      }

      else
      {
        v28 = v11;
      }

      teamID = v12->_teamID;
      v12->_teamID = &v16->isa;
      v30 = v16;

      activityType = v12->_activityType;
      v12->_activityType = v17;
      v32 = v17;

      additionalItems = v12->_additionalItems;
      v12->_additionalItems = v39;
      v34 = v39;

      error = v12->_error;
      v12->_error = v15;
      v36 = v15;

      v11 = v28;
      v13 = v38;
    }

    else
    {
    }

LABEL_43:

    self = v11;
LABEL_44:

    goto LABEL_45;
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (id)encodeAsData
{
  v3 = +[NSMutableData data];
  v4 = [(UserActivityToBTLEPayload *)self error];

  if (v4)
  {
    v23 = 15;
    [v3 appendBytes:&v23 length:4];
    v5 = [(UserActivityToBTLEPayload *)self error];
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];

    sub_1000487E0(v3, v6);
    goto LABEL_27;
  }

  v22 = 1;
  [v3 appendBytes:&v22 length:4];
  v7 = [(NSString *)self->_title dataUsingEncoding:4];
  sub_1000487E0(v3, v7);

  sub_1000487E0(v3, self->_userInfoPayload);
  v6 = [(UserActivityToBTLEPayload *)self additionalItems];
  if (v6)
  {
    [NSMutableDictionary dictionaryWithDictionary:v6];
  }

  else
  {
    +[NSMutableDictionary dictionary];
  }
  v8 = ;
  v9 = [(UserActivityToBTLEPayload *)self teamID];

  if (v9)
  {
    v10 = [(UserActivityToBTLEPayload *)self teamID];
    [v8 setObject:v10 forKey:@"teamID"];
  }

  v11 = [(UserActivityToBTLEPayload *)self activityType];

  if (v11)
  {
    v12 = [(UserActivityToBTLEPayload *)self activityType];
    [v8 setObject:v12 forKey:@"type"];
  }

  if ([v8 count])
  {
    v13 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:0];
  }

  else
  {
    v13 = 0;
  }

  sub_1000487E0(v3, v13);
  webpageURL = self->_webpageURL;
  if (webpageURL)
  {
    v15 = [(NSURL *)webpageURL absoluteString];
    v16 = v15;
    if (v15 && [v15 length])
    {
      v17 = [v16 dataUsingEncoding:4];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  sub_1000487E0(v3, v17);
  sub_1000487E0(v3, self->_streamsData);
  if ([v3 length] >> 31)
  {
    v18 = v3;
    v3 = 0;
LABEL_25:

    goto LABEL_26;
  }

  if ([v3 length] >= 0x801)
  {
    v19 = sub_100048870(v3);
    v18 = v19;
    if (v19)
    {
      v18 = v19;

      v3 = v18;
    }

    goto LABEL_25;
  }

LABEL_26:

LABEL_27:
  v20 = [v3 copy];

  return v20;
}

- (id)description
{
  v24 = [(UserActivityToBTLEPayload *)self userInfoPayload];
  v5 = sub_1000021AC(v24, 0x20uLL);
  v22 = [(UserActivityToBTLEPayload *)self streamsData];
  v23 = v5;
  if (v22)
  {
    v20 = [(UserActivityToBTLEPayload *)self streamsData];
    v19 = sub_1000021AC(v20, 0x20uLL);
    v25 = [NSString stringWithFormat:@"stream=%@", v19];
  }

  else
  {
    v25 = &stru_1000C67D0;
  }

  v21 = [(UserActivityToBTLEPayload *)self webpageURL];
  if (v21)
  {
    v6 = @"webPageURL=<private>";
  }

  else
  {
    v6 = &stru_1000C67D0;
  }

  v7 = [(UserActivityToBTLEPayload *)self teamID];
  if (v7 || ([(UserActivityToBTLEPayload *)self activityType], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v2 = [(UserActivityToBTLEPayload *)self teamID];
    v3 = [(UserActivityToBTLEPayload *)self activityType];
    v8 = [NSString stringWithFormat:@" {teamID=%@ activityType=%@}", v2, v3];
    v9 = 1;
  }

  else
  {
    v18 = 0;
    v9 = 0;
    v8 = &stru_1000C67D0;
  }

  v10 = [(UserActivityToBTLEPayload *)self additionalItems];
  if (v10)
  {
    v11 = [(UserActivityToBTLEPayload *)self additionalItems];
    v12 = [NSString stringWithFormat:@"additional=%@", v11];
    v16 = v6;
    v13 = v23;
    v14 = [NSString stringWithFormat:@"BTLEUserActivityDataEncoding: userInfo=%@ %@%@%@%@", v23, v25, v16, v8, v12];
  }

  else
  {
    v17 = v6;
    v13 = v23;
    v14 = [NSString stringWithFormat:@"BTLEUserActivityDataEncoding: userInfo=%@ %@%@%@%@", v23, v25, v17, v8, &stru_1000C67D0];
  }

  if (v9)
  {
  }

  if (!v7)
  {
  }

  if (v22)
  {
  }

  return v14;
}

@end