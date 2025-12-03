@interface ICLibraryAuthServiceClientTokenResponse
- (ICLibraryAuthServiceClientTokenResponse)initWithResponseDictionary:(id)dictionary;
- (ICLibraryAuthServiceClientTokenResponse)initWithResultCode:(int)code;
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

- (ICLibraryAuthServiceClientTokenResponse)initWithResultCode:(int)code
{
  result = [(ICLibraryAuthServiceClientTokenResponse *)self init];
  if (result)
  {
    result->_resultCode = code;
    result->_success = code == 200;
  }

  return result;
}

- (ICLibraryAuthServiceClientTokenResponse)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(ICLibraryAuthServiceClientTokenResponse *)self init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [dictionaryCopy objectForKey:@"resultCode"];
  if (_NSIsNSNumber())
  {
    v5->_resultCode = [v6 intValue];
  }

  v7 = [dictionaryCopy objectForKey:@"serverHostName"];

  if (_NSIsNSString())
  {
    objc_storeStrong(&v5->_serverHostName, v7);
  }

  v8 = [dictionaryCopy objectForKey:@"serverInstance"];

  if (_NSIsNSNumber())
  {
    v5->_serverInstance = [v8 longLongValue];
  }

  v9 = [dictionaryCopy objectForKey:@"success"];

  if (_NSIsNSNumber())
  {
    bOOLValue = [v9 BOOLValue];
LABEL_12:
    v5->_success = bOOLValue;
    goto LABEL_13;
  }

  if (_NSIsNSString())
  {
    bOOLValue = [v9 isEqualToString:@"true"];
    goto LABEL_12;
  }

LABEL_13:
  v11 = [dictionaryCopy objectForKey:@"result"];

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