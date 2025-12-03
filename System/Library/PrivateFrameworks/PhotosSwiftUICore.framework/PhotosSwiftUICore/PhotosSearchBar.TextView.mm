@interface PhotosSearchBar.TextView
- (BOOL)canResignFirstResponder;
- (_TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)textContentStorage:(id)storage textParagraphWithRange:(_NSRange)range;
- (id)textLayoutManager:(id)manager textLayoutFragmentForLocation:(id)location inTextElement:(id)element;
@end

@implementation PhotosSearchBar.TextView

- (BOOL)canResignFirstResponder
{
  selfCopy = self;
  v3 = sub_1C117FDAC();

  return v3 & 1;
}

- (_TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return sub_1C117FE54(container, x, y, width, height);
}

- (id)textContentStorage:(id)storage textParagraphWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  selfCopy = self;
  v9 = sub_1C11831B4(storageCopy, location, length);

  return v9;
}

- (id)textLayoutManager:(id)manager textLayoutFragmentForLocation:(id)location inTextElement:(id)element
{
  managerCopy = manager;
  swift_unknownObjectRetain();
  elementCopy = element;
  selfCopy = self;
  v11 = sub_1C1183318(managerCopy, location, elementCopy);

  swift_unknownObjectRelease();

  return v11;
}

@end