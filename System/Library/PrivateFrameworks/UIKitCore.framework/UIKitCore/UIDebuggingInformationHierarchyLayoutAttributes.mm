@interface UIDebuggingInformationHierarchyLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIDebuggingInformationHierarchyLayoutAttributes

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = UIDebuggingInformationHierarchyLayoutAttributes;
  if ([(UICollectionViewLayoutAttributes *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    lineColor = [equalCopy lineColor];
    lineColor2 = [(UIDebuggingInformationHierarchyLayoutAttributes *)self lineColor];
    v7 = lineColor == lineColor2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = UIDebuggingInformationHierarchyLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v7 copyWithZone:zone];
  lineColor = [(UIDebuggingInformationHierarchyLayoutAttributes *)self lineColor];
  [v4 setLineColor:lineColor];

  return v4;
}

@end