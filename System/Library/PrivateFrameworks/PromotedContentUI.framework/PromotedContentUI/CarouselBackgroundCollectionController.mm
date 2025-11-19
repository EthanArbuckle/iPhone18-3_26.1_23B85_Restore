@interface CarouselBackgroundCollectionController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (_TtC17PromotedContentUI38CarouselBackgroundCollectionController)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
@end

@implementation CarouselBackgroundCollectionController

- (_TtC17PromotedContentUI38CarouselBackgroundCollectionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_1C1A6D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D6CC();
  v10 = a3;
  v11 = self;
  v12 = sub_1C19B0BAC(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = sub_1C1A6D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D6CC();
  v10 = *(v7 + 8);
  v11 = self;
  v10(v9, v6);
  v12 = *(&v11->super.isa + OBJC_IVAR____TtC17PromotedContentUI38CarouselBackgroundCollectionController_contentSize);
  v13 = 0.0;
  v14 = 0.0;
  if (v12 != 0.0)
  {
    v13 = v12 / (*(&v11->super.isa + OBJC_IVAR____TtC17PromotedContentUI38CarouselBackgroundCollectionController_elements))[2];
    v14 = *&v11->elements[OBJC_IVAR____TtC17PromotedContentUI38CarouselBackgroundCollectionController_contentSize];
  }

  v15 = v13;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end