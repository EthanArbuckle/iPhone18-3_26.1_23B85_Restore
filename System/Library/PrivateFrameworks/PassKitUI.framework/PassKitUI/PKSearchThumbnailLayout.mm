@interface PKSearchThumbnailLayout
- (id)_modifiedLayoutAttributes:(id)attributes;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
@end

@implementation PKSearchThumbnailLayout

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = PKSearchThumbnailLayout;
  v4 = [(PKSearchThumbnailLayout *)&v7 layoutAttributesForItemAtIndexPath:path];
  v5 = [(PKSearchThumbnailLayout *)self _modifiedLayoutAttributes:v4];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v10.receiver = self;
  v10.super_class = PKSearchThumbnailLayout;
  v4 = [(PKSearchThumbnailLayout *)&v10 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = PKSearchThumbnailLayout;
  v5 = [(PKSearchThumbnailLayout *)&v8 layoutAttributesForSupplementaryViewOfKind:kind atIndexPath:path];
  v6 = [(PKSearchThumbnailLayout *)self _modifiedLayoutAttributes:v5];

  return v6;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = PKSearchThumbnailLayout;
  v5 = [(PKSearchThumbnailLayout *)&v8 layoutAttributesForDecorationViewOfKind:kind atIndexPath:path];
  v6 = [(PKSearchThumbnailLayout *)self _modifiedLayoutAttributes:v5];

  return v6;
}

- (id)_modifiedLayoutAttributes:(id)attributes
{
  v4 = [attributes copy];
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