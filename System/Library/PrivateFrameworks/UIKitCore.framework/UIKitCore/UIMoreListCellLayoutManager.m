@interface UIMoreListCellLayoutManager
- (CGRect)standardLayoutImageViewFrameForCell:(id)a3 forSizing:(BOOL)a4;
- (double)setWidestImageWidthFromViewControllers:(id)a3;
- (void)layoutSubviewsOfCell:(id)a3;
@end

@implementation UIMoreListCellLayoutManager

- (void)layoutSubviewsOfCell:(id)a3
{
  v4 = a3;
  v5 = [v4 imageView];
  [v5 setContentMode:4];

  v6.receiver = self;
  v6.super_class = UIMoreListCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v6 layoutSubviewsOfCell:v4];
}

- (CGRect)standardLayoutImageViewFrameForCell:(id)a3 forSizing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v21.receiver = self;
  v21.super_class = UIMoreListCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v21 standardLayoutImageViewFrameForCell:v6 forSizing:v4];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  widestImageWidth = self->_widestImageWidth;
  if (widestImageWidth <= 0.00000011920929)
  {
    widestImageWidth = v7;
  }

  else if ((v6[106] & 0x40) != 0)
  {
    v15 = [v6 contentView];
    [v15 bounds];
    v16 = CGRectGetMaxX(v22) + -15.0;
    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = widestImageWidth;
    v23.size.height = v13;
    v9 = v16 - CGRectGetWidth(v23);
  }

  else
  {
    v9 = 15.0;
  }

  v17 = v9;
  v18 = v11;
  v19 = widestImageWidth;
  v20 = v13;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (double)setWidestImageWidthFromViewControllers:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_widestImageWidth = 0.0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = __UIMoreListImageForViewController(0, v9, 0);
        v11 = v10;
        if (v10)
        {
          widestImageWidth = self->_widestImageWidth;
          [v10 size];
          if (widestImageWidth >= v13)
          {
            v13 = widestImageWidth;
          }

          self->_widestImageWidth = v13;
        }

        v14 = __UIMoreListImageForViewController(0, v9, 1);

        if (v14)
        {
          v15 = self->_widestImageWidth;
          [v14 size];
          if (v15 >= v16)
          {
            v16 = v15;
          }

          self->_widestImageWidth = v16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v17 = self->_widestImageWidth;

  return v17;
}

@end