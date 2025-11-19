@interface TabBarButton
- (NSString)largeContentTitle;
- (UIImage)largeContentImage;
- (_TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton)initWithCoder:(id)a3;
- (_TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton)initWithFrame:(CGRect)a3;
@end

@implementation TabBarButton

- (NSString)largeContentTitle
{
  v2 = self;
  v3 = [(TabBarButton *)v2 accessibilityLabel];
  if (v3)
  {
    v4 = v3;
    sub_21DBFA16C();

    v5 = sub_21DBFA12C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (UIImage)largeContentImage
{
  v2 = [(TabBarButton *)self imageForState:0];

  return v2;
}

- (_TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_ttriAccessibilityHint);
  *v10 = 0;
  v10[1] = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TTRIQuickBarDragSelectableButton *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_ttriAccessibilityHint);
  *v7 = 0;
  v7[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = [(TTRIQuickBarDragSelectableButton *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end