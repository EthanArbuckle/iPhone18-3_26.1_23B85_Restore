@interface TSWPSecondaryHighlight
- (BOOL)wantsCaretAndSelectionVisibleFor:(id)a3;
- (NSArray)layers;
- (_TtC6TSText22TSWPSecondaryHighlight)init;
- (_TtC6TSText22TSWPSecondaryHighlight)initWithRange:(_NSRange)a3 color:(CGColor *)a4 pathStyle:(unint64_t)a5;
- (_TtC6TSText22TSWPSecondaryHighlight)initWithSmartField:(id)a3 color:(CGColor *)a4 pathStyle:(unint64_t)a5;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (int64_t)highlightOrdering;
- (void)setHighlightOrdering:(int64_t)a3;
- (void)updateLayersForRep:(id)a3 columns:(id)a4;
@end

@implementation TSWPSecondaryHighlight

- (_TtC6TSText22TSWPSecondaryHighlight)initWithRange:(_NSRange)a3 color:(CGColor *)a4 pathStyle:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  ObjectType = swift_getObjectType();
  sub_276F48C74(&qword_280A57BA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_276FAC850;
  *(v10 + 32) = location;
  *(v10 + 40) = length;
  v11 = objc_allocWithZone(ObjectType);
  v12 = a4;
  v13 = sub_276F48A28(v10, 0, v12, a5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

- (_TtC6TSText22TSWPSecondaryHighlight)initWithSmartField:(id)a3 color:(CGColor *)a4 pathStyle:(unint64_t)a5
{
  v8 = objc_allocWithZone(swift_getObjectType());
  v9 = a3;
  v10 = a4;
  v11 = sub_276F48A28(a3, 1, v10, a5);

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

- (void)setHighlightOrdering:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC6TSText22TSWPSecondaryHighlight_highlightOrdering;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)updateLayersForRep:(id)a3 columns:(id)a4
{
  sub_276F494D0(0, &qword_280A57C68);
  sub_276F59D68();
  v6 = a3;
  v7 = self;
  sub_276F48CBC();
}

- (BOOL)wantsCaretAndSelectionVisibleFor:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = TSWPSecondaryHighlight.wantsCaretAndSelectionVisible(for:)(v4);

  return self & 1;
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
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