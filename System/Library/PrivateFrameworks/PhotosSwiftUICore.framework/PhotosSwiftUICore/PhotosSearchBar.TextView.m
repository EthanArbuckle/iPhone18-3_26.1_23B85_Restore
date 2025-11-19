@interface PhotosSearchBar.TextView
- (BOOL)canResignFirstResponder;
- (_TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)textContentStorage:(id)a3 textParagraphWithRange:(_NSRange)a4;
- (id)textLayoutManager:(id)a3 textLayoutFragmentForLocation:(id)a4 inTextElement:(id)a5;
@end

@implementation PhotosSearchBar.TextView

- (BOOL)canResignFirstResponder
{
  v2 = self;
  v3 = sub_1C117FDAC();

  return v3 & 1;
}

- (_TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_1C117FE54(a4, x, y, width, height);
}

- (id)textContentStorage:(id)a3 textParagraphWithRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = self;
  v9 = sub_1C11831B4(v7, location, length);

  return v9;
}

- (id)textLayoutManager:(id)a3 textLayoutFragmentForLocation:(id)a4 inTextElement:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  v11 = sub_1C1183318(v8, a4, v9);

  swift_unknownObjectRelease();

  return v11;
}

@end