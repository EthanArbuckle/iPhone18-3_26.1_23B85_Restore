@interface WFRemoteQuarantineDecision
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFRemoteQuarantineDecision

+ (id)JSONKeyPathsByPropertyKey
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"policy";
  v5[1] = @"errorTitle";
  v6[0] = @"policy";
  v6[1] = @"errorTitle";
  v5[2] = @"errorMessage";
  v6[2] = @"errorMessage";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end