@interface STAskForTimeRequest
- (NSDictionary)payload;
- (STAskForTimeRequest)initWithCoder:(id)coder;
- (STAskForTimeRequest)initWithPayload:(id)payload;
- (STAskForTimeRequest)initWithUsageType:(int64_t)type requestedResourceIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)setOneMoreMinute:(BOOL)minute;
@end

@implementation STAskForTimeRequest

- (STAskForTimeRequest)initWithUsageType:(int64_t)type requestedResourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = STAskForTimeRequest;
  v7 = [(STAskForTimeRequest *)&v14 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    requestedResourceIdentifier = v7->_requestedResourceIdentifier;
    v7->_requestedResourceIdentifier = v8;

    v7->_usageType = type;
    v10 = objc_opt_new();
    timeStamp = v7->_timeStamp;
    v7->_timeStamp = v10;

    timeRequested = v7->_timeRequested;
    v7->_timeRequested = &unk_1F3059C18;
  }

  return v7;
}

- (STAskForTimeRequest)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [payloadCopy objectForKeyedSubscript:@"requestedResourceIdentifier"];
  v6 = [v5 copy];

  v7 = [payloadCopy objectForKeyedSubscript:@"timeStamp"];
  v8 = v7;
  selfCopy = 0;
  if (v6)
  {
    if (v7)
    {
      selfCopy = [payloadCopy objectForKeyedSubscript:@"usageType"];

      if (selfCopy)
      {
        v10 = [payloadCopy objectForKeyedSubscript:@"usageType"];
        integerValue = [v10 integerValue];

        v12 = [(STAskForTimeRequest *)self initWithUsageType:integerValue requestedResourceIdentifier:v6];
        if (v12)
        {
          v13 = [payloadCopy objectForKeyedSubscript:@"requestIdentifier"];
          requestIdentifier = v12->_requestIdentifier;
          v12->_requestIdentifier = v13;

          v15 = [payloadCopy objectForKeyedSubscript:@"resourceDisplayName"];
          v16 = [v15 copy];
          resourceDisplayName = v12->_resourceDisplayName;
          v12->_resourceDisplayName = v16;

          v18 = [payloadCopy objectForKeyedSubscript:@"timeRequested"];
          timeRequested = v12->_timeRequested;
          v12->_timeRequested = v18;

          objc_storeStrong(&v12->_timeStamp, v8);
          v20 = [payloadCopy objectForKeyedSubscript:@"oneMoreMinute"];
          v12->_oneMoreMinute = [v20 BOOLValue];

          v21 = [payloadCopy objectForKeyedSubscript:@"requestingUserDSID"];
          requestingUserDSID = v12->_requestingUserDSID;
          v12->_requestingUserDSID = v21;

          v23 = [payloadCopy objectForKeyedSubscript:@"requestingUserDisplayName"];
          v24 = [v23 copy];
          requestingUserDisplayName = v12->_requestingUserDisplayName;
          v12->_requestingUserDisplayName = v24;

          v26 = [payloadCopy objectForKeyedSubscript:@"deliverQuietly"];
          v12->_deliverQuietly = [v26 BOOLValue];
        }

        self = v12;
        selfCopy = self;
      }
    }
  }

  return selfCopy;
}

- (void)setOneMoreMinute:(BOOL)minute
{
  if (minute)
  {
    timeRequested = self->_timeRequested;
    self->_timeRequested = &unk_1F3059C28;
  }

  self->_oneMoreMinute = minute;
}

- (STAskForTimeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedResourceIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeStamp"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([coderCopy containsValueForKey:@"usageType"] & 1) == 0)
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [coderCopy failWithError:v22];

    selfCopy = 0;
  }

  else
  {
    v9 = -[STAskForTimeRequest initWithUsageType:requestedResourceIdentifier:](self, "initWithUsageType:requestedResourceIdentifier:", [coderCopy decodeIntegerForKey:@"usageType"], v5);
    if (v9)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
      requestIdentifier = v9->_requestIdentifier;
      v9->_requestIdentifier = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceDisplayName"];
      v13 = [v12 copy];
      resourceDisplayName = v9->_resourceDisplayName;
      v9->_resourceDisplayName = v13;

      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeRequested"];
      timeRequested = v9->_timeRequested;
      v9->_timeRequested = v15;

      objc_storeStrong(&v9->_timeStamp, v7);
      v9->_oneMoreMinute = [coderCopy decodeBoolForKey:@"oneMoreMinute"];
      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestingUserDSID"];
      requestingUserDSID = v9->_requestingUserDSID;
      v9->_requestingUserDSID = v17;

      v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestingUserDisplayName"];
      requestingUserDisplayName = v9->_requestingUserDisplayName;
      v9->_requestingUserDisplayName = v19;

      v9->_deliverQuietly = [coderCopy decodeBoolForKey:@"deliverQuietly"];
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  requestIdentifier = self->_requestIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:requestIdentifier forKey:@"requestIdentifier"];
  [coderCopy encodeInteger:self->_usageType forKey:@"usageType"];
  [coderCopy encodeObject:self->_requestedResourceIdentifier forKey:@"requestedResourceIdentifier"];
  [coderCopy encodeObject:self->_resourceDisplayName forKey:@"resourceDisplayName"];
  [coderCopy encodeObject:self->_timeRequested forKey:@"timeRequested"];
  [coderCopy encodeBool:self->_oneMoreMinute forKey:@"oneMoreMinute"];
  [coderCopy encodeObject:self->_timeStamp forKey:@"timeStamp"];
  [coderCopy encodeObject:self->_requestingUserDSID forKey:@"requestingUserDSID"];
  [coderCopy encodeObject:self->_requestingUserDisplayName forKey:@"requestingUserDisplayName"];
  [coderCopy encodeBool:self->_deliverQuietly forKey:@"deliverQuietly"];
}

- (NSDictionary)payload
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
  requestIdentifier = [(STAskForTimeRequest *)self requestIdentifier];
  [v3 setObject:requestIdentifier forKeyedSubscript:@"requestIdentifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STAskForTimeRequest usageType](self, "usageType")}];
  [v3 setObject:v5 forKeyedSubscript:@"usageType"];

  requestedResourceIdentifier = [(STAskForTimeRequest *)self requestedResourceIdentifier];
  [v3 setObject:requestedResourceIdentifier forKeyedSubscript:@"requestedResourceIdentifier"];

  resourceDisplayName = [(STAskForTimeRequest *)self resourceDisplayName];
  [v3 setObject:resourceDisplayName forKeyedSubscript:@"resourceDisplayName"];

  timeRequested = [(STAskForTimeRequest *)self timeRequested];
  [v3 setObject:timeRequested forKeyedSubscript:@"timeRequested"];

  timeStamp = [(STAskForTimeRequest *)self timeStamp];
  [v3 setObject:timeStamp forKeyedSubscript:@"timeStamp"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[STAskForTimeRequest oneMoreMinute](self, "oneMoreMinute")}];
  [v3 setObject:v10 forKeyedSubscript:@"oneMoreMinute"];

  requestingUserDSID = [(STAskForTimeRequest *)self requestingUserDSID];
  [v3 setObject:requestingUserDSID forKeyedSubscript:@"requestingUserDSID"];

  requestingUserDisplayName = [(STAskForTimeRequest *)self requestingUserDisplayName];
  [v3 setObject:requestingUserDisplayName forKeyedSubscript:@"requestingUserDisplayName"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[STAskForTimeRequest deliverQuietly](self, "deliverQuietly")}];
  [v3 setObject:v13 forKeyedSubscript:@"deliverQuietly"];

  return v3;
}

@end