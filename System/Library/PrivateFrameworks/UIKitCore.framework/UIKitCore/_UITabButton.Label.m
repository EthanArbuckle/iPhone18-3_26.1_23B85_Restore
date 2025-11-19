@interface _UITabButton.Label
- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4;
- (NSAttributedString)attributedText;
- (NSString)text;
- (_TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label)initWithCoder:(id)a3;
- (_TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label)initWithFrame:(CGRect)a3;
- (void)setAttributedText:(id)a3;
- (void)setText:(id)a3;
@end

@implementation _UITabButton.Label

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UITabButton.Label();
  v2 = v7.receiver;
  v3 = [(UILabel *)&v7 text];
  if (v3)
  {
    v4 = v3;
    sub_18A4A7288();

    v5 = sub_18A4A7258();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = sub_18A4A7288();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_189207068(v4, v6);
}

- (NSAttributedString)attributedText
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UITabButton.Label();
  v2 = [(UILabel *)&v4 attributedText];

  return v2;
}

- (void)setAttributedText:(id)a3
{
  v5 = type metadata accessor for _UITabButton.Label();
  v10.receiver = self;
  v10.super_class = v5;
  v6 = a3;
  v7 = self;
  v8 = [(UILabel *)&v10 attributedText];
  v9.receiver = v7;
  v9.super_class = v5;
  [(UILabel *)&v9 setAttributedText:v6];
  sub_189207364(v8);
}

- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = self;
  sub_189208114(v9, v9, a4, x, y, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (_TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment;
  *v7 = 0;
  v7[8] = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for _UITabButton.Label();
  return [(UILabel *)&v9 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment;
  *v4 = 0;
  v4[8] = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UITabButton.Label();
  v5 = a3;
  v6 = [(UILabel *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end