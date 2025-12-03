@interface PRXCardBackgroundView
- (PRXCardBackgroundView)initWithFrame:(CGRect)frame;
- (PRXCardBackgroundView)initWithFrame:(CGRect)frame containerLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)_updateCornerRadius;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PRXCardBackgroundView

- (PRXCardBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = PRXCardContainerDefaultLayoutMargins();

  return [(PRXCardBackgroundView *)self initWithFrame:x containerLayoutMargins:y, width, height, v11, v8, v9, v10];
}

- (PRXCardBackgroundView)initWithFrame:(CGRect)frame containerLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v13.receiver = self;
  v13.super_class = PRXCardBackgroundView;
  v8 = [(PRXCardBackgroundView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v9 = v8;
  if (v8)
  {
    v8->_containerLayoutMargins.top = top;
    v8->_containerLayoutMargins.leading = leading;
    v8->_containerLayoutMargins.bottom = bottom;
    v8->_containerLayoutMargins.trailing = trailing;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PRXCardBackgroundView *)v9 setBackgroundColor:systemBackgroundColor];

    [(PRXCardBackgroundView *)v9 _updateCornerRadius];
    v11 = v9;
  }

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  v14.receiver = self;
  v14.super_class = PRXCardBackgroundView;
  changeCopy = change;
  [(PRXCardBackgroundView *)&v14 traitCollectionDidChange:changeCopy];
  [changeCopy displayCornerRadius];
  v6 = v5;

  traitCollection = [(PRXCardBackgroundView *)self traitCollection];
  [traitCollection displayCornerRadius];
  v9 = v8;

  if (v6 != v9)
  {
    [(PRXCardBackgroundView *)self _updateCornerRadius];
  }

  traitCollection2 = [(PRXCardBackgroundView *)self traitCollection];
  customBackgroundColor = [traitCollection2 customBackgroundColor];

  if (customBackgroundColor)
  {
    traitCollection3 = [(PRXCardBackgroundView *)self traitCollection];
    customBackgroundColor2 = [traitCollection3 customBackgroundColor];
    [(PRXCardBackgroundView *)self setBackgroundColor:customBackgroundColor2];
  }
}

- (void)_updateCornerRadius
{
  traitCollection = [(PRXCardBackgroundView *)self traitCollection];
  [traitCollection displayCornerRadius];
  v5 = v4 - self->_containerLayoutMargins.bottom;

  v6 = fmax(13.0, v5);

  [(PRXCardBackgroundView *)self _setContinuousCornerRadius:v6];
}

@end