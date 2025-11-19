@interface KNLiveVideoSourceSymbolDrawingHelper
+ (id)fontWithPointSize:(double)a3;
- (CGSize)boundsSizeForPointSize:(double)a3;
- (NSString)abbreviationText;
- (_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper)init;
- (_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper)initWithAbbreviationText:(id)a3 imageIdentifier:(int64_t)a4 tintColorIdentifier:(int64_t)a5;
- (void)drawIn:(CGRect)a3 context:(CGContext *)a4 includeBackground:(BOOL)a5;
- (void)drawWithPointSize:(double)a3 centeredIn:(CGRect)a4 context:(CGContext *)a5 includeBackground:(BOOL)a6;
- (void)setLastDrawnAbbreviationFont:(id)a3;
@end

@implementation KNLiveVideoSourceSymbolDrawingHelper

- (_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper)initWithAbbreviationText:(id)a3 imageIdentifier:(int64_t)a4 tintColorIdentifier:(int64_t)a5
{
  if (a3)
  {
    v7 = sub_275E611E8();
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return sub_275E57410(v7, v8, a4, a5);
}

- (NSString)abbreviationText
{
  if (*(self + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText + 8))
  {

    v2 = sub_275E611B8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)drawIn:(CGRect)a3 context:(CGContext *)a4 includeBackground:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = self;
  sub_275E575F8(v11, a5, x, y, width, height);
}

- (CGSize)boundsSizeForPointSize:(double)a3
{
  v4 = self;
  v5 = sub_275E588A0(a3);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)drawWithPointSize:(double)a3 centeredIn:(CGRect)a4 context:(CGContext *)a5 includeBackground:(BOOL)a6
{
  v6 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a5;
  v13 = self;
  if (v6)
  {
    sub_275E579C4(v16, x, y, width, height);
  }

  v14 = *(v13 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText + 8);
  if (v14)
  {
    sub_275E57DEC(*(v13 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText), v14, *&a3, 0, v16, x, y, width, height);
    v15 = v13;
  }

  else
  {
    if (*(v13 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_drawsInvisibleText) != 1)
    {
      sub_275E582D0(*&a3, 0, v16, x, y, width, height);
    }

    v15 = v16;
    v16 = v13;
  }
}

- (void)setLastDrawnAbbreviationFont:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationFont);
  *(self + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationFont) = a3;
  v3 = a3;
}

+ (id)fontWithPointSize:(double)a3
{
  v3 = sub_275E58F20(a3);

  return v3;
}

- (_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end