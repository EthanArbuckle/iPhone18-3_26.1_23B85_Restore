@interface CarouselAdView
- (CGRect)frame;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didMoveToWindow;
- (void)didSelectActionButtonWithSender:(id)sender;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setFrame:(CGRect)frame;
@end

@implementation CarouselAdView

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1C1A6D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D6CC();
  viewCopy = view;
  selfCopy = self;
  sub_1C19E7CC4(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1C19E7FBC();
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  selfCopy = self;
  sub_1C1A5C008();
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    selfCopy = self;
    sub_1C1A5C008();
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  sub_1C19E8380(draggingCopy, &offset->x, x);
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_1C1A6D6EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D6CC();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
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

- (void)didSelectActionButtonWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1C1A5B5E8(senderCopy);
  sub_1C1A5B780();
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1C1A6D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D6CC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1C1A6B968(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end