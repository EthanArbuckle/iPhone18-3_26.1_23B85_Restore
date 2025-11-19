@interface NSError(LTTranslationDaemonError)
+ (id)ltd_errorWithCode:()LTTranslationDaemonError description:userInfo:;
@end

@implementation NSError(LTTranslationDaemonError)

+ (id)ltd_errorWithCode:()LTTranslationDaemonError description:userInfo:
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = v10;
  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"LTTranslationDaemonErrorDomain" code:a3 userInfo:v11];

  return v12;
}

@end