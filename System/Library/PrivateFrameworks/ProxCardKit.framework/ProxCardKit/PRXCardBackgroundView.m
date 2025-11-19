@interface PRXCardBackgroundView
- (PRXCardBackgroundView)initWithFrame:(CGRect)a3;
- (PRXCardBackgroundView)initWithFrame:(CGRect)a3 containerLayoutMargins:(NSDirectionalEdgeInsets)a4;
- (void)_updateCornerRadius;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PRXCardBackgroundView

- (PRXCardBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = PRXCardContainerDefaultLayoutMargins();

  return [(PRXCardBackgroundView *)self initWithFrame:x containerLayoutMargins:y, width, height, v11, v8, v9, v10];
}

- (PRXCardBackgroundView)initWithFrame:(CGRect)a3 containerLayoutMargins:(NSDirectionalEdgeInsets)a4
{
  trailing = a4.trailing;
  bottom = a4.bottom;
  leading = a4.leading;
  top = a4.top;
  v13.receiver = self;
  v13.super_class = PRXCardBackgroundView;
  v8 = [(PRXCardBackgroundView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = v8;
  if (v8)
  {
    v8->_containerLayoutMargins.top = top;
    v8->_containerLayoutMargins.leading = leading;
    v8->_containerLayoutMargins.bottom = bottom;
    v8->_containerLayoutMargins.trailing = trailing;
    v10 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PRXCardBackgroundView *)v9 setBackgroundColor:v10];

    [(PRXCardBackgroundView *)v9 _updateCornerRadius];
    v11 = v9;
  }

  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v14.receiver = self;
  v14.super_class = PRXCardBackgroundView;
  v4 = a3;
  [(PRXCardBackgroundView *)&v14 traitCollectionDidChange:v4];
  [v4 displayCornerRadius];
  v6 = v5;

  v7 = [(PRXCardBackgroundView *)self traitCollection];
  [v7 displayCornerRadius];
  v9 = v8;

  if (v6 != v9)
  {
    [(PRXCardBackgroundView *)self _updateCornerRadius];
  }

  v10 = [(PRXCardBackgroundView *)self traitCollection];
  v11 = [v10 customBackgroundColor];

  if (v11)
  {
    v12 = [(PRXCardBackgroundView *)self traitCollection];
    v13 = [v12 customBackgroundColor];
    [(PRXCardBackgroundView *)self setBackgroundColor:v13];
  }
}

- (void)_updateCornerRadius
{
  v3 = [(PRXCardBackgroundView *)self traitCollection];
  [v3 displayCornerRadius];
  v5 = v4 - self->_containerLayoutMargins.bottom;

  v6 = fmax(13.0, v5);

  [(PRXCardBackgroundView *)self _setContinuousCornerRadius:v6];
}

@end