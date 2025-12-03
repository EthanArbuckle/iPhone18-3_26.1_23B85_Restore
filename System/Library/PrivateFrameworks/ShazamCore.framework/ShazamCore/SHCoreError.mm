@interface SHCoreError
+ (BOOL)annotateError:(id *)error code:(int64_t)code underlyingError:(id)underlyingError keyOverrides:(id)overrides;
+ (BOOL)annotateError:(id *)error withError:(id)withError;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error keyOverrides:(id)overrides;
+ (id)messageForCode:(int64_t)code;
@end

@implementation SHCoreError

+ (BOOL)annotateError:(id *)error code:(int64_t)code underlyingError:(id)underlyingError keyOverrides:(id)overrides
{
  v8 = [SHCoreError errorWithCode:code underlyingError:underlyingError keyOverrides:overrides];
  LOBYTE(error) = [self annotateError:error withError:v8];

  return error;
}

+ (BOOL)annotateError:(id *)error withError:(id)withError
{
  if (error)
  {
    *error = withError;
  }

  return error != 0;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error keyOverrides:(id)overrides
{
  v8 = MEMORY[0x277CBEB38];
  overridesCopy = overrides;
  errorCopy = error;
  dictionary = [v8 dictionary];
  [dictionary setValue:errorCopy forKey:*MEMORY[0x277CCA7E8]];

  v12 = [self messageForCode:code];
  [dictionary setValue:v12 forKey:*MEMORY[0x277CCA068]];

  [dictionary setValuesForKeysWithDictionary:overridesCopy];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamCore" code:code userInfo:dictionary];

  return v13;
}

+ (id)messageForCode:(int64_t)code
{
  v3 = @"A compression error occurred.";
  v4 = @"The response is missing required properties";
  v5 = @"The media item is missing one or more required properties";
  v6 = @"A decompression error occurred.";
  if (code != 302)
  {
    v6 = @"A compression error occurred.";
  }

  if (code != 400)
  {
    v5 = v6;
  }

  if (code != 401)
  {
    v4 = v5;
  }

  v7 = @"An attempt was made to register the same worker twice";
  v8 = @"There was an error reading the supplied file.";
  if (code != 300)
  {
    v8 = @"A compression error occurred.";
  }

  if (code != 106)
  {
    v7 = v8;
  }

  if (code <= 301)
  {
    v4 = v7;
  }

  v9 = @"One or more audio recorders were unable to start";
  v10 = @"Told not to resume audio recording after an interruption";
  if (code != 105)
  {
    v10 = @"A compression error occurred.";
  }

  if (code != 104)
  {
    v9 = v10;
  }

  if (code == 102)
  {
    v9 = @"Missing entitlements";
  }

  if (code == 101)
  {
    v3 = @"The match attempt was rejected";
  }

  if (code == 100)
  {
    v3 = @"The Daemon exited";
  }

  if (code > 101)
  {
    v3 = v9;
  }

  if (code <= 105)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

@end