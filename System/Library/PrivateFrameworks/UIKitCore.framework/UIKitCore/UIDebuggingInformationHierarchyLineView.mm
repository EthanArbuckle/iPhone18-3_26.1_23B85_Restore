@interface UIDebuggingInformationHierarchyLineView
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation UIDebuggingInformationHierarchyLineView

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7.receiver = self;
  v7.super_class = UIDebuggingInformationHierarchyLineView;
  [(UICollectionReusableView *)&v7 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    lineColor = [attributesCopy lineColor];
    lineColor = self->_lineColor;
    self->_lineColor = lineColor;
  }
}

@end