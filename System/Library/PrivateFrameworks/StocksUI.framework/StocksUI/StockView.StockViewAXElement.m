@interface StockView.StockViewAXElement
- (CGRect)accessibilityFrame;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityUserInputLabels;
- (NSAttributedString)accessibilityAttributedLabel;
- (NSAttributedString)accessibilityAttributedValue;
- (_TtCC8StocksUI9StockView18StockViewAXElement)init;
- (_TtCC8StocksUI9StockView18StockViewAXElement)initWithAccessibilityContainer:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation StockView.StockViewAXElement

- (NSAttributedString)accessibilityAttributedValue
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    v6 = sub_22078D550();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)accessibilityUserInputLabels
{
  v2 = self;
  v3 = sub_22078C960();

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

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_22078CDB0();

  if (v3)
  {
    sub_22044D56C(0, &unk_281299868);
    v4 = sub_2208916DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong accessibilityFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
    v9 = 0.0;
    v11 = 0.0;
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (unint64_t)accessibilityTraits
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = self;
LABEL_6:
    v6 = MEMORY[0x277D76578];
    v4 = self;
    goto LABEL_7;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtC8StocksUI9StockView_isSelected;
  swift_beginAccess();
  if ((*(&v4->super.super.super.isa + v5) & 1) == 0)
  {
    v8 = self;

    goto LABEL_6;
  }

  v6 = MEMORY[0x277D76598];
LABEL_7:
  v9 = *v6;

  return v9;
}

- (NSAttributedString)accessibilityAttributedLabel
{
  v2 = self;
  v3 = sub_22078CFB0();

  return v3;
}

- (_TtCC8StocksUI9StockView18StockViewAXElement)initWithAccessibilityContainer:(id)a3
{
  swift_unknownObjectRetain();
  sub_2208923BC();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC8StocksUI9StockView18StockViewAXElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end