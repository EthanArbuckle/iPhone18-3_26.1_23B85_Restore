@interface SXSpecificComponentLayoutInstruction
+ (id)instructionWithIdentifier:(id)identifier;
- (BOOL)isFulfilledForBlueprint:(id)blueprint;
- (NSString)description;
@end

@implementation SXSpecificComponentLayoutInstruction

+ (id)instructionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  v5[1] = identifierCopy;

  return v5;
}

- (BOOL)isFulfilledForBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  componentIdentifier = [(SXSpecificComponentLayoutInstruction *)self componentIdentifier];
  v6 = [blueprintCopy componentBlueprintForComponentIdentifier:componentIdentifier includeChildren:1];

  LOBYTE(componentIdentifier) = [v6 hasValidLayout];
  return componentIdentifier;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  componentIdentifier = [(SXSpecificComponentLayoutInstruction *)self componentIdentifier];
  v4 = [v2 stringWithFormat:@"Require valid layout for component with identifier: %@", componentIdentifier];

  return v4;
}

@end