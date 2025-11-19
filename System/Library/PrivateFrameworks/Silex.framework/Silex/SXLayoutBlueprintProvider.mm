@interface SXLayoutBlueprintProvider
- (void)updateBlueprint:(id)a3;
@end

@implementation SXLayoutBlueprintProvider

- (void)updateBlueprint:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(SXLayoutBlueprintProvider *)self blueprint];
    v5 = [v6 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      [(SXLayoutBlueprintProvider *)self setBlueprint:v6];
    }
  }
}

@end