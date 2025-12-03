@interface PHACurareShadowEvaluationUtilities
+ (BOOL)generateError:(id *)error errorCode:(int)code errorDomain:(id)domain message:(id)message underlyingError:(id)underlyingError;
@end

@implementation PHACurareShadowEvaluationUtilities

+ (BOOL)generateError:(id *)error errorCode:(int)code errorDomain:(id)domain message:(id)message underlyingError:(id)underlyingError
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    codeCopy = code;
    v12 = *MEMORY[0x277CCA7E8];
    v21 = *MEMORY[0x277CCA450];
    v22 = v12;
    v23[0] = message;
    v13 = MEMORY[0x277CCACA8];
    messageCopy = message;
    domainCopy = domain;
    v16 = [v13 stringWithFormat:@"%@", underlyingError, v21, v22, v23[0]];
    v23[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v21 count:2];
    v18 = [v10 errorWithDomain:domainCopy code:codeCopy userInfo:v17];

    v19 = v18;
    *error = v18;
  }

  return 1;
}

@end