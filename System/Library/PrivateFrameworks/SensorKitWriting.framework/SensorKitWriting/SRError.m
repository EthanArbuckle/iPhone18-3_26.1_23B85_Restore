@interface SRError
+ (id)authorizationErrorWithStatus:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)invalidInfoPlistErrorWithMissingKey:(id)a3 code:(int64_t)a4;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)a3
{
  v5 = descriptionFromErrorCode(a3);
  v6 = recoverySuggestionFromErrorCode(a3);

  return [a1 errorWithCode:a3 description:v5 recoverySuggestion:v6];
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v7 = descriptionFromErrorCode(a3);
  v8 = recoverySuggestionFromErrorCode(a3);

  return [a1 errorWithCode:a3 description:v7 recoverySuggestion:v8 underlyingError:a4];
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6
{
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v11 = v10;
  if (a4)
  {
    [v10 setObject:a4 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (a5)
  {
    [v11 setObject:a5 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (a6)
  {
    [v11 setObject:a6 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v12 = MEMORY[0x277CCA9B8];
  v13 = SRErrorDomain;

  return [v12 errorWithDomain:v13 code:a3 userInfo:v11];
}

+ (id)authorizationErrorWithStatus:(int64_t)a3
{
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SRErrorNoAuthorization", &stru_2877002B0, 0}];
  v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SRErrorNoAuthorizationRecovery", &stru_2877002B0, 0}];
  v7 = [a1 errorWithCode:a3];

  return [a1 errorWithCode:1 description:v5 recoverySuggestion:v6 underlyingError:v7];
}

+ (id)invalidInfoPlistErrorWithMissingKey:(id)a3 code:(int64_t)a4
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Your bundle's Info.plist must have an %@ key", a3];

  return [a1 errorWithCode:a4 description:v6 recoverySuggestion:0];
}

@end