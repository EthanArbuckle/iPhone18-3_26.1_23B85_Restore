@interface STAskForTimeRequest
- (NSDictionary)payload;
- (STAskForTimeRequest)initWithCoder:(id)a3;
- (STAskForTimeRequest)initWithPayload:(id)a3;
- (STAskForTimeRequest)initWithUsageType:(int64_t)a3 requestedResourceIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setOneMoreMinute:(BOOL)a3;
@end

@implementation STAskForTimeRequest

- (STAskForTimeRequest)initWithUsageType:(int64_t)a3 requestedResourceIdentifier:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = STAskForTimeRequest;
  v7 = [(STAskForTimeRequest *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    requestedResourceIdentifier = v7->_requestedResourceIdentifier;
    v7->_requestedResourceIdentifier = v8;

    v7->_usageType = a3;
    v10 = objc_opt_new();
    timeStamp = v7->_timeStamp;
    v7->_timeStamp = v10;

    timeRequested = v7->_timeRequested;
    v7->_timeRequested = &unk_1F3059C18;
  }

  return v7;
}

- (STAskForTimeRequest)initWithPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"requestedResourceIdentifier"];
  v6 = [v5 copy];

  v7 = [v4 objectForKeyedSubscript:@"timeStamp"];
  v8 = v7;
  v9 = 0;
  if (v6)
  {
    if (v7)
    {
      v9 = [v4 objectForKeyedSubscript:@"usageType"];

      if (v9)
      {
        v10 = [v4 objectForKeyedSubscript:@"usageType"];
        v11 = [v10 integerValue];

        v12 = [(STAskForTimeRequest *)self initWithUsageType:v11 requestedResourceIdentifier:v6];
        if (v12)
        {
          v13 = [v4 objectForKeyedSubscript:@"requestIdentifier"];
          requestIdentifier = v12->_requestIdentifier;
          v12->_requestIdentifier = v13;

          v15 = [v4 objectForKeyedSubscript:@"resourceDisplayName"];
          v16 = [v15 copy];
          resourceDisplayName = v12->_resourceDisplayName;
          v12->_resourceDisplayName = v16;

          v18 = [v4 objectForKeyedSubscript:@"timeRequested"];
          timeRequested = v12->_timeRequested;
          v12->_timeRequested = v18;

          objc_storeStrong(&v12->_timeStamp, v8);
          v20 = [v4 objectForKeyedSubscript:@"oneMoreMinute"];
          v12->_oneMoreMinute = [v20 BOOLValue];

          v21 = [v4 objectForKeyedSubscript:@"requestingUserDSID"];
          requestingUserDSID = v12->_requestingUserDSID;
          v12->_requestingUserDSID = v21;

          v23 = [v4 objectForKeyedSubscript:@"requestingUserDisplayName"];
          v24 = [v23 copy];
          requestingUserDisplayName = v12->_requestingUserDisplayName;
          v12->_requestingUserDisplayName = v24;

          v26 = [v4 objectForKeyedSubscript:@"deliverQuietly"];
          v12->_deliverQuietly = [v26 BOOLValue];
        }

        self = v12;
        v9 = self;
      }
    }
  }

  return v9;
}

- (void)setOneMoreMinute:(BOOL)a3
{
  if (a3)
  {
    timeRequested = self->_timeRequested;
    self->_timeRequested = &unk_1F3059C28;
  }

  self->_oneMoreMinute = a3;
}

- (STAskForTimeRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedResourceIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeStamp"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([v4 containsValueForKey:@"usageType"] & 1) == 0)
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [v4 failWithError:v22];

    v21 = 0;
  }

  else
  {
    v9 = -[STAskForTimeRequest initWithUsageType:requestedResourceIdentifier:](self, "initWithUsageType:requestedResourceIdentifier:", [v4 decodeIntegerForKey:@"usageType"], v5);
    if (v9)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
      requestIdentifier = v9->_requestIdentifier;
      v9->_requestIdentifier = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourceDisplayName"];
      v13 = [v12 copy];
      resourceDisplayName = v9->_resourceDisplayName;
      v9->_resourceDisplayName = v13;

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeRequested"];
      timeRequested = v9->_timeRequested;
      v9->_timeRequested = v15;

      objc_storeStrong(&v9->_timeStamp, v7);
      v9->_oneMoreMinute = [v4 decodeBoolForKey:@"oneMoreMinute"];
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestingUserDSID"];
      requestingUserDSID = v9->_requestingUserDSID;
      v9->_requestingUserDSID = v17;

      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestingUserDisplayName"];
      requestingUserDisplayName = v9->_requestingUserDisplayName;
      v9->_requestingUserDisplayName = v19;

      v9->_deliverQuietly = [v4 decodeBoolForKey:@"deliverQuietly"];
    }

    self = v9;
    v21 = self;
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  requestIdentifier = self->_requestIdentifier;
  v5 = a3;
  [v5 encodeObject:requestIdentifier forKey:@"requestIdentifier"];
  [v5 encodeInteger:self->_usageType forKey:@"usageType"];
  [v5 encodeObject:self->_requestedResourceIdentifier forKey:@"requestedResourceIdentifier"];
  [v5 encodeObject:self->_resourceDisplayName forKey:@"resourceDisplayName"];
  [v5 encodeObject:self->_timeRequested forKey:@"timeRequested"];
  [v5 encodeBool:self->_oneMoreMinute forKey:@"oneMoreMinute"];
  [v5 encodeObject:self->_timeStamp forKey:@"timeStamp"];
  [v5 encodeObject:self->_requestingUserDSID forKey:@"requestingUserDSID"];
  [v5 encodeObject:self->_requestingUserDisplayName forKey:@"requestingUserDisplayName"];
  [v5 encodeBool:self->_deliverQuietly forKey:@"deliverQuietly"];
}

- (NSDictionary)payload
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
  v4 = [(STAskForTimeRequest *)self requestIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"requestIdentifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STAskForTimeRequest usageType](self, "usageType")}];
  [v3 setObject:v5 forKeyedSubscript:@"usageType"];

  v6 = [(STAskForTimeRequest *)self requestedResourceIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"requestedResourceIdentifier"];

  v7 = [(STAskForTimeRequest *)self resourceDisplayName];
  [v3 setObject:v7 forKeyedSubscript:@"resourceDisplayName"];

  v8 = [(STAskForTimeRequest *)self timeRequested];
  [v3 setObject:v8 forKeyedSubscript:@"timeRequested"];

  v9 = [(STAskForTimeRequest *)self timeStamp];
  [v3 setObject:v9 forKeyedSubscript:@"timeStamp"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[STAskForTimeRequest oneMoreMinute](self, "oneMoreMinute")}];
  [v3 setObject:v10 forKeyedSubscript:@"oneMoreMinute"];

  v11 = [(STAskForTimeRequest *)self requestingUserDSID];
  [v3 setObject:v11 forKeyedSubscript:@"requestingUserDSID"];

  v12 = [(STAskForTimeRequest *)self requestingUserDisplayName];
  [v3 setObject:v12 forKeyedSubscript:@"requestingUserDisplayName"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[STAskForTimeRequest deliverQuietly](self, "deliverQuietly")}];
  [v3 setObject:v13 forKeyedSubscript:@"deliverQuietly"];

  return v3;
}

@end