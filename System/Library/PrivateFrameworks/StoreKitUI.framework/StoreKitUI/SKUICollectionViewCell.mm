@interface SKUICollectionViewCell
- (BOOL)_showsBottomBorder;
- (BOOL)_showsLeftBorder;
- (BOOL)_showsRightBorder;
- (BOOL)_showsTopBorder;
- (SKUICollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)separatorInsets;
- (UIEdgeInsets)separatorWidths;
- (void)_setPosition:(int64_t)position;
- (void)_updateBorderVisibility;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setSeparatorColor:(id)color;
- (void)setSeparatorStyle:(int64_t)style;
- (void)setSeparatorWidths:(UIEdgeInsets)widths;
@end

@implementation SKUICollectionViewCell

- (SKUICollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUICollectionViewCell initWithFrame:];
  }

  v13.receiver = self;
  v13.super_class = SKUICollectionViewCell;
  height = [(SKUICollectionViewCell *)&v13 initWithFrame:x, y, width, height];
  if (height)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v11 = 1.0 / v10;

    height->_separatorWidths.top = v11;
    height->_separatorWidths.left = v11;
    height->_separatorWidths.bottom = v11;
    height->_separatorWidths.right = v11;
    *&height->_separatorInsets.top = xmmword_215F3F2D0;
    *&height->_separatorInsets.bottom = xmmword_215F3F2D0;
  }

  return height;
}

- (void)setSeparatorColor:(id)color
{
  colorCopy = color;
  separatorColor = self->_separatorColor;
  if (separatorColor != colorCopy)
  {
    v15 = colorCopy;
    separatorColor = [separatorColor isEqual:colorCopy];
    colorCopy = v15;
    if ((separatorColor & 1) == 0)
    {
      objc_storeStrong(&self->_separatorColor, color);
      bottomBorderView = self->_bottomBorderView;
      if (self->_separatorColor)
      {
        [(UIView *)self->_bottomBorderView setBackgroundColor:?];
      }

      else
      {
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UIView *)bottomBorderView setBackgroundColor:clearColor];
      }

      leftBorderView = self->_leftBorderView;
      if (self->_separatorColor)
      {
        [(UIView *)self->_leftBorderView setBackgroundColor:?];
      }

      else
      {
        clearColor2 = [MEMORY[0x277D75348] clearColor];
        [(UIView *)leftBorderView setBackgroundColor:clearColor2];
      }

      rightBorderView = self->_rightBorderView;
      if (self->_separatorColor)
      {
        [(UIView *)self->_rightBorderView setBackgroundColor:?];
      }

      else
      {
        clearColor3 = [MEMORY[0x277D75348] clearColor];
        [(UIView *)rightBorderView setBackgroundColor:clearColor3];
      }

      topBorderView = self->_topBorderView;
      if (self->_separatorColor)
      {
        separatorColor = [(UIView *)self->_topBorderView setBackgroundColor:?];
      }

      else
      {
        clearColor4 = [MEMORY[0x277D75348] clearColor];
        [(UIView *)topBorderView setBackgroundColor:clearColor4];
      }

      colorCopy = v15;
    }
  }

  MEMORY[0x2821F96F8](separatorColor, colorCopy);
}

- (void)setSeparatorStyle:(int64_t)style
{
  if (self->_separatorStyle != style)
  {
    self->_separatorStyle = style;
    bottomBorderView = self->_bottomBorderView;
    if (style)
    {
      if (!bottomBorderView)
      {
        v5 = objc_alloc_init(MEMORY[0x277D75D18]);
        v6 = self->_bottomBorderView;
        self->_bottomBorderView = v5;

        v7 = self->_bottomBorderView;
        if (self->_separatorColor)
        {
          [(UIView *)self->_bottomBorderView setBackgroundColor:?];
        }

        else
        {
          clearColor = [MEMORY[0x277D75348] clearColor];
          [(UIView *)v7 setBackgroundColor:clearColor];
        }

        [(SKUICollectionViewCell *)self addSubview:self->_bottomBorderView];
        bottomBorderView = self->_bottomBorderView;
      }

      [(UIView *)bottomBorderView setHidden:[(SKUICollectionViewCell *)self _showsBottomBorder]^ 1];
      leftBorderView = self->_leftBorderView;
      if (!leftBorderView)
      {
        v12 = objc_alloc_init(MEMORY[0x277D75D18]);
        v13 = self->_leftBorderView;
        self->_leftBorderView = v12;

        v14 = self->_leftBorderView;
        if (self->_separatorColor)
        {
          [(UIView *)self->_leftBorderView setBackgroundColor:?];
        }

        else
        {
          clearColor2 = [MEMORY[0x277D75348] clearColor];
          [(UIView *)v14 setBackgroundColor:clearColor2];
        }

        [(SKUICollectionViewCell *)self addSubview:self->_leftBorderView];
        leftBorderView = self->_leftBorderView;
      }

      [(UIView *)leftBorderView setHidden:[(SKUICollectionViewCell *)self _showsLeftBorder]^ 1];
      rightBorderView = self->_rightBorderView;
      if (!rightBorderView)
      {
        v17 = objc_alloc_init(MEMORY[0x277D75D18]);
        v18 = self->_rightBorderView;
        self->_rightBorderView = v17;

        v19 = self->_rightBorderView;
        if (self->_separatorColor)
        {
          [(UIView *)self->_rightBorderView setBackgroundColor:?];
        }

        else
        {
          clearColor3 = [MEMORY[0x277D75348] clearColor];
          [(UIView *)v19 setBackgroundColor:clearColor3];
        }

        [(SKUICollectionViewCell *)self addSubview:self->_rightBorderView];
        rightBorderView = self->_rightBorderView;
      }

      [(UIView *)rightBorderView setHidden:[(SKUICollectionViewCell *)self _showsRightBorder]^ 1];
      topBorderView = self->_topBorderView;
      if (!topBorderView)
      {
        v22 = objc_alloc_init(MEMORY[0x277D75D18]);
        v23 = self->_topBorderView;
        self->_topBorderView = v22;

        v24 = self->_topBorderView;
        if (self->_separatorColor)
        {
          [(UIView *)self->_topBorderView setBackgroundColor:?];
        }

        else
        {
          clearColor4 = [MEMORY[0x277D75348] clearColor];
          [(UIView *)v24 setBackgroundColor:clearColor4];
        }

        [(SKUICollectionViewCell *)self addSubview:self->_topBorderView];
        topBorderView = self->_topBorderView;
      }

      v9 = [(SKUICollectionViewCell *)self _showsTopBorder]^ 1;
      v8 = topBorderView;
    }

    else
    {
      [(UIView *)self->_bottomBorderView setHidden:1];
      [(UIView *)self->_leftBorderView setHidden:1];
      [(UIView *)self->_rightBorderView setHidden:1];
      v8 = self->_topBorderView;
      v9 = 1;
    }

    [(UIView *)v8 setHidden:v9];
  }
}

- (void)setSeparatorWidths:(UIEdgeInsets)widths
{
  v3.f64[0] = widths.top;
  v3.f64[1] = widths.left;
  v4.f64[0] = widths.bottom;
  v4.f64[1] = widths.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_separatorWidths.top, v3), vceqq_f64(*&self->_separatorWidths.bottom, v4)))) & 1) == 0)
  {
    self->_separatorWidths = widths;
    [(SKUICollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = SKUICollectionViewCell;
  attributesCopy = attributes;
  [(SKUICollectionViewCell *)&v8 applyLayoutAttributes:attributesCopy];
  backgroundColor = [attributesCopy backgroundColor];
  v7.receiver = self;
  v7.super_class = SKUICollectionViewCell;
  [(SKUICollectionViewCell *)&v7 setBackgroundColor:backgroundColor];

  position = [attributesCopy position];
  [(SKUICollectionViewCell *)self _setPosition:position];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SKUICollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setHighlighted:highlighted];
  [(SKUICollectionViewCell *)self _updateBorderVisibility];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SKUICollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setSelected:selected];
  [(SKUICollectionViewCell *)self _updateBorderVisibility];
}

- (void)layoutSubviews
{
  v60.receiver = self;
  v60.super_class = SKUICollectionViewCell;
  [(SKUICollectionViewCell *)&v60 layoutSubviews];
  right = *(MEMORY[0x277D768C8] + 24);
  left = *(MEMORY[0x277D768C8] + 8);
  if (self->_separatorStyle != 4)
  {
    if (self->_position)
    {
      left = self->_separatorInsets.left;
    }

    if ((self->_position & 5) == 4)
    {
      right = self->_separatorInsets.right;
    }
  }

  v56 = *(MEMORY[0x277D768C8] + 16);
  v57 = *MEMORY[0x277D768C8];
  [(SKUICollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(SKUICollectionViewCell *)self contentView];
  bottomBorderView = self->_bottomBorderView;
  v13 = v10;
  if (bottomBorderView)
  {
    v13 = v10;
    if (![(UIView *)bottomBorderView isHidden])
    {
      v13 = v10 - self->_separatorWidths.bottom;
      v61.origin.x = v4;
      v61.origin.y = v6;
      v61.size.width = v8;
      v61.size.height = v10;
      MinX = CGRectGetMinX(v61);
      v62.origin.x = v4;
      v62.origin.y = v6;
      v62.size.width = v8;
      v62.size.height = v10;
      v15 = CGRectGetMaxY(v62) - self->_separatorWidths.bottom;
      v63.origin.x = v4;
      v63.origin.y = v6;
      v63.size.width = v8;
      v63.size.height = v10;
      Width = CGRectGetWidth(v63);
      v17 = self->_bottomBorderView;
      SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(left + MinX, v57 + v15, Width - (right + left), self->_separatorWidths.bottom - (v57 + v56), v4, v6, v8, v10);
      [(UIView *)v17 setFrame:?];
    }
  }

  leftBorderView = self->_leftBorderView;
  v19 = v8;
  v20 = v4;
  if (leftBorderView)
  {
    v19 = v8;
    v20 = v4;
    if (![(UIView *)leftBorderView isHidden])
    {
      v53 = v13;
      v21 = self->_separatorWidths.left;
      v22 = 0.0;
      if (v21 > 0.00000011920929)
      {
        v23 = v21 * 0.5;
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v26 = 1.0 / v25;

        if (v23 >= v26)
        {
          v22 = v23;
        }

        else
        {
          v22 = v26;
        }
      }

      v52 = v8 - v22;
      v64.origin.x = v4;
      v64.origin.y = v6;
      v64.size.width = v8;
      v64.size.height = v10;
      v27 = CGRectGetMinX(v64);
      v65.origin.x = v4;
      v65.origin.y = v6;
      v65.size.width = v8;
      v65.size.height = v10;
      MinY = CGRectGetMinY(v65);
      v66.origin.x = v4;
      v66.origin.y = v6;
      v66.size.width = v8;
      v66.size.height = v10;
      v29 = CGRectGetHeight(v66) - self->_separatorWidths.bottom;
      v30 = self->_leftBorderView;
      v31 = v27;
      v20 = v4 + v22;
      v19 = v8 - v22;
      SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v31, MinY, v22, v29, v4, v6, v8, v10);
      [(UIView *)v30 setFrame:?];
      v13 = v53;
    }
  }

  rightBorderView = self->_rightBorderView;
  if (rightBorderView && ![(UIView *)rightBorderView isHidden])
  {
    v52 = v20;
    v54 = v13;
    v33 = self->_separatorWidths.right;
    v34 = 0.0;
    if (v33 > 0.00000011920929)
    {
      v35 = v33 * 0.5;
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 scale];
      v38 = 1.0 / v37;

      if (v35 >= v38)
      {
        v34 = v35;
      }

      else
      {
        v34 = v38;
      }
    }

    v19 = v19 - v34;
    v67.origin.x = v4;
    v67.origin.y = v6;
    v67.size.width = v8;
    v67.size.height = v10;
    v39 = CGRectGetMaxX(v67) - v34;
    v68.origin.x = v4;
    v68.origin.y = v6;
    v68.size.width = v8;
    v68.size.height = v10;
    v40 = CGRectGetMinY(v68);
    v69.origin.x = v4;
    v69.origin.y = v6;
    v69.size.width = v8;
    v69.size.height = v10;
    Height = CGRectGetHeight(v69);
    v42 = self->_rightBorderView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v39, v40, v34, Height - self->_separatorWidths.bottom, v4, v6, v8, v10);
    [(UIView *)v42 setFrame:?];
    v20 = v52;
    v13 = v54;
  }

  topBorderView = self->_topBorderView;
  if (topBorderView && ![(UIView *)topBorderView isHidden])
  {
    top = self->_separatorWidths.top;
    v55 = v6 + top;
    v13 = v13 - top;
    v70.origin.x = v4;
    v70.origin.y = v6;
    v70.size.width = v8;
    v70.size.height = v10;
    v52 = v19;
    v45 = v20;
    v46 = CGRectGetMinX(v70);
    v71.origin.x = v4;
    v71.origin.y = v6;
    v71.size.width = v8;
    v71.size.height = v10;
    v47 = CGRectGetMinY(v71);
    v72.origin.x = v4;
    v72.origin.y = v6;
    v72.size.width = v8;
    v72.size.height = v10;
    v48 = CGRectGetWidth(v72);
    v49 = self->_separatorWidths.top;
    v50 = self->_topBorderView;
    v51 = left + v46;
    v20 = v45;
    v19 = v52;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v51, v57 + v47, v48 - (right + left), v49 - (v57 + v56), v4, v6, v8, v10);
    [(UIView *)v50 setFrame:?];
    v6 = v55;
  }

  [contentView setFrame:{v20, v6, v19, v13, *&v52}];
}

- (void)_setPosition:(int64_t)position
{
  if (self->_position != position)
  {
    self->_position = position;
    [(SKUICollectionViewCell *)self _updateBorderVisibility];
  }
}

- (BOOL)_showsBottomBorder
{
  separatorStyle = self->_separatorStyle;
  result = 1;
  if (separatorStyle > 3)
  {
    if (separatorStyle != 4 && separatorStyle != 7)
    {
      return 0;
    }
  }

  else if (separatorStyle != 2)
  {
    if (separatorStyle == 3)
    {
      return (self->_position & 0x20) == 0;
    }

    return 0;
  }

  return result;
}

- (BOOL)_showsLeftBorder
{
  separatorStyle = self->_separatorStyle;
  v3 = self->_position & 1;
  v4 = v3 == 0;
  v6 = separatorStyle != 5 && separatorStyle != 0;
  if (separatorStyle == 6)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    v7 = v3 == 0;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (separatorStyle == 7)
  {
    return (self->_position & 1) == 0;
  }

  else
  {
    return v8;
  }
}

- (BOOL)_showsRightBorder
{
  separatorStyle = self->_separatorStyle;
  v3 = self->_position & 4;
  v4 = v3 == 0;
  v6 = separatorStyle != 5 && separatorStyle != 0;
  if (separatorStyle == 6)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    v7 = v3 == 0;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (separatorStyle == 7)
  {
    return (self->_position & 4) == 0;
  }

  else
  {
    return v8;
  }
}

- (BOOL)_showsTopBorder
{
  selfCopy = self;
  LOBYTE(self) = 0;
  separatorStyle = selfCopy->_separatorStyle;
  if (separatorStyle <= 7)
  {
    if (((1 << separatorStyle) & 0x9C) != 0)
    {
      LODWORD(self) = (LOBYTE(selfCopy->_position) >> 3) & 1;
    }

    else if (((1 << separatorStyle) & 0x22) != 0)
    {
      LOBYTE(self) = (selfCopy->_position & 8) == 0;
    }
  }

  return self;
}

- (void)_updateBorderVisibility
{
  _showsBottomBorder = [(SKUICollectionViewCell *)self _showsBottomBorder];
  v4 = _showsBottomBorder ^ [(UIView *)self->_bottomBorderView isHidden];
  if ((v4 & 1) == 0)
  {
    [(UIView *)self->_bottomBorderView setHidden:!_showsBottomBorder];
  }

  _showsLeftBorder = [(SKUICollectionViewCell *)self _showsLeftBorder];
  if (_showsLeftBorder == [(UIView *)self->_leftBorderView isHidden])
  {
    [(UIView *)self->_leftBorderView setHidden:!_showsLeftBorder];
    v6 = 1;
  }

  else
  {
    v6 = v4 ^ 1;
  }

  _showsRightBorder = [(SKUICollectionViewCell *)self _showsRightBorder];
  if (_showsRightBorder == [(UIView *)self->_rightBorderView isHidden])
  {
    [(UIView *)self->_rightBorderView setHidden:!_showsRightBorder];
    v6 = 1;
  }

  _showsTopBorder = [(SKUICollectionViewCell *)self _showsTopBorder];
  if (_showsTopBorder == [(UIView *)self->_topBorderView isHidden])
  {
    [(UIView *)self->_topBorderView setHidden:!_showsTopBorder];
  }

  else if (!v6)
  {
    return;
  }

  [(SKUICollectionViewCell *)self setNeedsLayout];
}

- (UIEdgeInsets)separatorWidths
{
  top = self->_separatorWidths.top;
  left = self->_separatorWidths.left;
  bottom = self->_separatorWidths.bottom;
  right = self->_separatorWidths.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)separatorInsets
{
  top = self->_separatorInsets.top;
  left = self->_separatorInsets.left;
  bottom = self->_separatorInsets.bottom;
  right = self->_separatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICollectionViewCell initWithFrame:]";
}

@end