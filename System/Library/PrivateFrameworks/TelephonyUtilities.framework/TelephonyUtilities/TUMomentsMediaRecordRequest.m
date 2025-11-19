@interface TUMomentsMediaRecordRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMediaRecordRequest:(id)a3;
- (NSString)localCaptionsFileName;
- (NSString)remoteCaptionsFileName;
- (TUMomentsMediaRecordRequest)initWithCall:(id)a3 URL:(id)a4;
- (TUMomentsMediaRecordRequest)initWithCallUUID:(id)a3 URL:(id)a4 mediaTokens:(id)a5;
- (TUMomentsMediaRecordRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUMomentsMediaRecordRequest

- (TUMomentsMediaRecordRequest)initWithCallUUID:(id)a3 URL:(id)a4 mediaTokens:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUMomentsMediaRecordRequest;
  v12 = [(TUMomentsMediaRecordRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_callUUID, a3);
    objc_storeStrong(&v13->_sandboxURL, a4);
    objc_storeStrong(&v13->_mediaTokens, a5);
  }

  return v13;
}

- (TUMomentsMediaRecordRequest)initWithCall:(id)a3 URL:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696AFB0];
  v8 = a4;
  v9 = [v7 alloc];
  v10 = [v6 callUUID];
  v11 = [v9 initWithUUIDString:v10];
  v12 = [v6 tokens];
  v13 = [(TUMomentsMediaRecordRequest *)self initWithCallUUID:v11 URL:v8 mediaTokens:v12];

  if (v13)
  {
    v14 = [v6 handle];
    v15 = [v14 normalizedValue];
    remoteCaptionsFileName = v13->_remoteCaptionsFileName;
    v13->_remoteCaptionsFileName = v15;

    v17 = [v6 localMemberHandleValue];
    if (v17)
    {
      v18 = [v6 localMemberHandleValue];
      localCaptionsFileName = v13->_localCaptionsFileName;
      v13->_localCaptionsFileName = v18;
    }

    else
    {
      localCaptionsFileName = [v6 localSenderIdentity];
      v20 = [localCaptionsFileName handle];
      v21 = [v20 normalizedValue];
      v22 = v13->_localCaptionsFileName;
      v13->_localCaptionsFileName = v21;
    }
  }

  return v13;
}

- (TUMomentsMediaRecordRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_callUUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_sandboxURL);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_mediaTokens);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_localeIdentifier);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_localCaptionsFileName);
  v19 = [v4 decodeObjectOfClass:v17 forKey:v18];

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_remoteCaptionsFileName);
  v22 = [v4 decodeObjectOfClass:v20 forKey:v21];

  v23 = 0;
  if (v7 && v10 && v13)
  {
    self = [(TUMomentsMediaRecordRequest *)self initWithCallUUID:v7 URL:v10 mediaTokens:v13];
    [(TUMomentsMediaRecordRequest *)self setLocaleIdentifier:v16];
    [(TUMomentsMediaRecordRequest *)self setLocalCaptionsFileName:v19];
    [(TUMomentsMediaRecordRequest *)self setRemoteCaptionsFileName:v22];
    v23 = self;
  }

  return v23;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUMomentsMediaRecordRequest *)self callUUID];
  [v3 appendFormat:@" uuid=%@", v4];

  v5 = [(TUMomentsMediaRecordRequest *)self mediaTokens];
  [v3 appendFormat:@" mediaTokens=%@", v5];

  v6 = [(TUMomentsMediaRecordRequest *)self localeIdentifier];
  [v3 appendFormat:@" localeID=%@", v6];

  v7 = [(TUMomentsMediaRecordRequest *)self localCaptionsFileName];
  [v3 appendFormat:@" localCaptionsFileName=%@", v7];

  v8 = [(TUMomentsMediaRecordRequest *)self remoteCaptionsFileName];
  [v3 appendFormat:@" remoteCaptionsFileName=%@", v8];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsMediaRecordRequest *)self callUUID];
  v6 = NSStringFromSelector(sel_callUUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUMomentsMediaRecordRequest *)self sandboxURL];
  v8 = NSStringFromSelector(sel_sandboxURL);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUMomentsMediaRecordRequest *)self mediaTokens];
  v10 = NSStringFromSelector(sel_mediaTokens);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUMomentsMediaRecordRequest *)self localeIdentifier];
  v12 = NSStringFromSelector(sel_localeIdentifier);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUMomentsMediaRecordRequest *)self localCaptionsFileName];
  v14 = NSStringFromSelector(sel_localCaptionsFileName);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [(TUMomentsMediaRecordRequest *)self remoteCaptionsFileName];
  v15 = NSStringFromSelector(sel_remoteCaptionsFileName);
  [v4 encodeObject:v16 forKey:v15];
}

- (NSString)localCaptionsFileName
{
  if (![(NSString *)self->_localCaptionsFileName length])
  {
    localCaptionsFileName = self->_localCaptionsFileName;
    self->_localCaptionsFileName = @"LOCAL";
  }

  v4 = self->_localCaptionsFileName;

  return v4;
}

- (NSString)remoteCaptionsFileName
{
  if (![(NSString *)self->_remoteCaptionsFileName length])
  {
    remoteCaptionsFileName = self->_remoteCaptionsFileName;
    self->_remoteCaptionsFileName = @"REMOTE";
  }

  v4 = self->_remoteCaptionsFileName;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUMomentsMediaRecordRequest *)self isEqualToMediaRecordRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToMediaRecordRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsMediaRecordRequest *)self mediaTokens];
  v6 = [v4 mediaTokens];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUMomentsMediaRecordRequest *)self localeIdentifier];
    v8 = [v4 localeIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(TUMomentsMediaRecordRequest *)self callUUID];
      v10 = [v4 callUUID];
      if ([v9 isEqual:v10])
      {
        v11 = [(TUMomentsMediaRecordRequest *)self localCaptionsFileName];
        v12 = [v4 localCaptionsFileName];
        if ([v11 isEqual:v12])
        {
          v21 = v11;
          v13 = [(TUMomentsMediaRecordRequest *)self remoteCaptionsFileName];
          v14 = [v4 remoteCaptionsFileName];
          v22 = v13;
          v15 = v13;
          v16 = v14;
          if ([v15 isEqual:v14])
          {
            v20 = [(TUMomentsMediaRecordRequest *)self sandboxURL];
            v19 = [v4 sandboxURL];
            v17 = [v20 isEqual:v19];
          }

          else
          {
            v17 = 0;
          }

          v11 = v21;
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

  return v17;
}

@end