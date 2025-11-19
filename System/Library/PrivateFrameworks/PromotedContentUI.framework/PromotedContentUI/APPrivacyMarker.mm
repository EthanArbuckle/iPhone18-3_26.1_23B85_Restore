@interface APPrivacyMarker
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (void)sizeCategoryChanged:(id)a3;
- (void)systemColorStatusChanged:(id)a3;
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  LOBYTE(v4) = sub_1C1A4F3C0(v4, x, y);

  return v4 & 1;
}

- (void)systemColorStatusChanged:(id)a3
{
  v4 = sub_1C1A6D25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  v8 = self;
  sub_1C1A4F56C();

  (*(v5 + 8))(v7, v4);
}

- (void)sizeCategoryChanged:(id)a3
{
  v4 = sub_1C1A6D25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR___APPrivacyMarker_adjustsFontForContentSizeCategory) == 1)
  {
    v8 = self;
    sub_1C19970C4();
  }

  (*(v5 + 8))(v7, v4);
}

@end