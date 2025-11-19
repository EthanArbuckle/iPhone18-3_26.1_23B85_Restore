@interface StockSearchCellView
- (BOOL)isAccessibilityElement;
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityHint;
- (unint64_t)accessibilityTraits;
- (void)setAccessibilityCustomActions:(id)a3;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
@end

@implementation StockSearchCellView

- (BOOL)isAccessibilityElement
{
  v2 = self;
  v3 = sub_220787AB0();

  return v3 & 1;
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(StockSearchCellView *)&v4 setIsAccessibilityElement:v3];
}

- (unint64_t)accessibilityTraits
{
  v2 = self;
  v3 = sub_220787CD8();

  return v3;
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(StockSearchCellView *)&v4 setAccessibilityTraits:a3];
}

- (NSString)accessibilityHint
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v4 = sub_22089132C();

  return v4;
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_220787FC0();

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

- (void)setAccessibilityCustomActions:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_22044D56C(0, &unk_281299868);
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
  [(StockSearchCellView *)&v8 setAccessibilityCustomActions:a3];
}

@end