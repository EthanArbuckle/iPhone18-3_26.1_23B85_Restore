@interface APPrivacyMarker
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (void)sizeCategoryChanged:(id)changed;
- (void)systemColorStatusChanged:(id)changed;
@end

@implementation APPrivacyMarker

- (CGSize)intrinsicContentSize
{
  [(APPrivacyMarker *)self frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_1C1A4F3C0(eventCopy, x, y);

  return eventCopy & 1;
}

- (void)systemColorStatusChanged:(id)changed
{
  v4 = sub_1C1A6D25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  selfCopy = self;
  sub_1C1A4F56C();

  (*(v5 + 8))(v7, v4);
}

- (void)sizeCategoryChanged:(id)changed
{
  v4 = sub_1C1A6D25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR___APPrivacyMarker_adjustsFontForContentSizeCategory) == 1)
  {
    selfCopy = self;
    sub_1C19970C4();
  }

  (*(v5 + 8))(v7, v4);
}

@end