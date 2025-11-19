@interface ICLibraryAuthServiceClientTokenResponse
- (ICLibraryAuthServiceClientTokenResponse)initWithResponseDictionary:(id)a3;
- (ICLibraryAuthServiceClientTokenResponse)initWithResultCode:(int)a3;
- (id)description;
@end

@implementation ICLibraryAuthServiceClientTokenResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = ICLibraryAuthServiceClientTokenResponse;
  v4 = [(ICLibraryAuthServiceClientTokenResponse *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ resultCode=%d token=%@", v4, -[ICLibraryAuthServiceClientTokenResponse resultCode](self, "resultCode"), self->_tokenResult];

  return v5;
}

- (ICLibraryAuthServiceClientTokenResponse)initWithResultCode:(int)a3
{
  result = [(ICLibraryAuthServiceClientTokenResponse *)self init];
  if (result)
  {
    result->_resultCode = a3;
    result->_success = a3 == 200;
  }

  return result;
}

- (ICLibraryAuthServiceClientTokenResponse)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ICLibraryAuthServiceClientTokenResponse *)self init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [v4 objectForKey:@"resultCode"];
  if (_NSIsNSNumber())
  {
    v5->_resultCode = [v6 intValue];
  }

  v7 = [v4 objectForKey:@"serverHostName"];

  if (_NSIsNSString())
  {
    objc_storeStrong(&v5->_serverHostName, v7);
  }

  v8 = [v4 objectForKey:@"serverInstance"];

  if (_NSIsNSNumber())
  {
    v5->_serverInstance = [v8 longLongValue];
  }

  v9 = [v4 objectForKey:@"success"];

  if (_NSIsNSNumber())
  {
    v10 = [v9 BOOLValue];
LABEL_12:
    v5->_success = v10;
    goto LABEL_13;
  }

  if (_NSIsNSString())
  {
    v10 = [v9 isEqualToString:@"true"];
    goto LABEL_12;
  }

LABEL_13:
  v11 = [v4 objectForKey:@"result"];

  if (_NSIsNSDictionary())
  {
    v12 = [[ICLibraryAuthServiceClientTokenResult alloc] initWithResponseDictionary:v11];
    tokenResult = v5->_tokenResult;
    v5->_tokenResult = v12;
  }

LABEL_16:
  return v5;
}

@end