@interface KNLiveVideoSourceSymbolDrawingHelper
+ (id)fontWithPointSize:(double)size;
- (CGSize)boundsSizeForPointSize:(double)size;
- (NSString)abbreviationText;
- (_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper)init;
- (_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper)initWithAbbreviationText:(id)text imageIdentifier:(int64_t)identifier tintColorIdentifier:(int64_t)colorIdentifier;
- (void)drawIn:(CGRect)in context:(CGContext *)context includeBackground:(BOOL)background;
- (void)drawWithPointSize:(double)size centeredIn:(CGRect)in context:(CGContext *)context includeBackground:(BOOL)background;
- (void)setLastDrawnAbbreviationFont:(id)font;
@end

@implementation KNLiveVideoSourceSymbolDrawingHelper

- (_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper)initWithAbbreviationText:(id)text imageIdentifier:(int64_t)identifier tintColorIdentifier:(int64_t)colorIdentifier
{
  if (text)
  {
    v7 = sub_275E611E8();
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return sub_275E57410(v7, v8, identifier, colorIdentifier);
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

- (void)drawIn:(CGRect)in context:(CGContext *)context includeBackground:(BOOL)background
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  contextCopy = context;
  selfCopy = self;
  sub_275E575F8(contextCopy, background, x, y, width, height);
}

- (CGSize)boundsSizeForPointSize:(double)size
{
  selfCopy = self;
  v5 = sub_275E588A0(size);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)drawWithPointSize:(double)size centeredIn:(CGRect)in context:(CGContext *)context includeBackground:(BOOL)background
{
  backgroundCopy = background;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  contextCopy = context;
  selfCopy = self;
  if (backgroundCopy)
  {
    sub_275E579C4(contextCopy, x, y, width, height);
  }

  v14 = *(selfCopy + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText + 8);
  if (v14)
  {
    sub_275E57DEC(*(selfCopy + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText), v14, *&size, 0, contextCopy, x, y, width, height);
    v15 = selfCopy;
  }

  else
  {
    if (*(selfCopy + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_drawsInvisibleText) != 1)
    {
      sub_275E582D0(*&size, 0, contextCopy, x, y, width, height);
    }

    v15 = contextCopy;
    contextCopy = selfCopy;
  }
}

- (void)setLastDrawnAbbreviationFont:(id)font
{
  v4 = *(self + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationFont);
  *(self + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationFont) = font;
  fontCopy = font;
}

+ (id)fontWithPointSize:(double)size
{
  v3 = sub_275E58F20(size);

  return v3;
}

- (_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end