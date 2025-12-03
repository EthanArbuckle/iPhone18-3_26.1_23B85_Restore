@interface _SFPBUserActivityData
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBUserActivityData)initWithDictionary:(id)dictionary;
- (_SFPBUserActivityData)initWithFacade:(id)facade;
- (_SFPBUserActivityData)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addUserInfo:(id)info;
- (void)setActivityType:(id)type;
- (void)setUserInfo:(id)info;
- (void)writeTo:(id)to;
@end

@implementation _SFPBUserActivityData

- (_SFPBUserActivityData)initWithFacade:(id)facade
{
  v24 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBUserActivityData *)self init];
  if (v5)
  {
    activityType = [facadeCopy activityType];

    if (activityType)
    {
      activityType2 = [facadeCopy activityType];
      [(_SFPBUserActivityData *)v5 setActivityType:activityType2];
    }

    userInfo = [facadeCopy userInfo];
    if (userInfo)
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
    userInfo2 = [facadeCopy userInfo];
    v11 = [userInfo2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(userInfo2);
          }

          v15 = [[_SFPBUserActivityInfo alloc] initWithFacade:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [userInfo2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(_SFPBUserActivityData *)v5 setUserInfos:v9];
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBUserActivityData)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = _SFPBUserActivityData;
  v5 = [(_SFPBUserActivityData *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"activityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBUserActivityData *)v5 setActivityType:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBUserActivityInfo alloc] initWithDictionary:v14];
              [(_SFPBUserActivityData *)v5 addUserInfo:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBUserActivityData)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBUserActivityData *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBUserActivityData *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_activityType)
  {
    activityType = [(_SFPBUserActivityData *)self activityType];
    v5 = [activityType copy];
    [dictionary setObject:v5 forKeyedSubscript:@"activityType"];
  }

  if ([(NSArray *)self->_userInfos count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_userInfos;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"userInfo"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  activityType = [(_SFPBUserActivityData *)self activityType];
  activityType2 = [equalCopy activityType];
  if ((activityType != 0) == (activityType2 == 0))
  {
    goto LABEL_11;
  }

  activityType3 = [(_SFPBUserActivityData *)self activityType];
  if (activityType3)
  {
    v8 = activityType3;
    activityType4 = [(_SFPBUserActivityData *)self activityType];
    activityType5 = [equalCopy activityType];
    v11 = [activityType4 isEqual:activityType5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  activityType = [(_SFPBUserActivityData *)self userInfos];
  activityType2 = [equalCopy userInfos];
  if ((activityType != 0) != (activityType2 == 0))
  {
    userInfos = [(_SFPBUserActivityData *)self userInfos];
    if (!userInfos)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = userInfos;
    userInfos2 = [(_SFPBUserActivityData *)self userInfos];
    userInfos3 = [equalCopy userInfos];
    v16 = [userInfos2 isEqual:userInfos3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  activityType = [(_SFPBUserActivityData *)self activityType];
  if (activityType)
  {
    PBDataWriterWriteStringField();
  }

  userInfos = [(_SFPBUserActivityData *)self userInfos];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [userInfos countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(userInfos);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [userInfos countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addUserInfo:(id)info
{
  infoCopy = info;
  userInfos = self->_userInfos;
  v8 = infoCopy;
  if (!userInfos)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_userInfos;
    self->_userInfos = array;

    infoCopy = v8;
    userInfos = self->_userInfos;
  }

  [(NSArray *)userInfos addObject:infoCopy];
}

- (void)setUserInfo:(id)info
{
  v4 = [info copy];
  userInfos = self->_userInfos;
  self->_userInfos = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setActivityType:(id)type
{
  v4 = [type copy];
  activityType = self->_activityType;
  self->_activityType = v4;

  MEMORY[0x1EEE66BB8]();
}

@end