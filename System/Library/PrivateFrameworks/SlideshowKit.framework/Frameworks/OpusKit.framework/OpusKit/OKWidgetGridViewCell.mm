@interface OKWidgetGridViewCell
- (OKWidgetGridViewCell)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setWidgetView:(id)view;
@end

@implementation OKWidgetGridViewCell

- (OKWidgetGridViewCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = OKWidgetGridViewCell;
  result = [(OKWidgetGridViewCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_widgetView = 0;
  }

  return result;
}

- (void)dealloc
{
  widgetView = self->_widgetView;
  if (widgetView)
  {

    self->_widgetView = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetGridViewCell;
  [(OKWidgetGridViewCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OKWidgetGridViewCell;
  [(OKWidgetGridViewCell *)&v3 layoutSubviews];
  [-[OKWidgetGridViewCell contentView](self "contentView")];
  [(OKWidgetViewProxy *)self->_widgetView setFrame:?];
}

- (void)setWidgetView:(id)view
{
  widgetView = self->_widgetView;
  if (widgetView)
  {

    self->_widgetView = 0;
  }

  if (view)
  {
    self->_widgetView = view;
    [(OKWidgetGridViewCell *)self bounds];
    [(OKWidgetViewProxy *)self->_widgetView setFrame:?];
    contentView = [(OKWidgetGridViewCell *)self contentView];
    v7 = self->_widgetView;

    [contentView addSubview:v7];
  }
}

@end