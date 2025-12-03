@interface TSWPSecondaryHighlight
- (BOOL)wantsCaretAndSelectionVisibleFor:(id)for;
- (NSArray)layers;
- (_TtC6TSText22TSWPSecondaryHighlight)init;
- (_TtC6TSText22TSWPSecondaryHighlight)initWithRange:(_NSRange)range color:(CGColor *)color pathStyle:(unint64_t)style;
- (_TtC6TSText22TSWPSecondaryHighlight)initWithSmartField:(id)field color:(CGColor *)color pathStyle:(unint64_t)style;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (int64_t)highlightOrdering;
- (void)setHighlightOrdering:(int64_t)ordering;
- (void)updateLayersForRep:(id)rep columns:(id)columns;
@end

@implementation TSWPSecondaryHighlight

- (_TtC6TSText22TSWPSecondaryHighlight)initWithRange:(_NSRange)range color:(CGColor *)color pathStyle:(unint64_t)style
{
  length = range.length;
  location = range.location;
  ObjectType = swift_getObjectType();
  sub_276F48C74(&qword_280A57BA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_276FAC850;
  *(v10 + 32) = location;
  *(v10 + 40) = length;
  v11 = objc_allocWithZone(ObjectType);
  colorCopy = color;
  v13 = sub_276F48A28(v10, 0, colorCopy, style);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

- (_TtC6TSText22TSWPSecondaryHighlight)initWithSmartField:(id)field color:(CGColor *)color pathStyle:(unint64_t)style
{
  v8 = objc_allocWithZone(swift_getObjectType());
  fieldCopy = field;
  colorCopy = color;
  v11 = sub_276F48A28(field, 1, colorCopy, style);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (NSArray)layers
{
  sub_276F494D0(0, &qword_280A57C70);

  v2 = sub_276F59D58();

  return v2;
}

- (int64_t)highlightOrdering
{
  v3 = OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_highlightOrdering;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHighlightOrdering:(int64_t)ordering
{
  v5 = OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_highlightOrdering;
  swift_beginAccess();
  *(self + v5) = ordering;
}

- (void)updateLayersForRep:(id)rep columns:(id)columns
{
  sub_276F494D0(0, &qword_280A57C68);
  sub_276F59D68();
  repCopy = rep;
  selfCopy = self;
  sub_276F48CBC();
}

- (BOOL)wantsCaretAndSelectionVisibleFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  LOBYTE(self) = TSWPSecondaryHighlight.wantsCaretAndSelectionVisible(for:)(forCopy);

  return self & 1;
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  return v4;
}

- (_TtC6TSText22TSWPSecondaryHighlight)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end