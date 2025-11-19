@interface SXContainerComponentBlueprint
- (id)copyWithZone:(_NSZone *)a3;
- (void)setParentLayoutBlueprint:(id)a3;
@end

@implementation SXContainerComponentBlueprint

- (void)setParentLayoutBlueprint:(id)a3
{
  v6.receiver = self;
  v6.super_class = SXContainerComponentBlueprint;
  v4 = a3;
  [(SXComponentBlueprint *)&v6 setParentLayoutBlueprint:v4];
  v5 = [(SXContainerComponentBlueprint *)self layoutBlueprint:v6.receiver];
  [v5 setParentLayoutBlueprint:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SXContainerComponentBlueprint;
  v5 = [(SXComponentBlueprint *)&v10 copyWithZone:?];
  v6 = [(SXContainerComponentBlueprint *)self layoutBlueprint];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[48];
  v5[48] = v7;

  return v5;
}

@end