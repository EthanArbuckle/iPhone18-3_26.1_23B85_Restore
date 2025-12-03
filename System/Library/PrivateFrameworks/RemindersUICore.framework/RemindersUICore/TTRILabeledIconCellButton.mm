@interface TTRILabeledIconCellButton
- (_TtC15RemindersUICoreP33_477181F179A9CC91739A5D360525B70925TTRILabeledIconCellButton)initWithCoder:(id)coder;
- (_TtC15RemindersUICoreP33_477181F179A9CC91739A5D360525B70925TTRILabeledIconCellButton)initWithFrame:(CGRect)frame;
@end

@implementation TTRILabeledIconCellButton

- (_TtC15RemindersUICoreP33_477181F179A9CC91739A5D360525B70925TTRILabeledIconCellButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRILabeledIconCellButton();
  return [(TTRILabeledIconCellButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_477181F179A9CC91739A5D360525B70925TTRILabeledIconCellButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRILabeledIconCellButton();
  coderCopy = coder;
  v5 = [(TTRILabeledIconCellButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end