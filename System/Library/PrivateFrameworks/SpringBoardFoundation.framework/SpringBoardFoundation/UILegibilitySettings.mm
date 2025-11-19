@interface UILegibilitySettings
@end

@implementation UILegibilitySettings

void __76___UILegibilitySettings_SpringBoard__descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) primaryColor];
  v4 = [v2 appendObject:v3 withName:@"primaryColor"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) secondaryColor];
  v7 = [v5 appendObject:v6 withName:@"secondaryColor"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) shadowColor];
  v10 = [v8 appendObject:v9 withName:@"shadowColor"];

  v11 = *(a1 + 32);
  v13 = [*(a1 + 40) contentColor];
  v12 = [v11 appendObject:v13 withName:@"contentColor"];
}

@end