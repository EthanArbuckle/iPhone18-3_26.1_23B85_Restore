@interface MAPushChannel
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPushChannelId:(id)a3;
- (MAPushChannel)initWithCoder:(id)a3;
- (MAPushChannel)initWithIdentifier:(id)a3;
- (MAPushChannel)initWithPopulationType:(int64_t)a3;
- (id)channelIDForPopulationType;
- (id)description;
- (id)humanReadableChannelName;
- (id)populationTypeString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAPushChannel

- (MAPushChannel)initWithIdentifier:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MAPushChannel;
  v6 = [(MAPushChannel *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_identifier, a3);
  v7->_populationType = 0;
  if (v5)
  {
    if (([v5 isEqualToString:&stru_4BD3F0] & 1) == 0)
    {
      v8 = [v5 base64String];
      objc_storeStrong(&v7->_base64ChannelId, a3);
      if (v8)
      {

LABEL_6:
        v9 = v7;
        goto LABEL_10;
      }
    }
  }

  v10 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[WARNING] Channel ID is nil for identifier %{public}@", buf, 0xCu);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (MAPushChannel)initWithPopulationType:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = MAPushChannel;
  v4 = [(MAPushChannel *)&v14 init];
  p_isa = &v4->super.isa;
  if (!v4)
  {
    goto LABEL_4;
  }

  v4->_populationType = a3;
  v6 = [(MAPushChannel *)v4 channelIDForPopulationType];
  v7 = p_isa[1];
  p_isa[1] = v6;

  v8 = [p_isa[1] base64String];
  if (v8)
  {
    v9 = v8;
    objc_storeStrong(p_isa + 3, p_isa[1]);

LABEL_4:
    v10 = p_isa;
    goto LABEL_8;
  }

  v11 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = p_isa[1];
    *buf = 138543362;
    v16 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[WARNING] Channel ID is nil for identifier %{public}@", buf, 0xCu);
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)description
{
  v3 = [(MAPushChannel *)self identifier];
  v4 = [(MAPushChannel *)self base64ChannelId];
  v5 = [(MAPushChannel *)self populationType];
  v6 = [(MAPushChannel *)self humanReadableChannelName];
  v7 = [NSString stringWithFormat:@"<MAPushChannelId | identifier:%@ base64String:%@ populationType:%li name: %@>", v3, v4, v5, v6];

  return v7;
}

- (id)humanReadableChannelName
{
  v2 = [(MAPushChannel *)self populationType];
  if ((v2 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_4B39A8 + v2 - 1);
  }
}

- (id)channelIDForPopulationType
{
  v3 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [(MAPushChannel *)self populationType];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Channel population type: %li", &v8, 0xCu);
  }

  v4 = [(MAPushChannel *)self populationType]- 1;
  if (v4 >= 5)
  {
    v6 = _MADLog(@"PushNotification");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[WARNING] No population type ID for device!", &v8, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = *(&off_4B39D0 + v4);
    v6 = _MADLog(@"PushNotification");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Channel Population ID: %{public}@", &v8, 0xCu);
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MAPushChannel *)self isEqualToPushChannelId:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToPushChannelId:(id)a3
{
  v4 = [a3 base64ChannelId];
  v5 = [(MAPushChannel *)self base64ChannelId];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(MAPushChannel *)self base64ChannelId];
  v3 = [v2 hash];

  return v3;
}

- (id)populationTypeString
{
  v2 = [(MAPushChannel *)self populationType];
  if ((v2 - 1) > 4)
  {
    return @"MAPushPopulationTypeUnknown";
  }

  else
  {
    return *(&off_4B39F8 + v2 - 1);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAPushChannel *)self identifier];
  [v4 encodeObject:v5 forKey:@"Identifier"];

  v6 = [NSNumber numberWithInteger:[(MAPushChannel *)self populationType]];
  [v4 encodeObject:v6 forKey:@"PopulationType"];

  v7 = [(MAPushChannel *)self base64ChannelId];
  [v4 encodeObject:v7 forKey:@"Base64ID"];
}

- (MAPushChannel)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MAPushChannel;
  v5 = [(MAPushChannel *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PopulationType"];
    v5->_populationType = [v8 integerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Base64ID"];
    base64ChannelId = v5->_base64ChannelId;
    v5->_base64ChannelId = v9;
  }

  return v5;
}

@end