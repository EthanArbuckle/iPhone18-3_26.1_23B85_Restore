@interface SegmentedControl
- (CGSize)vui_sizeThatFits:(CGSize)fits;
- (_TtC8VideosUI16SegmentedControl)initWithItems:(id)items;
- (void)segmentSelectionChanged;
@end

@implementation SegmentedControl

- (CGSize)vui_sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_1E3EAF384();
}

- (_TtC8VideosUI16SegmentedControl)initWithItems:(id)items
{
  if (items)
  {
    sub_1E42062B4();
  }

  sub_1E3EAF534();
}

@end