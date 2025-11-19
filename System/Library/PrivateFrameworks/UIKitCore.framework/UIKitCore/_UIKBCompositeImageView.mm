@interface _UIKBCompositeImageView
- (CGSize)imageSize;
- (void)layoutSubviews;
- (void)setImageViews:(id)a3;
@end

@implementation _UIKBCompositeImageView

- (void)setImageViews:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_imageViews, a3);
  v6 = [(UIView *)self subviews];
  [v6 makeObjectsPerformSelector:sel_removeFromSuperview];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_imageViews;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(UIView *)self addSubview:*(*(&v12 + 1) + 8 * v11++), v12];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)layoutSubviews
{
  v29 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = _UIKBCompositeImageView;
  [(UIView *)&v27 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIKBCompositeImageView *)self imageSize];
  v12 = v11;
  [(_UIKBCompositeImageView *)self imageSize];
  v14 = v13;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_imageViews;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = v4 + (v8 - v12) * 0.5;
    v19 = v6 + (v10 - v14) * 0.5;
    v20 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v23 + 1) + 8 * i);
        [v22 setFrame:{v18, v19, v12, v14, v23}];
        [v22 setContentMode:1];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end