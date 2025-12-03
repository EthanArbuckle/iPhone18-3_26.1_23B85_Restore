@interface UICollectionViewCompositionalLayoutConfiguration
+ (id)defaultConfiguration;
- (UICollectionViewCompositionalLayoutConfiguration)initWithScrollDirection:(int64_t)direction interSectionSpacing:(double)spacing boundarySupplememtaryItems:(id)items contentInsetsReference:(int64_t)reference;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)differencesFromConfiguration:(id)configuration;
@end

@implementation UICollectionViewCompositionalLayoutConfiguration

+ (id)defaultConfiguration
{
  v2 = [self alloc];
  v3 = [v2 initWithScrollDirection:0 interSectionSpacing:MEMORY[0x1E695E0F0] boundarySupplememtaryItems:2 contentInsetsReference:0.0];

  return v3;
}

- (UICollectionViewCompositionalLayoutConfiguration)initWithScrollDirection:(int64_t)direction interSectionSpacing:(double)spacing boundarySupplememtaryItems:(id)items contentInsetsReference:(int64_t)reference
{
  v15.receiver = self;
  v15.super_class = UICollectionViewCompositionalLayoutConfiguration;
  v10 = [(UICollectionViewCompositionalLayoutConfiguration *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_contentInsetsReference = reference;
    v10->_scrollDirection = direction;
    v10->_interSectionSpacing = spacing;
    if (items)
    {
      v12 = [items copy];
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

- (unint64_t)differencesFromConfiguration:(id)configuration
{
  if (!configuration)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionalLayout.m" lineNumber:2266 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  scrollDirection = [(UICollectionViewCompositionalLayoutConfiguration *)self scrollDirection];
  v6 = scrollDirection != [configuration scrollDirection];
  [(UICollectionViewCompositionalLayoutConfiguration *)self interSectionSpacing];
  v8 = v7;
  [configuration interSectionSpacing];
  if (vabdd_f64(v8, v9) <= 0.001)
  {
    v10 = 2 * v6;
  }

  else
  {
    v10 = (2 * v6) | 4;
  }

  boundarySupplementaryItems = [(UICollectionViewCompositionalLayoutConfiguration *)self boundarySupplementaryItems];
  boundarySupplementaryItems2 = [configuration boundarySupplementaryItems];
  v13 = [boundarySupplementaryItems isEqualToArray:boundarySupplementaryItems2];

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 | 8;
  }

  contentInsetsReference = [(UICollectionViewCompositionalLayoutConfiguration *)self contentInsetsReference];
  if (contentInsetsReference == [configuration contentInsetsReference])
  {
    return v14;
  }

  else
  {
    return v14 | 0x10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  scrollDirection = [(UICollectionViewCompositionalLayoutConfiguration *)self scrollDirection];
  [(UICollectionViewCompositionalLayoutConfiguration *)self interSectionSpacing];
  v7 = v6;
  boundarySupplementaryItems = [(UICollectionViewCompositionalLayoutConfiguration *)self boundarySupplementaryItems];
  v9 = [v4 initWithScrollDirection:scrollDirection interSectionSpacing:boundarySupplementaryItems boundarySupplememtaryItems:-[UICollectionViewCompositionalLayoutConfiguration contentInsetsReference](self contentInsetsReference:{"contentInsetsReference"), v7}];

  return v9;
}

@end