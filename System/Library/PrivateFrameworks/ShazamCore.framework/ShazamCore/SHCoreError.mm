@interface SHCoreError
+ (BOOL)annotateError:(id *)a3 code:(int64_t)a4 underlyingError:(id)a5 keyOverrides:(id)a6;
+ (BOOL)annotateError:(id *)a3 withError:(id)a4;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 keyOverrides:(id)a5;
+ (id)messageForCode:(int64_t)a3;
@end

@implementation SHCoreError

+ (BOOL)annotateError:(id *)a3 code:(int64_t)a4 underlyingError:(id)a5 keyOverrides:(id)a6
{
  v8 = [SHCoreError errorWithCode:a4 underlyingError:a5 keyOverrides:a6];
  LOBYTE(a3) = [a1 annotateError:a3 withError:v8];

  return a3;
}

+ (BOOL)annotateError:(id *)a3 withError:(id)a4
{
  if (a3)
  {
    *a3 = a4;
  }

  return a3 != 0;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 keyOverrides:(id)a5
{
  v8 = MEMORY[0x277CBEB38];
  v9 = a5;
  v10 = a4;
  v11 = [v8 dictionary];
  [v11 setValue:v10 forKey:*MEMORY[0x277CCA7E8]];

  v12 = [a1 messageForCode:a3];
  [v11 setValue:v12 forKey:*MEMORY[0x277CCA068]];

  [v11 setValuesForKeysWithDictionary:v9];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamCore" code:a3 userInfo:v11];

  return v13;
}

+ (id)messageForCode:(int64_t)a3
{
  v3 = @"A compression error occurred.";
  v4 = @"The response is missing required properties";
  v5 = @"The media item is missing one or more required properties";
  v6 = @"A decompression error occurred.";
  if (a3 != 302)
  {
    v6 = @"A compression error occurred.";
  }

  if (a3 != 400)
  {
    v5 = v6;
  }

  if (a3 != 401)
  {
    v4 = v5;
  }

  v7 = @"An attempt was made to register the same worker twice";
  v8 = @"There was an error reading the supplied file.";
  if (a3 != 300)
  {
    v8 = @"A compression error occurred.";
  }

  if (a3 != 106)
  {
    v7 = v8;
  }

  if (a3 <= 301)
  {
    v4 = v7;
  }

  v9 = @"One or more audio recorders were unable to start";
  v10 = @"Told not to resume audio recording after an interruption";
  if (a3 != 105)
  {
    v10 = @"A compression error occurred.";
  }

  if (a3 != 104)
  {
    v9 = v10;
  }

  if (a3 == 102)
  {
    v9 = @"Missing entitlements";
  }

  if (a3 == 101)
  {
    v3 = @"The match attempt was rejected";
  }

  if (a3 == 100)
  {
    v3 = @"The Daemon exited";
  }

  if (a3 > 101)
  {
    v3 = v9;
  }

  if (a3 <= 105)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

@end