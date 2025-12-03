@interface SXLayoutBlueprintProvider
- (void)updateBlueprint:(id)blueprint;
@end

@implementation SXLayoutBlueprintProvider

- (void)updateBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  if (blueprintCopy)
  {
    blueprint = [(SXLayoutBlueprintProvider *)self blueprint];
    v5 = [blueprintCopy isEqual:blueprint];

    if ((v5 & 1) == 0)
    {
      [(SXLayoutBlueprintProvider *)self setBlueprint:blueprintCopy];
    }
  }
}

@end