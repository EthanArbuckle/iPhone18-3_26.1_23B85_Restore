@interface SegmentedControl
- (CGSize)vui_sizeThatFits:(CGSize)a3;
- (_TtC8VideosUI16SegmentedControl)initWithItems:(id)a3;
- (void)segmentSelectionChanged;
@end

@implementation SegmentedControl

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1E3EAF2CC(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)segmentSelectionChanged
{
  v2 = self;
  sub_1E3EAF384();
}

- (_TtC8VideosUI16SegmentedControl)initWithItems:(id)a3
{
  if (a3)
  {
    sub_1E42062B4();
  }

  sub_1E3EAF534();
}

@end