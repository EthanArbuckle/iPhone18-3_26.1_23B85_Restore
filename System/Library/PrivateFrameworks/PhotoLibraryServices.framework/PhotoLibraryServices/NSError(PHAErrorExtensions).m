@interface NSError(PHAErrorExtensions)
+ (id)pl_analysisErrorForInvalidParameterValue:()PHAErrorExtensions named:;
+ (id)pl_analysisErrorWithCode:()PHAErrorExtensions;
+ (id)pl_analysisErrorWithCode:()PHAErrorExtensions localizedDescription:userInfo:;
+ (id)pl_analysisErrorWithCode:()PHAErrorExtensions userInfo:;
@end

@implementation NSError(PHAErrorExtensions)

+ (id)pl_analysisErrorForInvalidParameterValue:()PHAErrorExtensions named:
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The '%@' parameter has an invalid value %@", a4, a3];
  v6 = [a1 pl_analysisErrorWithCode:2 localizedDescription:v5];

  return v6;
}

+ (id)pl_analysisErrorWithCode:()PHAErrorExtensions localizedDescription:userInfo:
{
  v8 = a4;
  v9 = a5;
  if ([v8 length])
  {
    if (v9)
    {
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v11 = v10;
    [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v9 = v11;
  }

  v12 = [a1 errorWithDomain:@"com.apple.photoanalysis" code:a3 userInfo:v9];

  return v12;
}

+ (id)pl_analysisErrorWithCode:()PHAErrorExtensions userInfo:
{
  v6 = a4;
  v7 = PHAErrorDescriptionForCode(a3);
  v8 = [a1 pl_analysisErrorWithCode:a3 localizedDescription:v7 userInfo:v6];

  return v8;
}

+ (id)pl_analysisErrorWithCode:()PHAErrorExtensions
{
  v5 = PHAErrorDescriptionForCode(a3);
  v6 = [a1 pl_analysisErrorWithCode:a3 localizedDescription:v5 userInfo:0];

  return v6;
}

@end