@interface SSSpinner
- (SSSpinner)initWithText:(id)a3;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation SSSpinner

- (SSSpinner)initWithText:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SSSpinner;
  v5 = [(SSSpinner *)&v14 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    activityIndicator = v5->_activityIndicator;
    v5->_activityIndicator = v6;

    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v5->_label;
    v5->_label = v8;

    [(UILabel *)v5->_label setText:v4];
    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5->_label setTextColor:v10];

    [(UILabel *)v5->_label setHidden:1];
    v11 = v5->_label;
    v12 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    [(UILabel *)v11 setFont:v12];

    [(SSSpinner *)v5 setSpacing:8.0];
    [(SSSpinner *)v5 addArrangedSubview:v5->_activityIndicator];
    [(SSSpinner *)v5 addArrangedSubview:v5->_label];
    [(SSSpinner *)v5 setAxis:0];
    [(SSSpinner *)v5 setAlignment:3];
  }

  return v5;
}

- (void)startAnimating
{
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
  label = self->_label;

  [(UILabel *)label setHidden:0];
}

- (void)stopAnimating
{
  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  label = self->_label;

  [(UILabel *)label setHidden:1];
}

@end