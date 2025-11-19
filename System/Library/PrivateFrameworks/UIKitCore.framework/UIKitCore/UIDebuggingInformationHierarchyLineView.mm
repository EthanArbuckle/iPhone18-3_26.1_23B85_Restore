@interface UIDebuggingInformationHierarchyLineView
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation UIDebuggingInformationHierarchyLineView

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIDebuggingInformationHierarchyLineView;
  [(UICollectionReusableView *)&v7 applyLayoutAttributes:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 lineColor];
    lineColor = self->_lineColor;
    self->_lineColor = v5;
  }
}

@end