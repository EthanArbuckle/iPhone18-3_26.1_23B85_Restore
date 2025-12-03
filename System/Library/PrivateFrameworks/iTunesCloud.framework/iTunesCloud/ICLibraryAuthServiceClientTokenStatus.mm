@interface ICLibraryAuthServiceClientTokenStatus
- (ICLibraryAuthServiceClientTokenStatus)initWithCoder:(id)coder;
- (NSDate)lastUpdatedDate;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLibraryAuthServiceClientTokenStatus

- (NSDate)lastUpdatedDate
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_lastUpdateAttemptTime];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  tokenResult = self->_tokenResult;
  coderCopy = coder;
  [coderCopy encodeObject:tokenResult forKey:@"tokenResult"];
  msv_errorByRemovingUnsafeUserInfo = [(NSError *)self->_lastError msv_errorByRemovingUnsafeUserInfo];
  [coderCopy encodeObject:msv_errorByRemovingUnsafeUserInfo forKey:@"lastError"];

  [coderCopy encodeDouble:@"lastUpdateTime" forKey:self->_lastUpdateAttemptTime];
  [coderCopy encodeBool:self->_shouldExcludeFromBackgroundRefresh forKey:@"excludeFromBackgroundRefresh"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  tokenResult = self->_tokenResult;
  lastError = self->_lastError;
  lastUpdatedDate = [(ICLibraryAuthServiceClientTokenStatus *)self lastUpdatedDate];
  v8 = lastUpdatedDate;
  if (self->_shouldExcludeFromBackgroundRefresh)
  {
    v9 = @"NO";
  }

  else
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@:%p result=%@ lastError=%@ lastUpdate='%@' autoRefreshEnabled=%@>", v4, self, tokenResult, lastError, lastUpdatedDate, v9];

  return v10;
}

- (ICLibraryAuthServiceClientTokenStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ICLibraryAuthServiceClientTokenStatus;
  v5 = [(ICLibraryAuthServiceClientTokenStatus *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenResult"];
    tokenResult = v5->_tokenResult;
    v5->_tokenResult = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastError"];
    lastError = v5->_lastError;
    v5->_lastError = v8;

    [coderCopy decodeDoubleForKey:@"lastUpdateTime"];
    v5->_lastUpdateAttemptTime = v10;
    v5->_shouldExcludeFromBackgroundRefresh = [coderCopy decodeBoolForKey:@"excludeFromBackgroundRefresh"];
  }

  return v5;
}

@end