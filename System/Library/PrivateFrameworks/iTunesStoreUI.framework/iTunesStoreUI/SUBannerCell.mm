@interface SUBannerCell
- (SUBannerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_buttonAction:(id)action;
- (void)_reloadButtons;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
@end

@implementation SUBannerCell

- (SUBannerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = SUBannerCell;
  v4 = [(SUTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(SUTableCellContentView *)v4->super._configurationView removeFromSuperview];
  }

  return v5;
}

- (void)dealloc
{
  if ([(SUCellConfiguration *)[(SUTableCell *)self configuration] view]== self)
  {
    [(SUCellConfiguration *)[(SUTableCell *)self configuration] setView:0];
  }

  [(UIButton *)self->_leftButton removeTarget:self action:sel__buttonAction_ forControlEvents:64];
  [(UIButton *)self->_leftButton removeFromSuperview];

  self->_leftButton = 0;
  [(UIButton *)self->_rightButton removeTarget:self action:sel__buttonAction_ forControlEvents:64];
  [(UIButton *)self->_rightButton removeFromSuperview];

  self->_rightButton = 0;
  v3.receiver = self;
  v3.super_class = SUBannerCell;
  [(SUTableCell *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SUBannerCell;
  [(SUTableCell *)&v9 layoutSubviews];
  configuration = [(SUTableCell *)self configuration];
  if (configuration)
  {
    v4 = configuration;
    [-[SUBannerCell contentView](self "contentView")];
    [(SUCellConfiguration *)v4 setLayoutSize:v5, v6];
    if (![(UIButton *)self->_leftButton backgroundImageForState:0]|| ![(UIButton *)self->_rightButton backgroundImageForState:0])
    {
      [(SUCellConfiguration *)v4 reloadImages];
    }

    [(SUCellConfiguration *)v4 reloadLayoutInformation];
    [(UIButton *)self->_leftButton setBackgroundImage:[(SUCellConfiguration *)v4 imageAtIndex:0 withModifiers:0] forState:0];
    leftButton = self->_leftButton;
    [(SUCellConfiguration *)v4 frameForImageAtIndex:0];
    [(UIButton *)leftButton setFrame:?];
    [(UIButton *)self->_rightButton setBackgroundImage:[(SUCellConfiguration *)v4 imageAtIndex:1 withModifiers:0] forState:0];
    rightButton = self->_rightButton;
    [(SUCellConfiguration *)v4 frameForImageAtIndex:1];
    [(UIButton *)rightButton setFrame:?];
  }
}

- (void)setConfiguration:(id)configuration
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SUBannerCell *)a2 setConfiguration:?];
  }

  configuration = [(SUTableCell *)self configuration];
  if ([(SUCellConfiguration *)configuration view]== self)
  {
    [(SUCellConfiguration *)configuration setView:0];
  }

  v7.receiver = self;
  v7.super_class = SUBannerCell;
  [(SUTableCell *)&v7 setConfiguration:configuration];
  [configuration setView:self];
  [(SUBannerCell *)self _reloadButtons];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = SUBannerCell;
  [(SUTableCell *)&v4 setHighlighted:0 animated:0];
}

- (void)_buttonAction:(id)action
{
  v4 = self->_leftButton != action;
  nextResponder = [(SUBannerCell *)self nextResponder];
  if (nextResponder)
  {
    nextResponder2 = nextResponder;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      nextResponder2 = [nextResponder2 nextResponder];
      if (!nextResponder2)
      {
        return;
      }
    }

    [nextResponder2 bannerCell:self tappedButtonAtIndex:v4];
  }
}

- (void)_reloadButtons
{
  if ([(SUTableCell *)self configuration])
  {
    contentView = [(SUBannerCell *)self contentView];
    leftButton = self->_leftButton;
    if (!leftButton)
    {
      _newButton = [(SUBannerCell *)self _newButton];
      self->_leftButton = _newButton;
      [(UIButton *)_newButton addTarget:self action:sel__buttonAction_ forControlEvents:64];
      [contentView addSubview:self->_leftButton];
      leftButton = self->_leftButton;
    }

    [(UIButton *)leftButton setBackgroundImage:0 forState:0];
    rightButton = self->_rightButton;
    if (!rightButton)
    {
      _newButton2 = [(SUBannerCell *)self _newButton];
      self->_rightButton = _newButton2;
      [(UIButton *)_newButton2 addTarget:self action:sel__buttonAction_ forControlEvents:64];
      [contentView addSubview:self->_rightButton];
      rightButton = self->_rightButton;
    }

    [(UIButton *)rightButton setBackgroundImage:0 forState:0];
  }

  else
  {
    [(UIButton *)self->_leftButton removeTarget:self action:sel__buttonAction_ forControlEvents:64];
    [(UIButton *)self->_leftButton removeFromSuperview];

    self->_leftButton = 0;
    [(UIButton *)self->_rightButton removeTarget:self action:sel__buttonAction_ forControlEvents:64];
    [(UIButton *)self->_rightButton removeFromSuperview];

    self->_rightButton = 0;
  }

  [(SUBannerCell *)self setNeedsLayout];
}

- (uint64_t)setConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUBannerCell.m" lineNumber:69 description:@"Configuration for banner cell must be banner configuration"];
}

@end