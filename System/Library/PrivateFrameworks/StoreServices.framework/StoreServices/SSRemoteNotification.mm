@interface SSRemoteNotification
- (BOOL)explicitContent;
- (NSArray)buttons;
- (NSDate)expirationDate;
- (NSDictionary)metrics;
- (NSDictionary)notificationUserInfo;
- (NSString)alertBodyString;
- (NSString)alertCancelString;
- (NSString)alertOKString;
- (NSString)alertTitleString;
- (NSString)artworkUrl;
- (NSString)category;
- (NSString)soundFileName;
- (NSString)tapUrl;
- (SSRemoteNotification)initWithNotificationUserInfo:(id)info;
- (SSRemoteNotification)initWithXPCEncoding:(id)encoding;
- (id)_valueForAPSKey:(id)key;
- (id)_valueForAlertKey:(id)key;
- (id)badgeValue;
- (id)copyXPCEncoding;
- (int64_t)actionType;
- (int64_t)version;
- (void)dealloc;
@end

@implementation SSRemoteNotification

- (SSRemoteNotification)initWithNotificationUserInfo:(id)info
{
  v15.receiver = self;
  v15.super_class = SSRemoteNotification;
  v4 = [(SSRemoteNotification *)&v15 init];
  if (v4)
  {
    v4->_userInfo = [info copy];
    v5 = [info objectForKey:@"10"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 isEqualToString:@"application/gzip"])
      {
        v6 = [info objectForKey:@"aps"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
          v8 = v7;
          if (v7)
          {
            v9 = (softLinkISCopyDecompressedGZipDataForData[0])(v7);
            v14 = 0;
            if (v9)
            {
              v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v14];
              if (v14)
              {
LABEL_13:

                return v4;
              }

              v11 = v10;
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
            v9 = 0;
            v14 = 0;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(NSDictionary *)v4->_userInfo mutableCopy];
            [(NSDictionary *)v12 setObject:v11 forKeyedSubscript:@"aps"];
            v4->_userInfo = v12;
          }

          goto LABEL_13;
        }
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSRemoteNotification;
  [(SSRemoteNotification *)&v3 dealloc];
}

- (int64_t)actionType
{
  v3 = [(SSRemoteNotification *)self valueForKey:@"1"];
  if (objc_opt_respondsToSelector())
  {
    return [v3 intValue];
  }

  else
  {
    return [(SSRemoteNotification *)self valueForKey:@"3"]!= 0;
  }
}

- (NSString)alertBodyString
{
  v2 = [(NSDictionary *)self->_userInfo objectForKey:@"aps"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"alert"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_6:
        v3 = [v2 objectForKey:@"text"];
        goto LABEL_8;
      }

      v3 = [v3 objectForKey:@"body"];
    }

    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (NSString)alertCancelString
{
  v2 = [(SSRemoteNotification *)self _valueForAlertKey:@"cancel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSString)alertOKString
{
  v2 = [(SSRemoteNotification *)self _valueForAlertKey:@"ok"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSString)alertTitleString
{
  v3 = [(SSRemoteNotification *)self _valueForAlertKey:@"title"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [(SSRemoteNotification *)self _valueForAPSKey:@"title"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)explicitContent
{
  v2 = [(SSRemoteNotification *)self _valueForAPSKey:@"isExplicit"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (NSString)artworkUrl
{
  v2 = [(SSRemoteNotification *)self _valueForAPSKey:@"artworkUrl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)badgeValue
{
  v2 = [(NSDictionary *)self->_userInfo objectForKey:@"aps"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 objectForKey:@"badge"];
}

- (NSArray)buttons
{
  v2 = [(SSRemoteNotification *)self _valueForAPSKey:@"buttons"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSString)category
{
  v2 = [(SSRemoteNotification *)self _valueForAPSKey:@"category"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSDate)expirationDate
{
  v2 = [(SSRemoteNotification *)self _valueForAPSKey:@"schedule"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"notAfter"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DF00];
  integerValue = [v3 integerValue];

  return [v4 dateWithTimeIntervalSince1970:integerValue];
}

- (NSDictionary)metrics
{
  v2 = [(SSRemoteNotification *)self _valueForAPSKey:@"metrics"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSString)soundFileName
{
  v2 = [(NSDictionary *)self->_userInfo objectForKey:@"aps"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"sound"];
  }

  else
  {
    v3 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (NSString)tapUrl
{
  v3 = [(NSDictionary *)self->_userInfo objectForKey:@"3"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [(SSRemoteNotification *)self _valueForAPSKey:@"tapUrl"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)version
{
  v2 = [(NSDictionary *)self->_userInfo objectForKey:@"aps"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"version"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 integerValue];
}

- (NSDictionary)notificationUserInfo
{
  v2 = self->_userInfo;

  return v2;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_userInfo);
  return v3;
}

- (SSRemoteNotification)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSRemoteNotification;
    v5 = [(SSRemoteNotification *)&v7 init];
    if (v5)
    {
      objc_opt_class();
      v5->_userInfo = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)_valueForAlertKey:(id)key
{
  v4 = [(NSDictionary *)self->_userInfo objectForKey:@"aps"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [v4 objectForKey:@"alert"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v5 objectForKey:key];
}

- (id)_valueForAPSKey:(id)key
{
  v4 = [(NSDictionary *)self->_userInfo objectForKey:@"aps"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v4 objectForKey:key];
}

@end