@interface _UILegibilitySettings(SpringBoard)
- (BOOL)sb_isEqualToLegibilitySettings:()SpringBoard;
- (__CFString)sb_styleString;
- (id)descriptionBuilderWithMultilinePrefix:()SpringBoard;
- (id)descriptionWithMultilinePrefix:()SpringBoard;
- (id)sb_copy;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation _UILegibilitySettings(SpringBoard)

- (id)succinctDescriptionBuilder
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:a1];
  v3 = [a1 sb_styleString];
  v4 = [v2 appendObject:v3 withName:@"style"];

  return v2;
}

- (__CFString)sb_styleString
{
  v1 = [a1 style];
  v2 = @"Default";
  if (v1 == 2)
  {
    v2 = @"Dark";
  }

  if (v1 == 1)
  {
    return @"Light";
  }

  else
  {
    return v2;
  }
}

- (id)sb_copy
{
  v2 = objc_alloc(MEMORY[0x1E69DD5B8]);
  v3 = [a1 style];
  v4 = [a1 primaryColor];
  v5 = [a1 secondaryColor];
  v6 = [a1 shadowColor];
  v7 = [v2 initWithStyle:v3 primaryColor:v4 secondaryColor:v5 shadowColor:v6];

  return v7;
}

- (BOOL)sb_isEqualToLegibilitySettings:()SpringBoard
{
  v4 = a3;
  if (a1 == v4 || ([a1 isEqual:v4] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [a1 primaryColor];
    v7 = [v4 primaryColor];
    v8 = [a1 secondaryColor];
    v9 = [v4 secondaryColor];
    v5 = (([v6 _isSimilarToColor:v7 withinPercentage:0.01] & 1) != 0 || !(v6 | v7)) && ((objc_msgSend(v8, "_isSimilarToColor:withinPercentage:", v9, 0.01) & 1) != 0 || !(v8 | v9));
  }

  return v5;
}

- (id)succinctDescription
{
  v1 = [a1 succinctDescriptionBuilder];
  v2 = [v1 build];

  return v2;
}

- (id)descriptionWithMultilinePrefix:()SpringBoard
{
  v1 = [a1 descriptionBuilderWithMultilinePrefix:?];
  v2 = [v1 build];

  return v2;
}

- (id)descriptionBuilderWithMultilinePrefix:()SpringBoard
{
  v4 = a3;
  v5 = [a1 succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___UILegibilitySettings_SpringBoard__descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E807F290;
  v6 = v5;
  v10 = v6;
  v11 = a1;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

@end