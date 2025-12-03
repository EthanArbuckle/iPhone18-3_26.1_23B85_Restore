@interface RUIBarButtonSpinnerView
- (RUIBarButtonSpinnerView)initWithActivityIndicatorStyle:(int64_t)style;
- (void)setTintColor:(id)color;
@end

@implementation RUIBarButtonSpinnerView

- (RUIBarButtonSpinnerView)initWithActivityIndicatorStyle:(int64_t)style
{
  v19.receiver = self;
  v19.super_class = RUIBarButtonSpinnerView;
  v4 = [(RUIBarButtonSpinnerView *)&v19 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:style];
    spinner = v4->_spinner;
    v4->_spinner = v5;

    [(UIActivityIndicatorView *)v4->_spinner frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    [(UIActivityIndicatorView *)v4->_spinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v4->_spinner setFrame:v8, v10, v12, v14];
    v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v15, v16, v12, v14}];
    [v17 addSubview:v4->_spinner];
    [(RUIBarButtonSpinnerView *)v4 setCustomView:v17];
  }

  return v4;
}

- (void)setTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = RUIBarButtonSpinnerView;
  colorCopy = color;
  [(RUIBarButtonSpinnerView *)&v5 setTintColor:colorCopy];
  [(UIActivityIndicatorView *)self->_spinner setColor:colorCopy, v5.receiver, v5.super_class];
}

@end