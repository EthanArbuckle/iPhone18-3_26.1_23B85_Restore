@interface SXCollectionRowLayout
- (id)description;
@end

@implementation SXCollectionRowLayout

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"intendedComponentsPerRow: %lu; ", -[SXCollectionRowLayout intendedComponentsPerRow](self, "intendedComponentsPerRow")];
  [v3 appendFormat:@"componentsPerRow: %lu; ", -[SXCollectionRowLayout componentsPerRow](self, "componentsPerRow")];
  [(SXCollectionRowLayout *)self leftMargin];
  [v3 appendFormat:@"leftMargin: %f; ", v4];
  [(SXCollectionRowLayout *)self rightMargin];
  [v3 appendFormat:@"rightMargin: %f; ", v5];
  [(SXCollectionRowLayout *)self componentWidth];
  [v3 appendFormat:@"componentWidth: %f; ", v6];
  [(SXCollectionRowLayout *)self spaceBetweenComponents];
  [v3 appendFormat:@"spaceBetweenComponents: %f", v7];
  [v3 appendString:@">"];

  return v3;
}

@end