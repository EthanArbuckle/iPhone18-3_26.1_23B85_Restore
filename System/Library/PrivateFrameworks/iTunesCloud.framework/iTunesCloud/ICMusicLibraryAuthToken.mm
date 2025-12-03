@interface ICMusicLibraryAuthToken
- (BOOL)isExpired;
- (ICMusicLibraryAuthToken)initWithBlock:(id)block;
- (ICMusicLibraryAuthToken)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setDeviceGUID:(id)d;
- (void)setExpirationDate:(id)date;
- (void)setToken:(id)token;
@end

@implementation ICMusicLibraryAuthToken

- (void)setDeviceGUID:(id)d
{
  dCopy = d;
  v9 = dCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicLibraryAuthToken.m" lineNumber:81 description:@"Attempt to mutate after being initialized."];

    dCopy = v9;
  }

  v6 = [dCopy copy];
  deviceGUID = self->_deviceGUID;
  self->_deviceGUID = v6;
}

- (void)setExpirationDate:(id)date
{
  dateCopy = date;
  v9 = dateCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicLibraryAuthToken.m" lineNumber:76 description:@"Attempt to mutate after being initialized."];

    dateCopy = v9;
  }

  v6 = [dateCopy copy];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v6;
}

- (void)setToken:(id)token
{
  tokenCopy = token;
  v9 = tokenCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicLibraryAuthToken.m" lineNumber:71 description:@"Attempt to mutate after being initialized."];

    tokenCopy = v9;
  }

  v6 = [tokenCopy copy];
  token = self->_token;
  self->_token = v6;
}

- (ICMusicLibraryAuthToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICMusicLibraryAuthToken;
  v5 = [(ICMusicLibraryAuthToken *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceGUID"];
    deviceGUID = v5->_deviceGUID;
    v5->_deviceGUID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  token = self->_token;
  coderCopy = coder;
  [coderCopy encodeObject:token forKey:@"token"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeObject:self->_deviceGUID forKey:@"deviceGUID"];
}

- (BOOL)isExpired
{
  v3 = [MEMORY[0x1E695DF00] now];
  expirationDate = [(ICMusicLibraryAuthToken *)self expirationDate];
  v5 = [v3 compare:expirationDate] == 1;

  return v5;
}

- (ICMusicLibraryAuthToken)initWithBlock:(id)block
{
  blockCopy = block;
  v7.receiver = self;
  v7.super_class = ICMusicLibraryAuthToken;
  v5 = [(ICMusicLibraryAuthToken *)&v7 init];
  if (v5)
  {
    blockCopy[2](blockCopy, v5);
    v5->_frozen = 1;
  }

  return v5;
}

@end