@interface PKSearchThumbnailLayout
- (id)_modifiedLayoutAttributes:(id)a3;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
@end

@implementation PKSearchThumbnailLayout

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKSearchThumbnailLayout;
  v4 = [(PKSearchThumbnailLayout *)&v7 layoutAttributesForItemAtIndexPath:a3];
  v5 = [(PKSearchThumbnailLayout *)self _modifiedLayoutAttributes:v4];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PKSearchThumbnailLayout;
  v4 = [(PKSearchThumbnailLayout *)&v10 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [v4 mutableCopy];

  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      v8 = [(PKSearchThumbnailLayout *)self _modifiedLayoutAttributes:v7];

      [v5 setObject:v8 atIndexedSubscript:v6];
      ++v6;
    }

    while (v6 < [v5 count]);
  }

  return v5;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKSearchThumbnailLayout;
  v5 = [(PKSearchThumbnailLayout *)&v8 layoutAttributesForSupplementaryViewOfKind:a3 atIndexPath:a4];
  v6 = [(PKSearchThumbnailLayout *)self _modifiedLayoutAttributes:v5];

  return v6;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKSearchThumbnailLayout;
  v5 = [(PKSearchThumbnailLayout *)&v8 layoutAttributesForDecorationViewOfKind:a3 atIndexPath:a4];
  v6 = [(PKSearchThumbnailLayout *)self _modifiedLayoutAttributes:v5];

  return v6;
}

- (id)_modifiedLayoutAttributes:(id)a3
{
  v4 = [a3 copy];
  v5 = v4;
  v6 = 1.0;
  if (self->_hidden)
  {
    v6 = 0.0;
  }

  [v4 setAlpha:v6];

  return v5;
}

@end