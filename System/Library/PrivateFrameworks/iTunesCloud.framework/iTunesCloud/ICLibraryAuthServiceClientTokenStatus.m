@interface ICLibraryAuthServiceClientTokenStatus
- (ICLibraryAuthServiceClientTokenStatus)initWithCoder:(id)a3;
- (NSDate)lastUpdatedDate;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLibraryAuthServiceClientTokenStatus

- (NSDate)lastUpdatedDate
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_lastUpdateAttemptTime];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  tokenResult = self->_tokenResult;
  v6 = a3;
  [v6 encodeObject:tokenResult forKey:@"tokenResult"];
  v5 = [(NSError *)self->_lastError msv_errorByRemovingUnsafeUserInfo];
  [v6 encodeObject:v5 forKey:@"lastError"];

  [v6 encodeDouble:@"lastUpdateTime" forKey:self->_lastUpdateAttemptTime];
  [v6 encodeBool:self->_shouldExcludeFromBackgroundRefresh forKey:@"excludeFromBackgroundRefresh"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  tokenResult = self->_tokenResult;
  lastError = self->_lastError;
  v7 = [(ICLibraryAuthServiceClientTokenStatus *)self lastUpdatedDate];
  v8 = v7;
  if (self->_shouldExcludeFromBackgroundRefresh)
  {
    v9 = @"NO";
  }

  else
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@:%p result=%@ lastError=%@ lastUpdate='%@' autoRefreshEnabled=%@>", v4, self, tokenResult, lastError, v7, v9];

  return v10;
}

- (ICLibraryAuthServiceClientTokenStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ICLibraryAuthServiceClientTokenStatus;
  v5 = [(ICLibraryAuthServiceClientTokenStatus *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenResult"];
    tokenResult = v5->_tokenResult;
    v5->_tokenResult = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastError"];
    lastError = v5->_lastError;
    v5->_lastError = v8;

    [v4 decodeDoubleForKey:@"lastUpdateTime"];
    v5->_lastUpdateAttemptTime = v10;
    v5->_shouldExcludeFromBackgroundRefresh = [v4 decodeBoolForKey:@"excludeFromBackgroundRefresh"];
  }

  return v5;
}

@end