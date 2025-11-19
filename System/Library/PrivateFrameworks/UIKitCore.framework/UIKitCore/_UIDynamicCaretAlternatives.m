@interface _UIDynamicCaretAlternatives
- (_UIDynamicCaretAlternatives)initWithFrame:(CGRect)a3;
- (int64_t)indexOfButtonForPoint:(CGPoint)a3;
- (void)highlightButtonAtIndex:(int64_t)a3;
- (void)layoutSubviews;
- (void)setButtonLabels:(id)a3;
@end

@implementation _UIDynamicCaretAlternatives

- (_UIDynamicCaretAlternatives)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v23.receiver = self;
  v23.super_class = _UIDynamicCaretAlternatives;
  v5 = [(UIView *)&v23 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setOpaque:0];
    [(UIView *)v6 setUserInteractionEnabled:0];
    [(UIView *)v6 setAutoresizingMask:18];
    v7 = [[UIView alloc] initWithFrame:width * 0.5, 0.0, 1.0, height];
    [(_UIDynamicCaretAlternatives *)v6 setVerticalDivider:v7];

    v8 = [UIColor colorWithWhite:1.0 alpha:0.15];
    v9 = [(_UIDynamicCaretAlternatives *)v6 verticalDivider];
    [v9 setBackgroundColor:v8];

    v10 = [(_UIDynamicCaretAlternatives *)v6 verticalDivider];
    [(UIView *)v6 addSubview:v10];

    v11 = [[UIView alloc] initWithFrame:0.0, height * 0.5, 1.0, width];
    [(_UIDynamicCaretAlternatives *)v6 setHorizontalDivider:v11];

    v12 = [UIColor colorWithWhite:1.0 alpha:0.15];
    v13 = [(_UIDynamicCaretAlternatives *)v6 horizontalDivider];
    [v13 setBackgroundColor:v12];

    v14 = [(_UIDynamicCaretAlternatives *)v6 horizontalDivider];
    [(UIView *)v6 addSubview:v14];

    v15 = [MEMORY[0x1E695DF70] array];
    v16 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    v18 = *(MEMORY[0x1E695F058] + 16);
    v19 = *(MEMORY[0x1E695F058] + 24);
    v20 = 4;
    do
    {
      v21 = [[UIButton alloc] initWithFrame:v16, v17, v18, v19];
      [(UIView *)v6 addSubview:v21];
      [v15 addObject:v21];

      --v20;
    }

    while (v20);
    [(_UIDynamicCaretAlternatives *)v6 setAlternativesButtons:v15];
  }

  return v6;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = _UIDynamicCaretAlternatives;
  [(UIView *)&v15 layoutSubviews];
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  [(UIView *)self center];
  v8 = v7;
  v10 = v9;
  v11 = [(_UIDynamicCaretAlternatives *)self verticalDivider];
  [v11 setFrame:{v8, 0.0, 1.0, v6}];

  v12 = [(_UIDynamicCaretAlternatives *)self horizontalDivider];
  [v12 setFrame:{0.0, v10, v4, 1.0}];

  v13 = [(_UIDynamicCaretAlternatives *)self alternativesButtons];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45___UIDynamicCaretAlternatives_layoutSubviews__block_invoke;
  v14[3] = &__block_descriptor_48_e25_v32__0__UIButton_8Q16_B24l;
  *&v14[4] = v8;
  *&v14[5] = v10;
  [v13 enumerateObjectsUsingBlock:v14];
}

- (void)setButtonLabels:(id)a3
{
  v4 = a3;
  v5 = [(_UIDynamicCaretAlternatives *)self alternativesButtons];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___UIDynamicCaretAlternatives_setButtonLabels___block_invoke;
  v7[3] = &unk_1E7125688;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (int64_t)indexOfButtonForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(_UIDynamicCaretAlternatives *)self alternativesButtons];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    v12 = v9;
    v9 += v8;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v15 + 1) + 8 * v11);
      [v13 convertPoint:self fromView:{x, y}];
      if ([v13 pointInside:0 withEvent:?])
      {
        break;
      }

      ++v12;
      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (void)highlightButtonAtIndex:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = [(_UIDynamicCaretAlternatives *)self alternativesButtons];
    v6 = [v5 count];

    if (v6 > a3)
    {
      v8 = [(_UIDynamicCaretAlternatives *)self alternativesButtons];
      v7 = [v8 objectAtIndex:a3];
      [v7 setHighlighted:1];
    }
  }
}

@end