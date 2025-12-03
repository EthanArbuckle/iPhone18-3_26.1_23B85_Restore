@interface MAPushChannel
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPushChannelId:(id)id;
- (MAPushChannel)initWithCoder:(id)coder;
- (MAPushChannel)initWithIdentifier:(id)identifier;
- (MAPushChannel)initWithPopulationType:(int64_t)type;
- (id)channelIDForPopulationType;
- (id)description;
- (id)humanReadableChannelName;
- (id)populationTypeString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAPushChannel

- (MAPushChannel)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = MAPushChannel;
  v6 = [(MAPushChannel *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_identifier, identifier);
  v7->_populationType = 0;
  if (identifierCopy)
  {
    if (([identifierCopy isEqualToString:&stru_4BD3F0] & 1) == 0)
    {
      base64String = [identifierCopy base64String];
      objc_storeStrong(&v7->_base64ChannelId, identifier);
      if (base64String)
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
    v14 = identifierCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[WARNING] Channel ID is nil for identifier %{public}@", buf, 0xCu);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (MAPushChannel)initWithPopulationType:(int64_t)type
{
  v14.receiver = self;
  v14.super_class = MAPushChannel;
  v4 = [(MAPushChannel *)&v14 init];
  p_isa = &v4->super.isa;
  if (!v4)
  {
    goto LABEL_4;
  }

  v4->_populationType = type;
  channelIDForPopulationType = [(MAPushChannel *)v4 channelIDForPopulationType];
  v7 = p_isa[1];
  p_isa[1] = channelIDForPopulationType;

  base64String = [p_isa[1] base64String];
  if (base64String)
  {
    v9 = base64String;
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
  identifier = [(MAPushChannel *)self identifier];
  base64ChannelId = [(MAPushChannel *)self base64ChannelId];
  populationType = [(MAPushChannel *)self populationType];
  humanReadableChannelName = [(MAPushChannel *)self humanReadableChannelName];
  v7 = [NSString stringWithFormat:@"<MAPushChannelId | identifier:%@ base64String:%@ populationType:%li name: %@>", identifier, base64ChannelId, populationType, humanReadableChannelName];

  return v7;
}

- (id)humanReadableChannelName
{
  populationType = [(MAPushChannel *)self populationType];
  if ((populationType - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_4B39A8 + populationType - 1);
  }
}

- (id)channelIDForPopulationType
{
  v3 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    populationType = [(MAPushChannel *)self populationType];
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
      populationType = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Channel Population ID: %{public}@", &v8, 0xCu);
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MAPushChannel *)self isEqualToPushChannelId:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToPushChannelId:(id)id
{
  base64ChannelId = [id base64ChannelId];
  base64ChannelId2 = [(MAPushChannel *)self base64ChannelId];
  v6 = [base64ChannelId isEqual:base64ChannelId2];

  return v6;
}

- (unint64_t)hash
{
  base64ChannelId = [(MAPushChannel *)self base64ChannelId];
  v3 = [base64ChannelId hash];

  return v3;
}

- (id)populationTypeString
{
  populationType = [(MAPushChannel *)self populationType];
  if ((populationType - 1) > 4)
  {
    return @"MAPushPopulationTypeUnknown";
  }

  else
  {
    return *(&off_4B39F8 + populationType - 1);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MAPushChannel *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"Identifier"];

  v6 = [NSNumber numberWithInteger:[(MAPushChannel *)self populationType]];
  [coderCopy encodeObject:v6 forKey:@"PopulationType"];

  base64ChannelId = [(MAPushChannel *)self base64ChannelId];
  [coderCopy encodeObject:base64ChannelId forKey:@"Base64ID"];
}

- (MAPushChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MAPushChannel;
  v5 = [(MAPushChannel *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PopulationType"];
    v5->_populationType = [v8 integerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Base64ID"];
    base64ChannelId = v5->_base64ChannelId;
    v5->_base64ChannelId = v9;
  }

  return v5;
}

@end