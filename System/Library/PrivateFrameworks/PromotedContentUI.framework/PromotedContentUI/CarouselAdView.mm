@interface CarouselAdView
- (CGRect)frame;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didMoveToWindow;
- (void)didSelectActionButtonWithSender:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setFrame:(CGRect)a3;
@end

@implementation CarouselAdView

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1C1A6D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D6CC();
  v10 = a3;
  v11 = self;
  sub_1C19E7CC4(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C19E7FBC();
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v3 = self;
  sub_1C1A5C008();
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v5 = self;
    sub_1C1A5C008();
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v8 = a3;
  v9 = self;
  sub_1C19E8380(v8, &a5->x, x);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = sub_1C1A6D6EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D6CC();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = sub_1C1A03420();
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CarouselAdView();
  [(APPCPromotedContentView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1C1A54AB8(x, y, width, height);
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CarouselAdView();
  v2 = v3.receiver;
  [(CarouselAdView *)&v3 didMoveToWindow];
  sub_1C1A5C008();
}

- (void)didSelectActionButtonWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C1A5B5E8(v4);
  sub_1C1A5B780();
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
  v12 = sub_1C1A6B968(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end