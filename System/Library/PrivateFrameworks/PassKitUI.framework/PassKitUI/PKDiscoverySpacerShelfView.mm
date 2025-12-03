@interface PKDiscoverySpacerShelfView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDiscoverySpacerShelfView)initWithShelf:(id)shelf;
@end

@implementation PKDiscoverySpacerShelfView

- (PKDiscoverySpacerShelfView)initWithShelf:(id)shelf
{
  shelfCopy = shelf;
  v7.receiver = self;
  v7.super_class = PKDiscoverySpacerShelfView;
  v5 = [(PKDiscoveryShelfView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v5->_spacerType = [shelfCopy spacerType];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
  v5 = v4;
  if ((self->_spacerType - 1) <= 3)
  {
    [v4 lineHeight];
  }

  PKSizeRoundToPixel();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end