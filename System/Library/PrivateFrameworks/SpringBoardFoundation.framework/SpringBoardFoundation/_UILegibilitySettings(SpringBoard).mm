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
  v2 = [MEMORY[0x1E698E680] builderWithObject:self];
  sb_styleString = [self sb_styleString];
  v4 = [v2 appendObject:sb_styleString withName:@"style"];

  return v2;
}

- (__CFString)sb_styleString
{
  style = [self style];
  v2 = @"Default";
  if (style == 2)
  {
    v2 = @"Dark";
  }

  if (style == 1)
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
  style = [self style];
  primaryColor = [self primaryColor];
  secondaryColor = [self secondaryColor];
  shadowColor = [self shadowColor];
  v7 = [v2 initWithStyle:style primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:shadowColor];

  return v7;
}

- (BOOL)sb_isEqualToLegibilitySettings:()SpringBoard
{
  v4 = a3;
  if (self == v4 || ([self isEqual:v4] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    primaryColor = [self primaryColor];
    primaryColor2 = [v4 primaryColor];
    secondaryColor = [self secondaryColor];
    secondaryColor2 = [v4 secondaryColor];
    v5 = (([primaryColor _isSimilarToColor:primaryColor2 withinPercentage:0.01] & 1) != 0 || !(primaryColor | primaryColor2)) && ((objc_msgSend(secondaryColor, "_isSimilarToColor:withinPercentage:", secondaryColor2, 0.01) & 1) != 0 || !(secondaryColor | secondaryColor2));
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:()SpringBoard
{
  v1 = [self descriptionBuilderWithMultilinePrefix:?];
  build = [v1 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:()SpringBoard
{
  v4 = a3;
  succinctDescriptionBuilder = [self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___UILegibilitySettings_SpringBoard__descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E807F290;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

@end