@interface ICLibraryAuthServiceClientTokenResult
- (BOOL)isExpired;
- (ICLibraryAuthServiceClientTokenResult)initWithCoder:(id)a3;
- (ICLibraryAuthServiceClientTokenResult)initWithResponseDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSince1970];
  v5 = v4 > v2;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  token = self->_token;
  v5 = a3;
  [v5 encodeObject:token forKey:@"tokenString"];
  [v5 encodeInt64:self->_generatedAtMillis forKey:@"generatedAtMillis"];
  [v5 encodeInt64:self->_timeToLiveMillis forKey:@"ttlMillis"];
  [v5 encodeInt64:self->_lifespanMillis forKey:@"lifespanMillis"];
  [v5 encodeObject:self->_tokenIdentitifer forKey:@"tokenID"];
}

- (ICLibraryAuthServiceClientTokenResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICLibraryAuthServiceClientTokenResult;
  v5 = [(ICLibraryAuthServiceClientTokenResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenString"];
    token = v5->_token;
    v5->_token = v6;

    v5->_generatedAtMillis = [v4 decodeInt64ForKey:@"generatedAtMillis"];
    v5->_timeToLiveMillis = [v4 decodeInt64ForKey:@"ttlMillis"];
    v5->_lifespanMillis = [v4 decodeInt64ForKey:@"lifespanMillis"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenID"];
    tokenIdentitifer = v5->_tokenIdentitifer;
    v5->_tokenIdentitifer = v8;
  }

  return v5;
}

- (ICLibraryAuthServiceClientTokenResult)initWithResponseDictionary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICLibraryAuthServiceClientTokenResult *)self init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"token"];
    if (_NSIsNSString())
    {
      objc_storeStrong(&v5->_token, v6);
    }

    v7 = [v4 objectForKey:@"generatedAtMillis"];

    if (_NSIsNSNumber())
    {
      v5->_generatedAtMillis = [v7 longLongValue];
    }

    v8 = [v4 objectForKey:@"timeToLiveMillis"];

    if ([v8 isNSNumber])
    {
      v5->_timeToLiveMillis = [v8 longLongValue];
    }

    v9 = +[ICDefaults standardDefaults];
    v10 = [v9 authServiceClientTokenTimeToLive];

    if ([v10 longLongValue] >= 1)
    {
      v11 = [v10 longLongValue];
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11 > 119999)
      {
        if (v13)
        {
          v19 = 134217984;
          v20 = [v10 longLongValue];
          _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "Overridden to %lld milis.", &v19, 0xCu);
        }

        v5->_timeToLiveMillis = [v10 longLongValue];
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

    v14 = [v4 objectForKey:@"lifespanMillis"];

    if (_NSIsNSNumber())
    {
      v5->_lifespanMillis = [v14 longLongValue];
    }

    v15 = [v4 objectForKey:@"tokenID"];

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