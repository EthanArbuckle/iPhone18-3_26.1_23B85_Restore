@interface UICollectionViewCompositionalLayoutConfiguration
+ (id)defaultConfiguration;
- (UICollectionViewCompositionalLayoutConfiguration)initWithScrollDirection:(int64_t)a3 interSectionSpacing:(double)a4 boundarySupplememtaryItems:(id)a5 contentInsetsReference:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)differencesFromConfiguration:(id)a3;
@end

@implementation UICollectionViewCompositionalLayoutConfiguration

+ (id)defaultConfiguration
{
  v2 = [a1 alloc];
  v3 = [v2 initWithScrollDirection:0 interSectionSpacing:MEMORY[0x1E695E0F0] boundarySupplememtaryItems:2 contentInsetsReference:0.0];

  return v3;
}

- (UICollectionViewCompositionalLayoutConfiguration)initWithScrollDirection:(int64_t)a3 interSectionSpacing:(double)a4 boundarySupplememtaryItems:(id)a5 contentInsetsReference:(int64_t)a6
{
  v15.receiver = self;
  v15.super_class = UICollectionViewCompositionalLayoutConfiguration;
  v10 = [(UICollectionViewCompositionalLayoutConfiguration *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_contentInsetsReference = a6;
    v10->_scrollDirection = a3;
    v10->_interSectionSpacing = a4;
    if (a5)
    {
      v12 = [a5 copy];
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    boundarySupplementaryItems = v11->_boundarySupplementaryItems;
    v11->_boundarySupplementaryItems = v12;
  }

  return v11;
}

- (unint64_t)differencesFromConfiguration:(id)a3
{
  if (!a3)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:2266 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(UICollectionViewCompositionalLayoutConfiguration *)self scrollDirection];
  v6 = v5 != [a3 scrollDirection];
  [(UICollectionViewCompositionalLayoutConfiguration *)self interSectionSpacing];
  v8 = v7;
  [a3 interSectionSpacing];
  if (vabdd_f64(v8, v9) <= 0.001)
  {
    v10 = 2 * v6;
  }

  else
  {
    v10 = (2 * v6) | 4;
  }

  v11 = [(UICollectionViewCompositionalLayoutConfiguration *)self boundarySupplementaryItems];
  v12 = [a3 boundarySupplementaryItems];
  v13 = [v11 isEqualToArray:v12];

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 | 8;
  }

  v15 = [(UICollectionViewCompositionalLayoutConfiguration *)self contentInsetsReference];
  if (v15 == [a3 contentInsetsReference])
  {
    return v14;
  }

  else
  {
    return v14 | 0x10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(UICollectionViewCompositionalLayoutConfiguration *)self scrollDirection];
  [(UICollectionViewCompositionalLayoutConfiguration *)self interSectionSpacing];
  v7 = v6;
  v8 = [(UICollectionViewCompositionalLayoutConfiguration *)self boundarySupplementaryItems];
  v9 = [v4 initWithScrollDirection:v5 interSectionSpacing:v8 boundarySupplememtaryItems:-[UICollectionViewCompositionalLayoutConfiguration contentInsetsReference](self contentInsetsReference:{"contentInsetsReference"), v7}];

  return v9;
}

@end