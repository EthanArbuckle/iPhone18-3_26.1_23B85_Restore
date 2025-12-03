@interface NSError(SVVideoError)
+ (id)videoErrorWithUnderlyingError:()SVVideoError;
+ (uint64_t)errorCodeForUnderlyingErrorDomain:()SVVideoError;
@end

@implementation NSError(SVVideoError)

+ (id)videoErrorWithUnderlyingError:()SVVideoError
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  domain = [v4 domain];
  v6 = [self errorCodeForUnderlyingErrorDomain:domain];

  if (v4)
  {
    v11 = v4;
    v12[0] = *MEMORY[0x277CCA7E8];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SVVideoErrorDomain" code:v6 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (uint64_t)errorCodeForUnderlyingErrorDomain:()SVVideoError
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CE5DC0]])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end