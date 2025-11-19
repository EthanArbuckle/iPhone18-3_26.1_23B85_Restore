@interface SiriSharedUIGradientView
+ (id)verticalBlackToClear;
+ (id)verticalClearToBlack;
+ (id)verticalTwoColorGradientWithTop:(id)a3 bottom:(id)a4;
- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithCoder:(id)a3;
- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithColors:(id)a3 locations:(id)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6;
- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SiriSharedUIGradientView

+ (id)verticalBlackToClear
{
  v2 = sub_21E45628C(&selRef_blackColor, &selRef_clearColor);

  return v2;
}

+ (id)verticalClearToBlack
{
  v2 = sub_21E45628C(&selRef_clearColor, &selRef_blackColor);

  return v2;
}

+ (id)verticalTwoColorGradientWithTop:(id)a3 bottom:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _s12SiriSharedUI0aB14UIGradientViewC24verticalTwoColorGradient3top6bottomACSo7UIColorC_AHtFZ_0(v5, v6);

  return v7;
}

- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithColors:(id)a3 locations:(id)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  sub_21E43F008(0, &qword_27CEC5A10);
  v10 = sub_21E4DD088();
  sub_21E43F008(0, &qword_280C14070);
  v11 = sub_21E4DD088();
  return SiriSharedUIGradientView.init(colors:locations:startPoint:endPoint:)(v10, v11, v9, v8, x, y);
}

- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI24SiriSharedUIGradientView_gradientLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  result = sub_21E4DD468();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SiriSharedUIGradientView();
  v2 = v4.receiver;
  [(SiriSharedUIGradientView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12SiriSharedUI24SiriSharedUIGradientView_gradientLayer];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end