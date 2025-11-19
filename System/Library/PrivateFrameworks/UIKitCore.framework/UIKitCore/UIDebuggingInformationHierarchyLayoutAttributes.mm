@interface UIDebuggingInformationHierarchyLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIDebuggingInformationHierarchyLayoutAttributes

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIDebuggingInformationHierarchyLayoutAttributes;
  if ([(UICollectionViewLayoutAttributes *)&v9 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 lineColor];
    v6 = [(UIDebuggingInformationHierarchyLayoutAttributes *)self lineColor];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = UIDebuggingInformationHierarchyLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v7 copyWithZone:a3];
  v5 = [(UIDebuggingInformationHierarchyLayoutAttributes *)self lineColor];
  [v4 setLineColor:v5];

  return v4;
}

@end