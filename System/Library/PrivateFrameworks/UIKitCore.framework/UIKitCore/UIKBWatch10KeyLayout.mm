@interface UIKBWatch10KeyLayout
- (CGRect)frameForGridKeyAt:(int64_t)at inRow:(int64_t)row;
- (CGRect)frameForLeftControlKeyAt:(int64_t)at;
- (CGRect)frameForRightControlKeyAt:(int64_t)at;
- (UIEdgeInsets)leftControlKeysInsets;
- (UIEdgeInsets)rightControlKeysInsets;
- (UIKBWatch10KeyLayout)initWithFrame:(CGRect)frame;
- (id)layoutControlKeys:(int64_t)keys in:(CGRect)in;
- (void)layout;
@end

@implementation UIKBWatch10KeyLayout

- (UIKBWatch10KeyLayout)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = UIKBWatch10KeyLayout;
  v7 = [(UIKBWatch10KeyLayout *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_frame.origin.x = x;
    v7->_frame.origin.y = y;
    v7->_frame.size.width = width;
    v7->_frame.size.height = height;
    [(UIKBWatch10KeyLayout *)v7 setLeftControlKeys:1];
    [(UIKBWatch10KeyLayout *)v8 setRightControlKeys:1];
    [(UIKBWatch10KeyLayout *)v8 setGridRows:1];
    [(UIKBWatch10KeyLayout *)v8 setGridColumns:1];
    [(UIKBWatch10KeyLayout *)v8 setControlKeyWidthRatio:1.0];
  }

  return v8;
}

- (CGRect)frameForLeftControlKeyAt:(int64_t)at
{
  v3 = [(NSArray *)self->_leftControlKeyFrames objectAtIndexedSubscript:at];
  [v3 rectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameForRightControlKeyAt:(int64_t)at
{
  v3 = [(NSArray *)self->_rightControlKeyFrames objectAtIndexedSubscript:at];
  [v3 rectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameForGridKeyAt:(int64_t)at inRow:(int64_t)row
{
  v5 = [(NSMutableArray *)self->_gridKeyFrames objectAtIndexedSubscript:at];
  v6 = [v5 objectAtIndexedSubscript:row];
  [v6 rectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)layout
{
  [(UIKBWatch10KeyLayout *)self controlKeyWidthRatio];
  [(UIKBWatch10KeyLayout *)self gridColumns];
  mainScreen = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(mainScreen);
  v5 = v4;

  [(UIKBWatch10KeyLayout *)self controlKeyWidthRatio];
  mainScreen2 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(mainScreen2);
  v8 = v7;

  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  height = self->_frame.size.height;
  [(UIKBWatch10KeyLayout *)self leftControlKeysInsets];
  v16 = [(UIKBWatch10KeyLayout *)self layoutControlKeys:[(UIKBWatch10KeyLayout *)self leftControlKeys] in:x + v12, y + v13, v8 - (v12 + v14), height - (v13 + v15)];
  leftControlKeyFrames = self->_leftControlKeyFrames;
  self->_leftControlKeyFrames = v16;

  v18 = v8 + x;
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[UIKBWatch10KeyLayout gridColumns](self, "gridColumns")}];
  gridKeyFrames = self->_gridKeyFrames;
  self->_gridKeyFrames = v19;

  [(UIKBWatch10KeyLayout *)self gridRows];
  mainScreen3 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(mainScreen3);
  v23 = v22;

  if ([(UIKBWatch10KeyLayout *)self gridColumns]>= 1)
  {
    v24 = 0;
    do
    {
      v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[UIKBWatch10KeyLayout gridColumns](self, "gridColumns")}];
      if ([(UIKBWatch10KeyLayout *)self gridRows]>= 1)
      {
        v26 = 0;
        do
        {
          v27 = self->_frame.origin.y + v23 * v26;
          *v37 = v18;
          *&v37[1] = v27;
          *&v37[2] = v5;
          *&v37[3] = v23;
          v28 = [MEMORY[0x1E696B098] valueWithBytes:v37 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v25 addObject:v28];

          ++v26;
        }

        while (v26 < [(UIKBWatch10KeyLayout *)self gridRows]);
      }

      [(NSMutableArray *)self->_gridKeyFrames addObject:v25];
      v18 = v5 + v18;

      ++v24;
    }

    while (v24 < [(UIKBWatch10KeyLayout *)self gridColumns]);
  }

  v29 = self->_frame.origin.y;
  v30 = self->_frame.size.height;
  [(UIKBWatch10KeyLayout *)self rightControlKeysInsets];
  v35 = [(UIKBWatch10KeyLayout *)self layoutControlKeys:[(UIKBWatch10KeyLayout *)self rightControlKeys] in:v18 + v31, v29 + v32, v8 - (v31 + v33), v30 - (v32 + v34)];
  rightControlKeyFrames = self->_rightControlKeyFrames;
  self->_rightControlKeyFrames = v35;
}

- (id)layoutControlKeys:(int64_t)keys in:(CGRect)in
{
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
  mainScreen = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(mainScreen);
  v11 = v10;

  if (keys >= 1)
  {
    v12 = 0;
    do
    {
      *v15 = x;
      *&v15[1] = y + v11 * v12;
      *&v15[2] = width;
      *&v15[3] = v11;
      v13 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      [v8 addObject:v13];

      ++v12;
    }

    while (keys != v12);
  }

  return v8;
}

- (UIEdgeInsets)leftControlKeysInsets
{
  top = self->_leftControlKeysInsets.top;
  left = self->_leftControlKeysInsets.left;
  bottom = self->_leftControlKeysInsets.bottom;
  right = self->_leftControlKeysInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)rightControlKeysInsets
{
  top = self->_rightControlKeysInsets.top;
  left = self->_rightControlKeysInsets.left;
  bottom = self->_rightControlKeysInsets.bottom;
  right = self->_rightControlKeysInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end