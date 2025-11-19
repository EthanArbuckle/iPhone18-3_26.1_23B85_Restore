@interface SKUIPageDividerCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (SKUIPageDividerCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setColoringWithStyle:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setDividerType:(int64_t)a3;
- (void)setInsetColor:(id)a3;
- (void)setLeftEdgeInset:(double)a3;
- (void)setRightEdgeInset:(double)a3;
- (void)setVerticalAlignment:(int64_t)a3;
@end

@implementation SKUIPageDividerCollectionViewCell

- (SKUIPageDividerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SKUIPageDividerCollectionViewCell;
  v3 = [(SKUIPageDividerCollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    topDividerLine = v3->_topDividerLine;
    v3->_topDividerLine = v4;

    v6 = v3->_topDividerLine;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    v8 = [(SKUIPageDividerCollectionViewCell *)v3 contentView];
    [v8 addSubview:v3->_topDividerLine];
  }

  return v3;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageDividerCollectionViewCell *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIPageDividerCollectionViewCell *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUIPageDividerCollectionViewCell *)v5 requestLayoutForViewElement:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && (v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT)))
  {
    [(SKUIPageDividerCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v17 = [v7 style];
    v18 = SKUIViewElementPaddingForStyle(v17, 0);
    v20 = v19;

    goto LABEL_8;
  }

  v18 = *MEMORY[0x277D768C8];
  v20 = *(MEMORY[0x277D768C8] + 16);
LABEL_8:
  [v8 displayScale];
  v22 = 1.0 / v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v7;
    if ([v23 dividerType] == 2)
    {
      [SKUIPageTitledDividerCollectionViewCell viewElementInsetDividerHeight:v23];
      v22 = v24 + v22 * 2.0;
    }
  }

  v25 = a3;
  v26 = v20 + v18 + v22;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageDividerCollectionViewCell *)v5 setColoringWithColorScheme:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 primaryTextColor];
  topDividerLine = self->_topDividerLine;
  if (v13)
  {
    [(UIView *)self->_topDividerLine setBackgroundColor:v13];
    bottomDividerLine = self->_bottomDividerLine;
    if (bottomDividerLine)
    {
      [(UIView *)bottomDividerLine setBackgroundColor:v13];
    }
  }

  else
  {
    v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)topDividerLine setBackgroundColor:v16];

    v17 = self->_bottomDividerLine;
    if (v17)
    {
      v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v17 setBackgroundColor:v18];
    }
  }
}

- (void)setColoringWithStyle:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageDividerCollectionViewCell *)v5 setColoringWithStyle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 ikBorderColor];
  v14 = [v13 color];

  topDividerLine = self->_topDividerLine;
  if (v14)
  {
    [(UIView *)self->_topDividerLine setBackgroundColor:v14];
    bottomDividerLine = self->_bottomDividerLine;
    if (bottomDividerLine)
    {
      [(UIView *)bottomDividerLine setBackgroundColor:v14];
    }
  }

  else
  {
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)topDividerLine setBackgroundColor:v17];

    v18 = self->_bottomDividerLine;
    if (v18)
    {
      v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v18 setBackgroundColor:v19];
    }
  }
}

- (void)setDividerType:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageDividerCollectionViewCell *)v5 setDividerType:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_dividerType != a3)
  {
    self->_dividerType = a3;
    v13 = [(SKUIPageDividerCollectionViewCell *)self dividerType];
    bottomDividerLine = self->_bottomDividerLine;
    if (v13 == 2)
    {
      if (!bottomDividerLine)
      {
        v15 = objc_alloc_init(MEMORY[0x277D75D18]);
        v16 = self->_bottomDividerLine;
        self->_bottomDividerLine = v15;

        v17 = self->_bottomDividerLine;
        v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
        [(UIView *)v17 setBackgroundColor:v18];
      }

      v19 = [(SKUIPageDividerCollectionViewCell *)self contentView];
      [v19 addSubview:self->_bottomDividerLine];

      if (!self->_insetView)
      {
        v20 = objc_alloc_init(MEMORY[0x277D75D18]);
        insetView = self->_insetView;
        self->_insetView = v20;

        v22 = self->_insetView;
        if (self->_insetColor)
        {
          [(UIView *)self->_insetView setBackgroundColor:?];
        }

        else
        {
          v24 = [MEMORY[0x277D75348] colorWithWhite:0.968627451 alpha:1.0];
          [(UIView *)v22 setBackgroundColor:v24];
        }
      }

      v25 = [(SKUIPageDividerCollectionViewCell *)self contentView];
      [v25 addSubview:self->_insetView];
    }

    else
    {
      if (bottomDividerLine)
      {
        [(UIView *)bottomDividerLine removeFromSuperview];
      }

      v23 = self->_insetView;
      if (v23)
      {
        [(UIView *)v23 removeFromSuperview];
      }
    }
  }
}

- (void)setInsetColor:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageDividerCollectionViewCell *)v5 setInsetColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_insetColor != v4)
  {
    v13 = [(UIColor *)v4 copy];
    insetColor = self->_insetColor;
    self->_insetColor = v13;

    insetView = self->_insetView;
    if (insetView)
    {
      if (self->_insetColor)
      {
        [(UIView *)self->_insetView setBackgroundColor:?];
      }

      else
      {
        v16 = [MEMORY[0x277D75348] colorWithWhite:0.968627451 alpha:1.0];
        [(UIView *)insetView setBackgroundColor:v16];
      }
    }
  }
}

- (void)setLeftEdgeInset:(double)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageDividerCollectionViewCell *)v5 setLeftEdgeInset:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_leftEdgeInset != a3)
  {
    self->_leftEdgeInset = a3;
    [(SKUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setRightEdgeInset:(double)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageDividerCollectionViewCell *)v5 setRightEdgeInset:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_rightEdgeInset != a3)
  {
    self->_rightEdgeInset = a3;
    [(SKUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setVerticalAlignment:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageDividerCollectionViewCell *)v5 setVerticalAlignment:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_verticalAlignment != a3)
  {
    self->_verticalAlignment = a3;
    [(SKUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageDividerCollectionViewCell *)v5 applyLayoutAttributes:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 backgroundColor];
  [(SKUIPageDividerCollectionViewCell *)self setBackgroundColor:v13];

  v14.receiver = self;
  v14.super_class = SKUIPageDividerCollectionViewCell;
  [(SKUIPageDividerCollectionViewCell *)&v14 applyLayoutAttributes:v4];
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIPageDividerCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v37.receiver = self;
  v37.super_class = SKUIPageDividerCollectionViewCell;
  [(SKUIPageDividerCollectionViewCell *)&v37 layoutSubviews];
  v11 = [(SKUIPageDividerCollectionViewCell *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;

  v16 = [(SKUIPageDividerCollectionViewCell *)self dividerType];
  v17 = [(SKUIPageDividerCollectionViewCell *)self traitCollection];
  [v17 displayScale];
  v19 = v18;
  if (v18 <= 0.00000011920929)
  {
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 scale];
    v19 = v21;
  }

  v22 = 1.0 / v19;
  if (v16 != 2)
  {
    verticalAlignment = self->_verticalAlignment;
    if (verticalAlignment)
    {
      if (verticalAlignment != 1)
      {
        v34 = *(MEMORY[0x277CBF3A0] + 16);
        v22 = *(MEMORY[0x277CBF3A0] + 24);
        leftEdgeInset = *MEMORY[0x277CBF3A0];
        v32 = *(MEMORY[0x277CBF3A0] + 8);
        goto LABEL_15;
      }

      v32 = v15 - v22;
    }

    else
    {
      v32 = 0.0;
    }

    leftEdgeInset = self->_leftEdgeInset;
    v34 = v13 - leftEdgeInset - self->_rightEdgeInset;
LABEL_15:
    top = self->_contentInset.top;
    left = self->_contentInset.left;
    v26 = leftEdgeInset + left;
    v28 = v32 + top;
    v29 = v34 - (left + self->_contentInset.right);
    v22 = v22 - (top + self->_contentInset.bottom);
    v30 = &OBJC_IVAR___SKUIPageDividerCollectionViewCell__topDividerLine;
    goto LABEL_16;
  }

  [(UIView *)self->_topDividerLine setFrame:self->_leftEdgeInset, 0.0, v13 - self->_leftEdgeInset - self->_rightEdgeInset, v22];
  v23 = self->_leftEdgeInset;
  v24 = v13 - v23 - self->_rightEdgeInset;
  [(SKUIPageDividerCollectionViewCell *)self dividerHeight];
  [(UIView *)self->_insetView setFrame:v23, v22, v24, v25 + v22 * -2.0];
  v26 = self->_leftEdgeInset;
  [(SKUIPageDividerCollectionViewCell *)self dividerHeight];
  v28 = v27;
  v29 = v13 - self->_leftEdgeInset - self->_rightEdgeInset;
  v30 = &OBJC_IVAR___SKUIPageDividerCollectionViewCell__bottomDividerLine;
LABEL_16:
  [*(&self->super.super.super.super.super.isa + *v30) setFrame:{v26, v28, v29, v22}];
}

@end