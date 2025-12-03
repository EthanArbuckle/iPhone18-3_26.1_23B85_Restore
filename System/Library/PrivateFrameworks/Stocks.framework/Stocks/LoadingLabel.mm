@interface LoadingLabel
- (LoadingLabel)init;
- (void)setHidden:(BOOL)hidden;
- (void)setText:(id)text showingActivity:(BOOL)activity;
- (void)sizeToFit;
@end

@implementation LoadingLabel

- (LoadingLabel)init
{
  v12.receiver = self;
  v12.super_class = LoadingLabel;
  v2 = [(LoadingLabel *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v2->_label;
    v2->_label = v3;

    v5 = +[StocksStyle sharedStyle];
    v6 = [v5 lightFontOfSize:14.0];
    [(UILabel *)v2->_label setFont:v6];

    v7 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.4];
    [(UILabel *)v2->_label setTextColor:v7];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v2->_label setBackgroundColor:clearColor];

    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:1];
    activityIndicator = v2->_activityIndicator;
    v2->_activityIndicator = v9;

    [(UIActivityIndicatorView *)v2->_activityIndicator setHidesWhenStopped:1];
    [(LoadingLabel *)v2 addSubview:v2->_label];
    [(LoadingLabel *)v2 addSubview:v2->_activityIndicator];
  }

  return v2;
}

- (void)sizeToFit
{
  [(UIActivityIndicatorView *)self->_activityIndicator frame];
  v4 = v3;
  if ([(UIActivityIndicatorView *)self->_activityIndicator isHidden])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4 + 8.0;
  }

  [(UILabel *)self->_label sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v7 = v6;
  v9 = v8;
  v12.origin.y = 0.0;
  v12.origin.x = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  CGRectGetMaxX(v12);
  [(LoadingLabel *)self frame];
  [(LoadingLabel *)self setFrame:?];
  UIRectCenteredYInRect();
  [(UIActivityIndicatorView *)self->_activityIndicator setFrame:?];
  UIRectCenteredYInRect();
  label = self->_label;

  [(UILabel *)label setFrame:?];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (hidden)
  {
    [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  }

  v5.receiver = self;
  v5.super_class = LoadingLabel;
  [(LoadingLabel *)&v5 setHidden:hiddenCopy];
}

- (void)setText:(id)text showingActivity:(BOOL)activity
{
  activityCopy = activity;
  textCopy = text;
  v6 = +[NetPreferences sharedPreferences];
  isNetworkReachable = [v6 isNetworkReachable];

  if (isNetworkReachable)
  {
    [(UILabel *)self->_label setText:textCopy];
    if (activityCopy)
    {
      [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [StocksBundles getBundle:0];
    v9 = [v8 localizedStringForKey:@"Network Unavailable" value:&stru_287C73C90 table:@"Localizable"];
    [(UILabel *)self->_label setText:v9];
  }

  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
LABEL_6:
  [(LoadingLabel *)self sizeToFit];
}

@end