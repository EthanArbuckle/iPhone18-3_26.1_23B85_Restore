@interface SFUserActivityData
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFUserActivityData)initWithCoder:(id)coder;
- (SFUserActivityData)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFUserActivityData

- (SFUserActivityData)initWithProtobuf:(id)protobuf
{
  v25 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v23.receiver = self;
  v23.super_class = SFUserActivityData;
  v5 = [(SFUserActivityData *)&v23 init];
  if (v5)
  {
    activityType = [protobufCopy activityType];

    if (activityType)
    {
      activityType2 = [protobufCopy activityType];
      [(SFUserActivityData *)v5 setActivityType:activityType2];
    }

    userInfos = [protobufCopy userInfos];
    if (userInfos)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    userInfos2 = [protobufCopy userInfos];
    v11 = [userInfos2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(userInfos2);
          }

          v15 = [[SFUserActivityInfo alloc] initWithProtobuf:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [userInfos2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [(SFUserActivityData *)v5 setUserInfo:v9];
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  activityType = [(SFUserActivityData *)self activityType];
  v4 = [activityType hash];
  userInfo = [(SFUserActivityData *)self userInfo];
  v6 = [userInfo hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFUserActivityData *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      activityType = [(SFUserActivityData *)self activityType];
      activityType2 = [(SFUserActivityData *)v6 activityType];
      if ((activityType != 0) == (activityType2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      activityType3 = [(SFUserActivityData *)self activityType];
      if (activityType3)
      {
        activityType4 = [(SFUserActivityData *)self activityType];
        activityType5 = [(SFUserActivityData *)v6 activityType];
        if (![activityType4 isEqual:activityType5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = activityType5;
      }

      userInfo = [(SFUserActivityData *)self userInfo];
      userInfo2 = [(SFUserActivityData *)v6 userInfo];
      v14 = userInfo2;
      if ((userInfo != 0) == (userInfo2 == 0))
      {

        v11 = 0;
      }

      else
      {
        userInfo3 = [(SFUserActivityData *)self userInfo];
        if (userInfo3)
        {
          v16 = userInfo3;
          userInfo4 = [(SFUserActivityData *)self userInfo];
          [(SFUserActivityData *)v6 userInfo];
          v17 = v20 = activityType4;
          v11 = [userInfo4 isEqual:v17];

          activityType4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      activityType5 = v21;
      if (!activityType3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  activityType = [(SFUserActivityData *)self activityType];
  v6 = [activityType copy];
  [v4 setActivityType:v6];

  userInfo = [(SFUserActivityData *)self userInfo];
  v8 = [userInfo copy];
  [v4 setUserInfo:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBUserActivityData alloc] initWithFacade:self];
  jsonData = [(_SFPBUserActivityData *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBUserActivityData alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBUserActivityData *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBUserActivityData alloc] initWithFacade:self];
  data = [(_SFPBUserActivityData *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFUserActivityData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBUserActivityData alloc] initWithData:v5];
  v7 = [(SFUserActivityData *)self initWithProtobuf:v6];

  return v7;
}

@end