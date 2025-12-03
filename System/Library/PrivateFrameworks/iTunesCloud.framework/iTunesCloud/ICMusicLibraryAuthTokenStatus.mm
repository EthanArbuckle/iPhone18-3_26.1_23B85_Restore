@interface ICMusicLibraryAuthTokenStatus
- (ICMusicLibraryAuthTokenStatus)initWithBlock:(id)block;
- (ICMusicLibraryAuthTokenStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setLastError:(id)error;
- (void)setLastUpdatedDate:(id)date;
- (void)setToken:(id)token;
@end

@implementation ICMusicLibraryAuthTokenStatus

- (void)setLastUpdatedDate:(id)date
{
  dateCopy = date;
  v9 = dateCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicLibraryAuthTokenStatus.m" lineNumber:82 description:@"Attempt to mutate after being initialized."];

    dateCopy = v9;
  }

  v6 = [dateCopy copy];
  lastUpdatedDate = self->_lastUpdatedDate;
  self->_lastUpdatedDate = v6;
}

- (void)setLastError:(id)error
{
  errorCopy = error;
  v9 = errorCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicLibraryAuthTokenStatus.m" lineNumber:77 description:@"Attempt to mutate after being initialized."];

    errorCopy = v9;
  }

  v6 = [errorCopy copy];
  lastError = self->_lastError;
  self->_lastError = v6;
}

- (void)setToken:(id)token
{
  tokenCopy = token;
  v9 = tokenCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicLibraryAuthTokenStatus.m" lineNumber:72 description:@"Attempt to mutate after being initialized."];

    tokenCopy = v9;
  }

  v6 = [tokenCopy copy];
  token = self->_token;
  self->_token = v6;
}

- (ICMusicLibraryAuthTokenStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICMusicLibraryAuthTokenStatus;
  v5 = [(ICMusicLibraryAuthTokenStatus *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastError"];
    lastError = v5->_lastError;
    v5->_lastError = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v10;

    v5->_shouldExcludeFromBackgroundRefresh = [coderCopy decodeBoolForKey:@"shouldExcludeFromBackgroundRefresh"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  token = self->_token;
  coderCopy = coder;
  [coderCopy encodeObject:token forKey:@"token"];
  msv_errorByRemovingUnsafeUserInfo = [(NSError *)self->_lastError msv_errorByRemovingUnsafeUserInfo];
  [coderCopy encodeObject:msv_errorByRemovingUnsafeUserInfo forKey:@"lastError"];

  [coderCopy encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  [coderCopy encodeBool:self->_shouldExcludeFromBackgroundRefresh forKey:@"shouldExcludeFromBackgroundRefresh"];
}

- (ICMusicLibraryAuthTokenStatus)initWithBlock:(id)block
{
  blockCopy = block;
  v7.receiver = self;
  v7.super_class = ICMusicLibraryAuthTokenStatus;
  v5 = [(ICMusicLibraryAuthTokenStatus *)&v7 init];
  if (v5)
  {
    blockCopy[2](blockCopy, v5);
    v5->_frozen = 1;
  }

  return v5;
}

@end