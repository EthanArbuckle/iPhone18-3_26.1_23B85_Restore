@interface SKUIScrollingTabBarBackgroundView
- (void)_updateTopHairlineColor;
- (void)layoutSubviews;
- (void)setBackdropBarGroupName:(id)a3;
- (void)setShowsBackdrop:(BOOL)a3;
- (void)setShowsBottomHairline:(BOOL)a3;
- (void)setShowsTopHairline:(BOOL)a3;
- (void)setUsesOpaqueColorForTopHairline:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SKUIScrollingTabBarBackgroundView

- (void)layoutSubviews
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollingTabBarBackgroundView layoutSubviews]";
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = SKUIScrollingTabBarBackgroundView;
  v4 = a3;
  [(SKUIScrollingTabBarBackgroundView *)&v10 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;

  v7 = [(SKUIScrollingTabBarBackgroundView *)self traitCollection];
  [v7 displayScale];
  v9 = vabdd_f64(v6, v8);

  if (v9 > 0.00000011920929)
  {
    [(SKUIScrollingTabBarBackgroundView *)self setNeedsLayout];
  }
}

- (void)setBackdropBarGroupName:(id)a3
{
  backdropView = a3;
  v5 = backdropView;
  if (self->_backdropBarGroupName != backdropView)
  {
    v8 = backdropView;
    v6 = [(_UIBackdropView *)backdropView copy];
    backdropBarGroupName = self->_backdropBarGroupName;
    self->_backdropBarGroupName = v6;

    v5 = v8;
    backdropView = self->_backdropView;
    if (backdropView)
    {
      backdropView = [(_UIBackdropView *)backdropView setGroupName:v8];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](backdropView, v5);
}

- (void)setShowsBackdrop:(BOOL)a3
{
  if (self->_showsBackdrop != a3)
  {
    self->_showsBackdrop = a3;
    if (a3)
    {
      if (self->_backdropView)
      {
        v4 = 0;
      }

      else
      {
        v5 = objc_alloc(MEMORY[0x277D75DE8]);
        [(SKUIScrollingTabBarBackgroundView *)self bounds];
        v6 = [v5 initWithFrame:2010 privateStyle:?];
        backdropView = self->_backdropView;
        self->_backdropView = v6;

        [(_UIBackdropView *)self->_backdropView setUserInteractionEnabled:0];
        if (self->_backdropBarGroupName)
        {
          [(_UIBackdropView *)self->_backdropView setGroupName:?];
        }

        [(SKUIScrollingTabBarBackgroundView *)self insertSubview:self->_backdropView atIndex:0];
        [(SKUIScrollingTabBarBackgroundView *)self setNeedsLayout];
        v4 = !self->_showsBackdrop;
      }
    }

    else
    {
      v4 = 1;
    }

    v8 = self->_backdropView;

    [(_UIBackdropView *)v8 setHidden:v4];
  }
}

- (void)setShowsBottomHairline:(BOOL)a3
{
  if (self->_showsBottomHairline != a3)
  {
    self->_showsBottomHairline = a3;
    if (a3)
    {
      if (self->_bottomHairlineView)
      {
        v4 = 0;
      }

      else
      {
        v5 = objc_alloc(MEMORY[0x277D75D18]);
        v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        bottomHairlineView = self->_bottomHairlineView;
        self->_bottomHairlineView = v6;

        v8 = self->_bottomHairlineView;
        v9 = [MEMORY[0x277D75348] _barHairlineShadowColor];
        [(UIView *)v8 setBackgroundColor:v9];

        [(UIView *)self->_bottomHairlineView setUserInteractionEnabled:0];
        [(SKUIScrollingTabBarBackgroundView *)self addSubview:self->_bottomHairlineView];
        [(SKUIScrollingTabBarBackgroundView *)self setNeedsLayout];
        v4 = !self->_showsBottomHairline;
      }
    }

    else
    {
      v4 = 1;
    }

    v10 = self->_bottomHairlineView;

    [(UIView *)v10 setHidden:v4];
  }
}

- (void)setShowsTopHairline:(BOOL)a3
{
  if (self->_showsTopHairline != a3)
  {
    self->_showsTopHairline = a3;
    if (a3)
    {
      if (self->_topHairlineView)
      {
        v4 = 0;
      }

      else
      {
        v5 = objc_alloc(MEMORY[0x277D75D18]);
        v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        topHairlineView = self->_topHairlineView;
        self->_topHairlineView = v6;

        [(UIView *)self->_topHairlineView setUserInteractionEnabled:0];
        [(SKUIScrollingTabBarBackgroundView *)self _updateTopHairlineColor];
        [(SKUIScrollingTabBarBackgroundView *)self addSubview:self->_topHairlineView];
        [(SKUIScrollingTabBarBackgroundView *)self setNeedsLayout];
        v4 = !self->_showsTopHairline;
      }
    }

    else
    {
      v4 = 1;
    }

    v8 = self->_topHairlineView;

    [(UIView *)v8 setHidden:v4];
  }
}

- (void)setUsesOpaqueColorForTopHairline:(BOOL)a3
{
  if (self->_usesOpaqueColorForTopHairline != a3)
  {
    self->_usesOpaqueColorForTopHairline = a3;
    [(SKUIScrollingTabBarBackgroundView *)self _updateTopHairlineColor];
  }
}

- (void)_updateTopHairlineColor
{
  if (self->_usesOpaqueColorForTopHairline)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.615686275 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] _barHairlineShadowColor];
  }
  v3 = ;
  [(UIView *)self->_topHairlineView setBackgroundColor:v3];
}

@end