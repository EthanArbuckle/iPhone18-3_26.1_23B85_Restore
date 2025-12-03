@interface ICLibraryAuthServiceClientTokenResult
- (BOOL)isExpired;
- (ICLibraryAuthServiceClientTokenResult)initWithCoder:(id)coder;
- (ICLibraryAuthServiceClientTokenResult)initWithResponseDictionary:(id)dictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLibraryAuthServiceClientTokenResult

- (id)description
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:((self->_timeToLiveMillis + self->_generatedAtMillis) / 1000)];
  v4 = +[ICDeviceInfo currentDeviceInfo];
  if ([v4 isInternalBuild])
  {
    token = self->_token;
  }

  else
  {
    token = @"<private>";
  }

  v6 = token;

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p token='%@' expires='%@'>", objc_opt_class(), self, v6, v3];

  return v7;
}

- (BOOL)isExpired
{
  v2 = ((self->_timeToLiveMillis + self->_generatedAtMillis) / 1000);
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v5 = v4 > v2;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  token = self->_token;
  coderCopy = coder;
  [coderCopy encodeObject:token forKey:@"tokenString"];
  [coderCopy encodeInt64:self->_generatedAtMillis forKey:@"generatedAtMillis"];
  [coderCopy encodeInt64:self->_timeToLiveMillis forKey:@"ttlMillis"];
  [coderCopy encodeInt64:self->_lifespanMillis forKey:@"lifespanMillis"];
  [coderCopy encodeObject:self->_tokenIdentitifer forKey:@"tokenID"];
}

- (ICLibraryAuthServiceClientTokenResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICLibraryAuthServiceClientTokenResult;
  v5 = [(ICLibraryAuthServiceClientTokenResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenString"];
    token = v5->_token;
    v5->_token = v6;

    v5->_generatedAtMillis = [coderCopy decodeInt64ForKey:@"generatedAtMillis"];
    v5->_timeToLiveMillis = [coderCopy decodeInt64ForKey:@"ttlMillis"];
    v5->_lifespanMillis = [coderCopy decodeInt64ForKey:@"lifespanMillis"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenID"];
    tokenIdentitifer = v5->_tokenIdentitifer;
    v5->_tokenIdentitifer = v8;
  }

  return v5;
}

- (ICLibraryAuthServiceClientTokenResult)initWithResponseDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(ICLibraryAuthServiceClientTokenResult *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"token"];
    if (_NSIsNSString())
    {
      objc_storeStrong(&v5->_token, v6);
    }

    v7 = [dictionaryCopy objectForKey:@"generatedAtMillis"];

    if (_NSIsNSNumber())
    {
      v5->_generatedAtMillis = [v7 longLongValue];
    }

    v8 = [dictionaryCopy objectForKey:@"timeToLiveMillis"];

    if ([v8 isNSNumber])
    {
      v5->_timeToLiveMillis = [v8 longLongValue];
    }

    v9 = +[ICDefaults standardDefaults];
    authServiceClientTokenTimeToLive = [v9 authServiceClientTokenTimeToLive];

    if ([authServiceClientTokenTimeToLive longLongValue] >= 1)
    {
      longLongValue = [authServiceClientTokenTimeToLive longLongValue];
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (longLongValue > 119999)
      {
        if (v13)
        {
          v19 = 134217984;
          longLongValue2 = [authServiceClientTokenTimeToLive longLongValue];
          _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "Overridden to %lld milis.", &v19, 0xCu);
        }

        v5->_timeToLiveMillis = [authServiceClientTokenTimeToLive longLongValue];
      }

      else
      {
        if (v13)
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "Override may not be less than 120000", &v19, 2u);
        }
      }
    }

    v14 = [dictionaryCopy objectForKey:@"lifespanMillis"];

    if (_NSIsNSNumber())
    {
      v5->_lifespanMillis = [v14 longLongValue];
    }

    v15 = [dictionaryCopy objectForKey:@"tokenID"];

    if (_NSIsNSDictionary())
    {
      v16 = [[ICLibraryAuthServiceClientTokenIdentifier alloc] initWithResponseDictionary:v15];
      tokenIdentitifer = v5->_tokenIdentitifer;
      v5->_tokenIdentitifer = v16;
    }
  }

  return v5;
}

@end