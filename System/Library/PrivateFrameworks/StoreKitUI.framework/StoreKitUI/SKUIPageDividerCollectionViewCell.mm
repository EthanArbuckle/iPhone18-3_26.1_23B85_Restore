@interface SKUIPageDividerCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (SKUIPageDividerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setColoringWithStyle:(id)style;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setDividerType:(int64_t)type;
- (void)setInsetColor:(id)color;
- (void)setLeftEdgeInset:(double)inset;
- (void)setRightEdgeInset:(double)inset;
- (void)setVerticalAlignment:(int64_t)alignment;
@end

@implementation SKUIPageDividerCollectionViewCell

- (SKUIPageDividerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SKUIPageDividerCollectionViewCell;
  v3 = [(SKUIPageDividerCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    topDividerLine = v3->_topDividerLine;
    v3->_topDividerLine = v4;

    v6 = v3->_topDividerLine;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    contentView = [(SKUIPageDividerCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_topDividerLine];
  }

  return v3;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
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

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
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

  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
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

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && (v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT)))
  {
    [(SKUIPageDividerCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
    if (elementCopy)
    {
      goto LABEL_5;
    }
  }

  else if (elementCopy)
  {
LABEL_5:
    style = [elementCopy style];
    v18 = SKUIViewElementPaddingForStyle(style, 0);
    v20 = v19;

    goto LABEL_8;
  }

  v18 = *MEMORY[0x277D768C8];
  v20 = *(MEMORY[0x277D768C8] + 16);
LABEL_8:
  [contextCopy displayScale];
  v22 = 1.0 / v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = elementCopy;
    if ([v23 dividerType] == 2)
    {
      [SKUIPageTitledDividerCollectionViewCell viewElementInsetDividerHeight:v23];
      v22 = v24 + v22 * 2.0;
    }
  }

  widthCopy = width;
  v26 = v20 + v18 + v22;
  result.height = v26;
  result.width = widthCopy;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SKUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
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

  primaryTextColor = [schemeCopy primaryTextColor];
  topDividerLine = self->_topDividerLine;
  if (primaryTextColor)
  {
    [(UIView *)self->_topDividerLine setBackgroundColor:primaryTextColor];
    bottomDividerLine = self->_bottomDividerLine;
    if (bottomDividerLine)
    {
      [(UIView *)bottomDividerLine setBackgroundColor:primaryTextColor];
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

- (void)setColoringWithStyle:(id)style
{
  styleCopy = style;
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

  ikBorderColor = [styleCopy ikBorderColor];
  color = [ikBorderColor color];

  topDividerLine = self->_topDividerLine;
  if (color)
  {
    [(UIView *)self->_topDividerLine setBackgroundColor:color];
    bottomDividerLine = self->_bottomDividerLine;
    if (bottomDividerLine)
    {
      [(UIView *)bottomDividerLine setBackgroundColor:color];
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

- (void)setDividerType:(int64_t)type
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

  if (self->_dividerType != type)
  {
    self->_dividerType = type;
    dividerType = [(SKUIPageDividerCollectionViewCell *)self dividerType];
    bottomDividerLine = self->_bottomDividerLine;
    if (dividerType == 2)
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

      contentView = [(SKUIPageDividerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_bottomDividerLine];

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

      contentView2 = [(SKUIPageDividerCollectionViewCell *)self contentView];
      [contentView2 addSubview:self->_insetView];
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

- (void)setInsetColor:(id)color
{
  colorCopy = color;
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

  if (self->_insetColor != colorCopy)
  {
    v13 = [(UIColor *)colorCopy copy];
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

- (void)setLeftEdgeInset:(double)inset
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

  if (self->_leftEdgeInset != inset)
  {
    self->_leftEdgeInset = inset;
    [(SKUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setRightEdgeInset:(double)inset
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

  if (self->_rightEdgeInset != inset)
  {
    self->_rightEdgeInset = inset;
    [(SKUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setVerticalAlignment:(int64_t)alignment
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

  if (self->_verticalAlignment != alignment)
  {
    self->_verticalAlignment = alignment;
    [(SKUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
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

  backgroundColor = [attributesCopy backgroundColor];
  [(SKUIPageDividerCollectionViewCell *)self setBackgroundColor:backgroundColor];

  v14.receiver = self;
  v14.super_class = SKUIPageDividerCollectionViewCell;
  [(SKUIPageDividerCollectionViewCell *)&v14 applyLayoutAttributes:attributesCopy];
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
  contentView = [(SKUIPageDividerCollectionViewCell *)self contentView];
  [contentView bounds];
  v13 = v12;
  v15 = v14;

  dividerType = [(SKUIPageDividerCollectionViewCell *)self dividerType];
  traitCollection = [(SKUIPageDividerCollectionViewCell *)self traitCollection];
  [traitCollection displayScale];
  v19 = v18;
  if (v18 <= 0.00000011920929)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v19 = v21;
  }

  v22 = 1.0 / v19;
  if (dividerType != 2)
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