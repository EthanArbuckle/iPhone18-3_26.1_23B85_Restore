@interface PHACurareShadowEvaluationUtilities
+ (BOOL)generateError:(id *)a3 errorCode:(int)a4 errorDomain:(id)a5 message:(id)a6 underlyingError:(id)a7;
@end

@implementation PHACurareShadowEvaluationUtilities

+ (BOOL)generateError:(id *)a3 errorCode:(int)a4 errorDomain:(id)a5 message:(id)a6 underlyingError:(id)a7
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = a4;
    v12 = *MEMORY[0x277CCA7E8];
    v21 = *MEMORY[0x277CCA450];
    v22 = v12;
    v23[0] = a6;
    v13 = MEMORY[0x277CCACA8];
    v14 = a6;
    v15 = a5;
    v16 = [v13 stringWithFormat:@"%@", a7, v21, v22, v23[0]];
    v23[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v21 count:2];
    v18 = [v10 errorWithDomain:v15 code:v11 userInfo:v17];

    v19 = v18;
    *a3 = v18;
  }

  return 1;
}

@end