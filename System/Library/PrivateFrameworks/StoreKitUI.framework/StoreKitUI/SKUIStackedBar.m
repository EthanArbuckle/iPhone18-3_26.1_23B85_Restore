@interface SKUIStackedBar
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIStackedBar)initWithFrame:(CGRect)a3;
- (SKUIStackedBarDelegate)delegate;
- (void)_backAction:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)_reload;
- (void)_selectItemAtIndex:(int64_t)a3;
- (void)animateToFullSizeIfNecessary;
- (void)layoutSubviews;
- (void)setItems:(id)a3;
- (void)setLastItemExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setOffset:(double)a3;
- (void)sizeToFit;
@end

@implementation SKUIStackedBar

- (SKUIStackedBar)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = SKUIStackedBar;
  v3 = [(SKUIStackedBar *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = v3->_backdropView;
    v3->_backdropView = v4;

    [(SKUIStackedBar *)v3 addSubview:v3->_backdropView];
    v3->_lastItemExpanded = 1;
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    wrapperView = v3->_wrapperView;
    v3->_wrapperView = v6;

    [(UIView *)v3->_wrapperView setClipsToBounds:1];
    [(SKUIStackedBar *)v3 addSubview:v3->_wrapperView];
    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    maskView = v3->_maskView;
    v3->_maskView = v8;

    v10 = [(UIView *)v3->_maskView layer];
    v11 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA310]];
    [v10 setCompositingFilter:v11];

    v12 = v3->_maskView;
    v13 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v12 setBackgroundColor:v13];

    [(UIView *)v3->_wrapperView addSubview:v3->_maskView];
  }

  return v3;
}

- (void)setItems:(id)a3
{
  v5 = a3;
  if (self->_items != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_items, a3);
    [(SKUIStackedBar *)self _reload];
    v5 = v6;
  }
}

- (void)setLastItemExpanded:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_lastItemExpanded != a3)
  {
    if (a4)
    {
      [(SKUIStackedBar *)self layoutIfNeeded];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __47__SKUIStackedBar_setLastItemExpanded_animated___block_invoke;
      v7[3] = &unk_2781FC228;
      v7[4] = self;
      v8 = a3;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __47__SKUIStackedBar_setLastItemExpanded_animated___block_invoke_2;
      v6[3] = &unk_2781F84A0;
      v6[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v6 completion:0.2];
    }

    else
    {
      self->_lastItemExpanded = a3;

      [(SKUIStackedBar *)self _reload];
    }
  }
}

uint64_t __47__SKUIStackedBar_setLastItemExpanded_animated___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 440) = *(a1 + 40);
  [*(a1 + 32) _reload];
  [*(a1 + 32) frame];
  v3 = v2;
  v5 = v4;
  [*(a1 + 32) sizeThatFits:{v6, v7}];
  [*(a1 + 32) setFrame:{v3, v5, v8, v9}];
  v10 = *(a1 + 32);

  return [v10 layoutIfNeeded];
}

- (void)setOffset:(double)a3
{
  if (!self->_splitViewStyle && self->_offset != a3)
  {
    self->_offset = a3;
    [(SKUIStackedBar *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    offset = self->_offset;
    if (offset < self->_newOffset && offset > -v4)
    {
      self->_newOffset = offset;
    }

    [(SKUIStackedBar *)self frame];
    [(SKUIStackedBar *)self setFrame:?];

    [(SKUIStackedBar *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SKUIStackedBar;
  [(SKUIStackedBar *)&v22 layoutSubviews];
  backdropView = self->_backdropView;
  [(SKUIStackedBar *)self bounds];
  [(_UIBackdropView *)backdropView setFrame:?];
  [(SKUIStackedBar *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(SKUIStackedBar *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(UIView *)self->_wrapperView setFrame:v5, v9 - v10, v7, v10];
  [(SKUIStackedBar *)self bounds];
  maskView = self->_maskView;
  [(UIView *)self->_wrapperView convertRect:self fromView:?];
  [(UIView *)maskView setFrame:?];
  [(UIView *)self->_wrapperView frame];
  [(UIView *)self->_maskView setHidden:v12 >= 0.0];
  [(UIView *)self->_wrapperView bounds];
  v14 = v13;
  if ([(NSArray *)self->_cells count])
  {
    v15 = 0;
    do
    {
      v16 = [(NSArray *)self->_cells objectAtIndex:v15];
      [(SKUIStackedBar *)self bounds];
      [v16 sizeThatFits:{CGRectGetWidth(v23), 0.0}];
      v19 = v17;
      v20 = v18;
      if (v15)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 0.0;
        if (!self->_hidesStatusBar)
        {
          if (self->_splitViewStyle)
          {
            v21 = 0.0;
          }

          else
          {
            v20 = v18 + 20.0;
            v21 = 20.0;
          }
        }
      }

      [v16 setFrame:{0.0, v14, v17, v20}];
      [v16 setTitleEdgeInsets:{v21, 50.0, 0.0, 50.0}];
      v24.origin.x = 0.0;
      v24.origin.y = v14;
      v24.size.width = v19;
      v24.size.height = v20;
      v14 = v14 + CGRectGetHeight(v24);

      ++v15;
    }

    while (v15 < [(NSArray *)self->_cells count]);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(NSArray *)self->_items count:a3.width];
  if (v5)
  {
    if (v5 == 1)
    {
      if (self->_lastItemExpanded)
      {
        v6 = 0.0;
        if (self->_zeroHeightWhenFirstChildExpanded)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }

    else if (self->_lastItemExpanded)
    {
LABEL_8:
      v6 = (v5 - 1) * 25.0 + 44.0;
      goto LABEL_10;
    }

    v6 = v5 * 25.0;
    goto LABEL_10;
  }

  v6 = 44.0;
LABEL_10:
  if (!self->_hidesStatusBar && !self->_splitViewStyle)
  {
    v6 = v6 + 20.0;
  }

  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)sizeToFit
{
  [(SKUIStackedBar *)self frame];
  v4 = v3;
  v6 = v5;
  [(SKUIStackedBar *)self sizeThatFits:v7, v8];

  [(SKUIStackedBar *)self setFrame:v4, v6, v9, v10];
}

- (void)animateToFullSizeIfNecessary
{
  if (!self->_splitViewStyle)
  {
    [(SKUIStackedBar *)self frame];
    v4 = v3;
    [(SKUIStackedBar *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    if (v4 > 64.0 && v4 < v5)
    {
      v7 = v5;
      [(SKUIStackedBar *)self frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [(SKUIStackedBar *)self bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(SKUIStackedBar *)self bounds];
      offset = self->_offset;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __46__SKUIStackedBar_animateToFullSizeIfNecessary__block_invoke;
      v25[3] = &unk_2781FC250;
      v25[4] = self;
      v25[5] = v9;
      v25[6] = v11;
      v25[7] = v13;
      *&v25[8] = v7;
      v25[9] = v15;
      v25[10] = v17;
      v25[11] = v19;
      *&v25[12] = v7;
      v25[13] = v21;
      v25[14] = v22;
      v25[15] = v23;
      v25[16] = 0x4034000000000000;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __46__SKUIStackedBar_animateToFullSizeIfNecessary__block_invoke_2;
      v24[3] = &unk_2781FC278;
      v24[4] = self;
      *&v24[5] = offset;
      [MEMORY[0x277D75D18] animateWithDuration:v25 animations:v24 completion:0.3];
    }
  }
}

uint64_t __46__SKUIStackedBar_animateToFullSizeIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 456) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v2 = *(*(a1 + 32) + 464);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

double __46__SKUIStackedBar_animateToFullSizeIfNecessary__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    result = v3[56];
    if (result == *(a1 + 40))
    {
      [v3 setNeedsLayout];
      v5 = *(a1 + 32);
      result = *(v5 + 448);
      *(v5 + 472) = result;
    }
  }

  return result;
}

- (void)_buttonAction:(id)a3
{
  v4 = [(NSArray *)self->_cells indexOfObject:a3];

  [(SKUIStackedBar *)self _selectItemAtIndex:v4];
}

- (void)_backAction:(id)a3
{
  v4 = [(NSArray *)self->_items count]- 2;

  [(SKUIStackedBar *)self _selectItemAtIndex:v4];
}

- (void)_reload
{
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:self->_cells];
  if ([(NSArray *)self->_items count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_items objectAtIndex:v4];
      if (v4 >= [(NSArray *)v3 count])
      {
        v6 = objc_alloc_init(SKUIStackedBarCell);
        [(SKUIStackedBarCell *)v6 addTarget:self action:sel__buttonAction_ forControlEvents:64];
        [(UIView *)self->_wrapperView addSubview:v6];
        [(NSArray *)v3 addObject:v6];
      }

      else
      {
        v6 = [(NSArray *)v3 objectAtIndex:v4];
      }

      v7 = [v5 title];
      [(SKUIStackedBarCell *)v6 setTitle:v7 forState:0];

      v8 = !self->_alwaysShowsBackButton && [(NSArray *)self->_items count]< 2 || [(SKUIStackedBar *)self splitViewStyle];
      v9 = [(SKUIStackedBarCell *)v6 backButton];
      [v9 setHidden:v8];

      v10 = [(SKUIStackedBarCell *)v6 backButton];
      [v10 addTarget:self action:sel__backAction_ forControlEvents:64];

      v11 = self->_lastItemExpanded && v4 == [(NSArray *)self->_items count]- 1;
      [(SKUIStackedBarCell *)v6 setExpanded:v11];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_items count]);
  }

  cells = self->_cells;
  self->_cells = v3;
  v13 = v3;

  [(UIView *)self->_wrapperView bringSubviewToFront:self->_maskView];

  [(SKUIStackedBar *)self setNeedsLayout];
}

- (void)_selectItemAtIndex:(int64_t)a3
{
  v5 = [(SKUIStackedBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 stackedBar:self didSelectItemAtIndex:a3];
  }
}

- (SKUIStackedBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end