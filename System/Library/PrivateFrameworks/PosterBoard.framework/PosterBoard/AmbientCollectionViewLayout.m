@interface AmbientCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGSize)collectionViewContentSize;
- (_TtC11PosterBoard27AmbientCollectionViewLayout)init;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)prepareLayout;
@end

@implementation AmbientCollectionViewLayout

- (void)prepareLayout
{
  v2 = self;
  sub_21B657D04();
}

- (CGSize)collectionViewContentSize
{
  v2 = *(&self->super.super._collectionViewBoundsSize.width + OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_contentBounds);
  v3 = *(&self->super.super._collectionViewBoundsSize.height + OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_contentBounds);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = sub_21B6C8A04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B6C8DA4();
  v11 = v10;
  sub_21B6C8994();
  v12 = self;
  v13 = sub_21B658884(v9, v11);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_21B6C8A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  v8 = self;
  v9 = sub_21B658B00(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_21B658F60(x, y, width, height);

  if (v8)
  {
    sub_21B6335DC();
    v9 = sub_21B6C8E74();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_21B659A38(x, y);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (_TtC11PosterBoard27AmbientCollectionViewLayout)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cardSizeMultiplier) = 0x3FE6147AE147AE14;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_spacingBetweenCards) = 0x4049000000000000;
  v2 = (self + OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_contentBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedAttributes) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedSupplementaryFooterAttributes) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AmbientCollectionViewLayout();
  return [(UICollectionViewFlowLayout *)&v5 init];
}

@end