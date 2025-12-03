@interface TUMomentsMediaRecordRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMediaRecordRequest:(id)request;
- (NSString)localCaptionsFileName;
- (NSString)remoteCaptionsFileName;
- (TUMomentsMediaRecordRequest)initWithCall:(id)call URL:(id)l;
- (TUMomentsMediaRecordRequest)initWithCallUUID:(id)d URL:(id)l mediaTokens:(id)tokens;
- (TUMomentsMediaRecordRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUMomentsMediaRecordRequest

- (TUMomentsMediaRecordRequest)initWithCallUUID:(id)d URL:(id)l mediaTokens:(id)tokens
{
  dCopy = d;
  lCopy = l;
  tokensCopy = tokens;
  v15.receiver = self;
  v15.super_class = TUMomentsMediaRecordRequest;
  v12 = [(TUMomentsMediaRecordRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_callUUID, d);
    objc_storeStrong(&v13->_sandboxURL, l);
    objc_storeStrong(&v13->_mediaTokens, tokens);
  }

  return v13;
}

- (TUMomentsMediaRecordRequest)initWithCall:(id)call URL:(id)l
{
  callCopy = call;
  v7 = MEMORY[0x1E696AFB0];
  lCopy = l;
  v9 = [v7 alloc];
  callUUID = [callCopy callUUID];
  v11 = [v9 initWithUUIDString:callUUID];
  tokens = [callCopy tokens];
  v13 = [(TUMomentsMediaRecordRequest *)self initWithCallUUID:v11 URL:lCopy mediaTokens:tokens];

  if (v13)
  {
    handle = [callCopy handle];
    normalizedValue = [handle normalizedValue];
    remoteCaptionsFileName = v13->_remoteCaptionsFileName;
    v13->_remoteCaptionsFileName = normalizedValue;

    localMemberHandleValue = [callCopy localMemberHandleValue];
    if (localMemberHandleValue)
    {
      localMemberHandleValue2 = [callCopy localMemberHandleValue];
      localCaptionsFileName = v13->_localCaptionsFileName;
      v13->_localCaptionsFileName = localMemberHandleValue2;
    }

    else
    {
      localCaptionsFileName = [callCopy localSenderIdentity];
      handle2 = [localCaptionsFileName handle];
      normalizedValue2 = [handle2 normalizedValue];
      v22 = v13->_localCaptionsFileName;
      v13->_localCaptionsFileName = normalizedValue2;
    }
  }

  return v13;
}

- (TUMomentsMediaRecordRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_callUUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_sandboxURL);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_mediaTokens);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_localeIdentifier);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_localCaptionsFileName);
  v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_remoteCaptionsFileName);
  v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];

  selfCopy = 0;
  if (v7 && v10 && v13)
  {
    self = [(TUMomentsMediaRecordRequest *)self initWithCallUUID:v7 URL:v10 mediaTokens:v13];
    [(TUMomentsMediaRecordRequest *)self setLocaleIdentifier:v16];
    [(TUMomentsMediaRecordRequest *)self setLocalCaptionsFileName:v19];
    [(TUMomentsMediaRecordRequest *)self setRemoteCaptionsFileName:v22];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  callUUID = [(TUMomentsMediaRecordRequest *)self callUUID];
  [v3 appendFormat:@" uuid=%@", callUUID];

  mediaTokens = [(TUMomentsMediaRecordRequest *)self mediaTokens];
  [v3 appendFormat:@" mediaTokens=%@", mediaTokens];

  localeIdentifier = [(TUMomentsMediaRecordRequest *)self localeIdentifier];
  [v3 appendFormat:@" localeID=%@", localeIdentifier];

  localCaptionsFileName = [(TUMomentsMediaRecordRequest *)self localCaptionsFileName];
  [v3 appendFormat:@" localCaptionsFileName=%@", localCaptionsFileName];

  remoteCaptionsFileName = [(TUMomentsMediaRecordRequest *)self remoteCaptionsFileName];
  [v3 appendFormat:@" remoteCaptionsFileName=%@", remoteCaptionsFileName];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  callUUID = [(TUMomentsMediaRecordRequest *)self callUUID];
  v6 = NSStringFromSelector(sel_callUUID);
  [coderCopy encodeObject:callUUID forKey:v6];

  sandboxURL = [(TUMomentsMediaRecordRequest *)self sandboxURL];
  v8 = NSStringFromSelector(sel_sandboxURL);
  [coderCopy encodeObject:sandboxURL forKey:v8];

  mediaTokens = [(TUMomentsMediaRecordRequest *)self mediaTokens];
  v10 = NSStringFromSelector(sel_mediaTokens);
  [coderCopy encodeObject:mediaTokens forKey:v10];

  localeIdentifier = [(TUMomentsMediaRecordRequest *)self localeIdentifier];
  v12 = NSStringFromSelector(sel_localeIdentifier);
  [coderCopy encodeObject:localeIdentifier forKey:v12];

  localCaptionsFileName = [(TUMomentsMediaRecordRequest *)self localCaptionsFileName];
  v14 = NSStringFromSelector(sel_localCaptionsFileName);
  [coderCopy encodeObject:localCaptionsFileName forKey:v14];

  remoteCaptionsFileName = [(TUMomentsMediaRecordRequest *)self remoteCaptionsFileName];
  v15 = NSStringFromSelector(sel_remoteCaptionsFileName);
  [coderCopy encodeObject:remoteCaptionsFileName forKey:v15];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUMomentsMediaRecordRequest *)self isEqualToMediaRecordRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMediaRecordRequest:(id)request
{
  requestCopy = request;
  mediaTokens = [(TUMomentsMediaRecordRequest *)self mediaTokens];
  mediaTokens2 = [requestCopy mediaTokens];
  if ([mediaTokens isEqual:mediaTokens2])
  {
    localeIdentifier = [(TUMomentsMediaRecordRequest *)self localeIdentifier];
    localeIdentifier2 = [requestCopy localeIdentifier];
    if ([localeIdentifier isEqual:localeIdentifier2])
    {
      callUUID = [(TUMomentsMediaRecordRequest *)self callUUID];
      callUUID2 = [requestCopy callUUID];
      if ([callUUID isEqual:callUUID2])
      {
        localCaptionsFileName = [(TUMomentsMediaRecordRequest *)self localCaptionsFileName];
        localCaptionsFileName2 = [requestCopy localCaptionsFileName];
        if ([localCaptionsFileName isEqual:localCaptionsFileName2])
        {
          v21 = localCaptionsFileName;
          remoteCaptionsFileName = [(TUMomentsMediaRecordRequest *)self remoteCaptionsFileName];
          remoteCaptionsFileName2 = [requestCopy remoteCaptionsFileName];
          v22 = remoteCaptionsFileName;
          v15 = remoteCaptionsFileName;
          v16 = remoteCaptionsFileName2;
          if ([v15 isEqual:remoteCaptionsFileName2])
          {
            sandboxURL = [(TUMomentsMediaRecordRequest *)self sandboxURL];
            sandboxURL2 = [requestCopy sandboxURL];
            v17 = [sandboxURL isEqual:sandboxURL2];
          }

          else
          {
            v17 = 0;
          }

          localCaptionsFileName = v21;
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