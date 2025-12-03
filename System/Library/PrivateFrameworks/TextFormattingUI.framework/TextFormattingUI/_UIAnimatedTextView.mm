@interface _UIAnimatedTextView
- (_TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView)initWithCoder:(id)coder;
- (_TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UIAnimatedTextView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for _UIAnimatedTextView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(_UIAnimatedTextView *)&v13 hitTest:eventCopy withEvent:x, y];
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

- (_TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for _UIAnimatedTextView();
  return [(_UIAnimatedTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIAnimatedTextView();
  coderCopy = coder;
  v5 = [(_UIAnimatedTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end