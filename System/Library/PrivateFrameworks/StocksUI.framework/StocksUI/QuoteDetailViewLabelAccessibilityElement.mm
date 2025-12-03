@interface QuoteDetailViewLabelAccessibilityElement
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGRect)accessibilityFrame;
- (_TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement)init;
- (_TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement)initWithAccessibilityContainer:(id)container;
- (void)accessibilityElementDidBecomeFocused;
- (void)setAccessibilityFrame:(CGRect)frame;
@end

@implementation QuoteDetailViewLabelAccessibilityElement

- (CGRect)accessibilityFrame
{
  selfCopy = self;
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

- (void)setAccessibilityFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  selfCopy = self;
  LOBYTE(scroll) = sub_220737BA4(scroll);

  return scroll & 1;
}

- (_TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement)initWithAccessibilityContainer:(id)container
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