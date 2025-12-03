@interface SiriSharedUIGradientView
+ (id)verticalBlackToClear;
+ (id)verticalClearToBlack;
+ (id)verticalTwoColorGradientWithTop:(id)top bottom:(id)bottom;
- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithCoder:(id)coder;
- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithColors:(id)colors locations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithFrame:(CGRect)frame;
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

+ (id)verticalTwoColorGradientWithTop:(id)top bottom:(id)bottom
{
  topCopy = top;
  bottomCopy = bottom;
  v7 = _s12SiriSharedUI0aB14UIGradientViewC24verticalTwoColorGradient3top6bottomACSo7UIColorC_AHtFZ_0(topCopy, bottomCopy);

  return v7;
}

- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithColors:(id)colors locations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v8 = point.y;
  v9 = point.x;
  sub_21E43F008(0, &qword_27CEC5A10);
  v10 = sub_21E4DD088();
  sub_21E43F008(0, &qword_280C14070);
  v11 = sub_21E4DD088();
  return SiriSharedUIGradientView.init(colors:locations:startPoint:endPoint:)(v10, v11, v9, v8, x, y);
}

- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithCoder:(id)coder
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

- (_TtC12SiriSharedUI24SiriSharedUIGradientView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end