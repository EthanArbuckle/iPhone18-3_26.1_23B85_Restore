@interface ICMusicLibraryAuthTokenStatus
- (ICMusicLibraryAuthTokenStatus)initWithBlock:(id)a3;
- (ICMusicLibraryAuthTokenStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLastError:(id)a3;
- (void)setLastUpdatedDate:(id)a3;
- (void)setToken:(id)a3;
@end

@implementation ICMusicLibraryAuthTokenStatus

- (void)setLastUpdatedDate:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMusicLibraryAuthTokenStatus.m" lineNumber:82 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  lastUpdatedDate = self->_lastUpdatedDate;
  self->_lastUpdatedDate = v6;
}

- (void)setLastError:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMusicLibraryAuthTokenStatus.m" lineNumber:77 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  lastError = self->_lastError;
  self->_lastError = v6;
}

- (void)setToken:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMusicLibraryAuthTokenStatus.m" lineNumber:72 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  token = self->_token;
  self->_token = v6;
}

- (ICMusicLibraryAuthTokenStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICMusicLibraryAuthTokenStatus;
  v5 = [(ICMusicLibraryAuthTokenStatus *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastError"];
    lastError = v5->_lastError;
    v5->_lastError = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v10;

    v5->_shouldExcludeFromBackgroundRefresh = [v4 decodeBoolForKey:@"shouldExcludeFromBackgroundRefresh"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  token = self->_token;
  v6 = a3;
  [v6 encodeObject:token forKey:@"token"];
  v5 = [(NSError *)self->_lastError msv_errorByRemovingUnsafeUserInfo];
  [v6 encodeObject:v5 forKey:@"lastError"];

  [v6 encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  [v6 encodeBool:self->_shouldExcludeFromBackgroundRefresh forKey:@"shouldExcludeFromBackgroundRefresh"];
}

- (ICMusicLibraryAuthTokenStatus)initWithBlock:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICMusicLibraryAuthTokenStatus;
  v5 = [(ICMusicLibraryAuthTokenStatus *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
    v5->_frozen = 1;
  }

  return v5;
}

@end