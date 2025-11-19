@interface TTRILabeledIconCellButton
- (_TtC15RemindersUICoreP33_477181F179A9CC91739A5D360525B70925TTRILabeledIconCellButton)initWithCoder:(id)a3;
- (_TtC15RemindersUICoreP33_477181F179A9CC91739A5D360525B70925TTRILabeledIconCellButton)initWithFrame:(CGRect)a3;
@end

@implementation TTRILabeledIconCellButton

- (_TtC15RemindersUICoreP33_477181F179A9CC91739A5D360525B70925TTRILabeledIconCellButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRILabeledIconCellButton();
  return [(TTRILabeledIconCellButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_477181F179A9CC91739A5D360525B70925TTRILabeledIconCellButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRILabeledIconCellButton();
  v4 = a3;
  v5 = [(TTRILabeledIconCellButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end