@interface OKWidgetGridViewCell
- (OKWidgetGridViewCell)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setWidgetView:(id)a3;
@end

@implementation OKWidgetGridViewCell

- (OKWidgetGridViewCell)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = OKWidgetGridViewCell;
  result = [(OKWidgetGridViewCell *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setWidgetView:(id)a3
{
  widgetView = self->_widgetView;
  if (widgetView)
  {

    self->_widgetView = 0;
  }

  if (a3)
  {
    self->_widgetView = a3;
    [(OKWidgetGridViewCell *)self bounds];
    [(OKWidgetViewProxy *)self->_widgetView setFrame:?];
    v6 = [(OKWidgetGridViewCell *)self contentView];
    v7 = self->_widgetView;

    [v6 addSubview:v7];
  }
}

@end