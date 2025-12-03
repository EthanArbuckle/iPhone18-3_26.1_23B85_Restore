@interface AccountButton
- (UIColor)tintColor;
- (void)layoutSubviews;
- (void)longPressWithGesture:(id)gesture;
- (void)setTintColor:(id)color;
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
  layer = [*&v2[OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightView] layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AccountButton();
  tintColor = [(AccountButton *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for AccountButton();
  colorCopy = color;
  v5 = v8.receiver;
  [(AccountButton *)&v8 setTintColor:colorCopy];
  v6 = *&v5[OBJC_IVAR____TtC9SeymourUI13AccountButton_imageView];
  tintColor = [v5 tintColor];
  [v6 setTintColor_];
}

- (void)tappedDown
{
  selfCopy = self;
  sub_20BAAA100();
}

- (void)tappedUp
{
  v2 = OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightTask;
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightTask))
  {
    selfCopy = self;

    sub_20C13C534();
  }

  else
  {
    selfCopy2 = self;
  }

  *(&self->super.super.super.super.isa + v2) = 0;

  sub_20BAAA67C(0);
}

- (void)longPressWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  if ([gestureCopy state] == 3 && (v5 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13AccountButton_onLongPressed)) != 0)
  {

    v5(v6);

    sub_20B583ECC(v5);
  }

  else
  {
  }
}

@end