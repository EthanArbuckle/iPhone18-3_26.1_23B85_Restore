@interface WFAssociationStateView
- (UIActivityIndicatorView)activityIndicator;
- (void)layoutSubviews;
- (void)setState:(int64_t)a3;
@end

@implementation WFAssociationStateView

- (void)setState:(int64_t)a3
{
  if (self->_state == a3)
  {
    return;
  }

  v20 = v6;
  v21 = v5;
  v22 = v4;
  v23 = v3;
  self->_state = a3;
  switch(a3)
  {
    case 0:
      v17 = [(WFAssociationStateView *)self imageView];
      v18 = v17;
      v19 = 1;
LABEL_10:
      [v17 setHidden:{v19, v20, v21, v22, v23}];

      v11 = [(WFAssociationStateView *)self activityIndicator];
      [v11 stopAnimating];
      goto LABEL_11;
    case 2:
      v12 = [(WFAssociationStateView *)self imageView];

      if (!v12)
      {
        v13 = +[WFImageCache sharedImageCache];
        v14 = [v13 imageNamed:@"checkmark"];

        v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v14];
        [(WFAssociationStateView *)self setImageView:v15];

        v16 = [(WFAssociationStateView *)self imageView];
        [(WFAssociationStateView *)self addSubview:v16];
      }

      v17 = [(WFAssociationStateView *)self imageView:v6];
      v18 = v17;
      v19 = 0;
      goto LABEL_10;
    case 1:
      v10 = [(WFAssociationStateView *)self activityIndicator];
      [v10 startAnimating];

      v11 = [(WFAssociationStateView *)self imageView];
      [v11 setHidden:1];
LABEL_11:

      break;
  }

  [(WFAssociationStateView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = WFAssociationStateView;
  [(WFAssociationStateView *)&v35 layoutSubviews];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(WFAssociationStateView *)self setBackgroundColor:v3];

  [(WFAssociationStateView *)self center];
  v5 = v4;
  v7 = v6;
  v8 = [(WFAssociationStateView *)self imageView];
  [v8 setCenter:{v5, v7}];

  v9 = [(WFAssociationStateView *)self imageView];
  [v9 setContentMode:4];

  [(WFAssociationStateView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16 + -1.0;
  v18 = [(WFAssociationStateView *)self imageView];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [MEMORY[0x277D75348] clearColor];
  v20 = [(WFAssociationStateView *)self imageView];
  [v20 setBackgroundColor:v19];

  [(WFAssociationStateView *)self center];
  v22 = v21;
  v24 = v23;
  v25 = [(WFAssociationStateView *)self activityIndicator];
  [v25 setCenter:{v22, v24}];

  [(WFAssociationStateView *)self bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(WFAssociationStateView *)self activityIndicator];
  [v34 setFrame:{v27, v29, v31, v33}];
}

- (UIActivityIndicatorView)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v5 = [MEMORY[0x277D75348] altTextColor];
    [(UIActivityIndicatorView *)v4 setColor:v5];

    v6 = self->_activityIndicator;
    self->_activityIndicator = v4;
    v7 = v4;

    [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
    [(WFAssociationStateView *)self addSubview:self->_activityIndicator];

    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

@end