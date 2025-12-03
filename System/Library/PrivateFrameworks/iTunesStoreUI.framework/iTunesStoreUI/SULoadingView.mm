@interface SULoadingView
- (SULoadingView)initWithFrame:(CGRect)frame;
- (id)newProgressIndicator;
- (id)newTextLabel;
- (void)_setupSubviews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setActivityIndicatorColor:(id)color;
- (void)setStyle:(unint64_t)style;
- (void)setTextColor:(id)color;
- (void)setTextShadowColor:(id)color;
- (void)sizeToFit;
@end

@implementation SULoadingView

- (SULoadingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SULoadingView;
  v3 = [(SULoadingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_activityIndicatorStyle = 100;
    v3->_textColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SULoadingView;
  [(SULoadingView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  [(SULoadingView *)self _setupSubviews];
  [(SULoadingView *)self addSubview:self->_label];
  [(SULoadingView *)self addSubview:self->_progressIndicator];
  [(SULoadingView *)self bounds];
  v4 = v3;
  [(UILabel *)self->_label frame];
  v6 = v5;
  v8 = v7;
  [(UIActivityIndicatorView *)self->_progressIndicator frame];
  v11 = v9 + v10 + 4.0;
  label = self->_label;
  v13 = floor((v4 - v8) * 0.5);

  [(UILabel *)label setFrame:v11, v13, v6, v8];
}

- (void)sizeToFit
{
  [(SULoadingView *)self _setupSubviews];
  [(UILabel *)self->_label frame];
  [(UIActivityIndicatorView *)self->_progressIndicator frame];
  [(SULoadingView *)self frame];

  [(SULoadingView *)self setFrame:?];
}

- (id)newProgressIndicator
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:self->_activityIndicatorStyle];
  [v3 setColor:self->_activityIndicatorColor];
  [v3 startAnimating];
  return v3;
}

- (id)newTextLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setBackgroundColor:0];
  [v3 setHighlightedTextColor:{objc_msgSend(MEMORY[0x1E69DC888], "whiteColor")}];
  [v3 setOpaque:0];
  [v3 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "systemFontOfSize:", 14.0)}];
  if (self->_textShadowColor)
  {
    [v3 setShadowColor:?];
    [v3 setShadowOffset:{0.0, 1.0}];
  }

  [v3 setText:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"LOADING", &stru_1F41B3660, 0)}];
  [v3 setTextColor:self->_textColor];
  return v3;
}

- (void)setActivityIndicatorColor:(id)color
{
  activityIndicatorColor = self->_activityIndicatorColor;
  if (activityIndicatorColor != color)
  {

    colorCopy = color;
    self->_activityIndicatorColor = colorCopy;
    progressIndicator = self->_progressIndicator;

    [(UIActivityIndicatorView *)progressIndicator setColor:colorCopy];
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    if (style == 1)
    {
      whiteColor = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    [(SULoadingView *)self setTextShadowColor:whiteColor];
  }
}

- (void)setTextColor:(id)color
{
  textColor = self->_textColor;
  if (textColor != color)
  {

    self->_textColor = color;
    label = self->_label;

    [(UILabel *)label setTextColor:color];
  }
}

- (void)setTextShadowColor:(id)color
{
  textShadowColor = self->_textShadowColor;
  if (textShadowColor != color)
  {

    self->_textShadowColor = color;
    label = self->_label;

    [(UILabel *)label setShadowColor:color];
  }
}

- (void)_setupSubviews
{
  if (!self->_label)
  {
    newTextLabel = [(SULoadingView *)self newTextLabel];
    self->_label = newTextLabel;
    [(UILabel *)newTextLabel sizeToFit];
  }

  if (!self->_progressIndicator)
  {
    self->_progressIndicator = [(SULoadingView *)self newProgressIndicator];
  }
}

@end