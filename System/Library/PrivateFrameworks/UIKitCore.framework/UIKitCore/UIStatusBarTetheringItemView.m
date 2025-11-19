@interface UIStatusBarTetheringItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (id)contentsImage;
@end

@implementation UIStatusBarTetheringItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = *([a3 rawData] + 2532);
  tetheringConnectionCount = self->_tetheringConnectionCount;
  if (v5 != tetheringConnectionCount)
  {
    self->_tetheringConnectionCount = v5;
  }

  return v5 != tetheringConnectionCount;
}

- (id)contentsImage
{
  v29[2] = *MEMORY[0x1E69E9840];
  v3 = [(UIStatusBarItemView *)self imageWithShadowNamed:@"DataTypeiOSHotspot"];
  v4 = [v3 image];

  [v4 size];
  v6 = v5;
  v8 = v7;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_tetheringConnectionCount];
  v10 = [(UIStatusBarItemView *)self foregroundStyle];
  v11 = [v10 textColorForStyle:3];

  v12 = [off_1E70ECC18 boldSystemFontOfSize:8.5];
  v13 = *off_1E70EC918;
  v28[0] = *off_1E70EC920;
  v28[1] = v13;
  v29[0] = v11;
  v29[1] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  UIFloorToViewScale(self);
  v16 = v15;
  UIFloorToViewScale(self);
  v18 = v17;
  [v9 sizeWithAttributes:v14];
  v20 = v19;
  v21 = v6 + v16 + v19;
  if (self->_tetheringConnectionCount <= 0)
  {
    v22 = v6;
  }

  else
  {
    v22 = v21;
  }

  [(UIStatusBarItemView *)self beginImageContextWithMinimumWidth:v22];
  [v4 drawInRect:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v6, v8}];
  if (self->_tetheringConnectionCount >= 1)
  {
    v23 = [(UIStatusBarItemView *)self foregroundStyle];
    [v23 height];
    [v9 drawInRect:v14 withAttributes:{v6 + v16, v18, v20, v24}];
  }

  v25 = [(UIStatusBarItemView *)self imageFromImageContextClippedToWidth:v22];
  [(UIStatusBarItemView *)self endImageContext];
  v26 = [_UILegibilityImageSet imageFromImage:v25 withShadowImage:0];

  return v26;
}

@end