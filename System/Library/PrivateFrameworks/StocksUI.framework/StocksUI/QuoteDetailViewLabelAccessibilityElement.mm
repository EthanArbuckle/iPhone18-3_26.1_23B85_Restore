@interface QuoteDetailViewLabelAccessibilityElement
- (BOOL)accessibilityScroll:(int64_t)a3;
- (CGRect)accessibilityFrame;
- (_TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement)init;
- (_TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement)initWithAccessibilityContainer:(id)a3;
- (void)accessibilityElementDidBecomeFocused;
- (void)setAccessibilityFrame:(CGRect)a3;
@end

@implementation QuoteDetailViewLabelAccessibilityElement

- (CGRect)accessibilityFrame
{
  v2 = self;
  sub_220737950();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setAccessibilityFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  [(QuoteDetailViewLabelAccessibilityElement *)&v7 setAccessibilityFrame:x, y, width, height];
}

- (void)accessibilityElementDidBecomeFocused
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(QuoteDetailViewLabelAccessibilityElement *)&v3 accessibilityElementDidBecomeFocused];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_220666E18(v2);
    swift_unknownObjectRelease();
  }
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_220737BA4(a3);

  return a3 & 1;
}

- (_TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement)initWithAccessibilityContainer:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2208923BC();
  swift_unknownObjectRelease();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement_delegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_22089289C();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(QuoteDetailViewLabelAccessibilityElement *)&v8 initWithAccessibilityContainer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

- (_TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement_delegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(QuoteDetailViewLabelAccessibilityElement *)&v5 init];
}

@end