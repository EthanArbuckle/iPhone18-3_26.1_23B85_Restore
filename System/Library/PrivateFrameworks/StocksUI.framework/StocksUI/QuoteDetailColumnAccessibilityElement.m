@interface QuoteDetailColumnAccessibilityElement
- (NSArray)accessibilityElements;
- (_TtC8StocksUI37QuoteDetailColumnAccessibilityElement)init;
- (_TtC8StocksUI37QuoteDetailColumnAccessibilityElement)initWithAccessibilityContainer:(id)a3;
- (void)setAccessibilityElements:(id)a3;
@end

@implementation QuoteDetailColumnAccessibilityElement

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = sub_22069AB40();

  if (v3)
  {
    v4 = sub_2208916DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccessibilityElements:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_2208916EC();
    v6 = self;
    a3 = sub_2208916DC();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(QuoteDetailColumnAccessibilityElement *)&v8 setAccessibilityElements:a3];
}

- (_TtC8StocksUI37QuoteDetailColumnAccessibilityElement)initWithAccessibilityContainer:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2208923BC();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_22089289C();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(QuoteDetailColumnAccessibilityElement *)&v8 initWithAccessibilityContainer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

- (_TtC8StocksUI37QuoteDetailColumnAccessibilityElement)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(QuoteDetailColumnAccessibilityElement *)&v3 init];
}

@end