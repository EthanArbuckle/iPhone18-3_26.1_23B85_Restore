@interface NSError(WFAdditions)
+ (id)wf_errorWithCode:()WFAdditions encapsulatedError:userInfo:;
+ (id)wf_errorWithCode:()WFAdditions userInfo:;
@end

@implementation NSError(WFAdditions)

+ (id)wf_errorWithCode:()WFAdditions userInfo:
{
  v5 = [a4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  v9 = *MEMORY[0x277CCA450];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (!v10)
  {
    if ((a3 - 1) > 0xE)
    {
      v10 = @"An unknown error occured.  Please file a radar with whatever it is you did to cause this.";
    }

    else
    {
      v10 = off_279E6EF00[a3 - 1];
    }

    [v8 setObject:v10 forKeyedSubscript:v9];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WeatherFoundationErrorDomain" code:a3 userInfo:v8];

  return v11;
}

+ (id)wf_errorWithCode:()WFAdditions encapsulatedError:userInfo:
{
  v7 = a4;
  v8 = [a5 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  if (v7)
  {
    [v11 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v12 = [MEMORY[0x277CCA9B8] wf_errorWithCode:a3 userInfo:v11];

  return v12;
}

@end