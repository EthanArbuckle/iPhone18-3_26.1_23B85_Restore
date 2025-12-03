@interface SXContainerComponentBlueprint
- (id)copyWithZone:(_NSZone *)zone;
- (void)setParentLayoutBlueprint:(id)blueprint;
@end

@implementation SXContainerComponentBlueprint

- (void)setParentLayoutBlueprint:(id)blueprint
{
  v6.receiver = self;
  v6.super_class = SXContainerComponentBlueprint;
  blueprintCopy = blueprint;
  [(SXComponentBlueprint *)&v6 setParentLayoutBlueprint:blueprintCopy];
  v5 = [(SXContainerComponentBlueprint *)self layoutBlueprint:v6.receiver];
  [v5 setParentLayoutBlueprint:blueprintCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SXContainerComponentBlueprint;
  v5 = [(SXComponentBlueprint *)&v10 copyWithZone:?];
  layoutBlueprint = [(SXContainerComponentBlueprint *)self layoutBlueprint];
  v7 = [layoutBlueprint copyWithZone:zone];
  v8 = v5[48];
  v5[48] = v7;

  return v5;
}

@end