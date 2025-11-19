@interface _UIAnimatedTextView
- (_TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView)initWithCoder:(id)a3;
- (_TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UIAnimatedTextView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for _UIAnimatedTextView();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(_UIAnimatedTextView *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_26D345E5C(0, &qword_2804FC3C8);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_26D3A1358();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for _UIAnimatedTextView();
  return [(_UIAnimatedTextView *)&v10 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIAnimatedTextView();
  v4 = a3;
  v5 = [(_UIAnimatedTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end