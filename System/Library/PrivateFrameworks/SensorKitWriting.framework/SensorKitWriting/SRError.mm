@interface SRError
+ (id)authorizationErrorWithStatus:(int64_t)status;
+ (id)errorWithCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)invalidInfoPlistErrorWithMissingKey:(id)key code:(int64_t)code;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)code
{
  v5 = descriptionFromErrorCode(code);
  v6 = recoverySuggestionFromErrorCode(code);

  return [self errorWithCode:code description:v5 recoverySuggestion:v6];
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v7 = descriptionFromErrorCode(code);
  v8 = recoverySuggestionFromErrorCode(code);

  return [self errorWithCode:code description:v7 recoverySuggestion:v8 underlyingError:error];
}

+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error
{
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v11 = v10;
  if (description)
  {
    [v10 setObject:description forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (suggestion)
  {
    [v11 setObject:suggestion forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (error)
  {
    [v11 setObject:error forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v12 = MEMORY[0x277CCA9B8];
  v13 = SRErrorDomain;

  return [v12 errorWithDomain:v13 code:code userInfo:v11];
}

+ (id)authorizationErrorWithStatus:(int64_t)status
{
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SRErrorNoAuthorization", &stru_2877002B0, 0}];
  v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SRErrorNoAuthorizationRecovery", &stru_2877002B0, 0}];
  v7 = [self errorWithCode:status];

  return [self errorWithCode:1 description:v5 recoverySuggestion:v6 underlyingError:v7];
}

+ (id)invalidInfoPlistErrorWithMissingKey:(id)key code:(int64_t)code
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Your bundle's Info.plist must have an %@ key", key];

  return [self errorWithCode:code description:v6 recoverySuggestion:0];
}

@end