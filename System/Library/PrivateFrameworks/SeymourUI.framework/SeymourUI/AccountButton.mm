@interface AccountButton
- (UIColor)tintColor;
- (void)layoutSubviews;
- (void)longPressWithGesture:(id)a3;
- (void)setTintColor:(id)a3;
- (void)tappedDown;
- (void)tappedUp;
@end

@implementation AccountButton

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AccountButton();
  v2 = v4.receiver;
  [(AccountButton *)&v4 layoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightView] layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AccountButton();
  v2 = [(AccountButton *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for AccountButton();
  v4 = a3;
  v5 = v8.receiver;
  [(AccountButton *)&v8 setTintColor:v4];
  v6 = *&v5[OBJC_IVAR____TtC9SeymourUI13AccountButton_imageView];
  v7 = [v5 tintColor];
  [v6 setTintColor_];
}

- (void)tappedDown
{
  v2 = self;
  sub_20BAAA100();
}

- (void)tappedUp
{
  v2 = OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightTask;
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightTask))
  {
    v3 = self;

    sub_20C13C534();
  }

  else
  {
    v4 = self;
  }

  *(&self->super.super.super.super.isa + v2) = 0;

  sub_20BAAA67C(0);
}

- (void)longPressWithGesture:(id)a3
{
  v4 = a3;
  v7 = self;
  if ([v4 state] == 3 && (v5 = *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13AccountButton_onLongPressed)) != 0)
  {

    v5(v6);

    sub_20B583ECC(v5);
  }

  else
  {
  }
}

@end