@interface SXSpecificComponentLayoutInstruction
+ (id)instructionWithIdentifier:(id)a3;
- (BOOL)isFulfilledForBlueprint:(id)a3;
- (NSString)description;
@end

@implementation SXSpecificComponentLayoutInstruction

+ (id)instructionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[1];
  v5[1] = v4;

  return v5;
}

- (BOOL)isFulfilledForBlueprint:(id)a3
{
  v4 = a3;
  v5 = [(SXSpecificComponentLayoutInstruction *)self componentIdentifier];
  v6 = [v4 componentBlueprintForComponentIdentifier:v5 includeChildren:1];

  LOBYTE(v5) = [v6 hasValidLayout];
  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SXSpecificComponentLayoutInstruction *)self componentIdentifier];
  v4 = [v2 stringWithFormat:@"Require valid layout for component with identifier: %@", v3];

  return v4;
}

@end