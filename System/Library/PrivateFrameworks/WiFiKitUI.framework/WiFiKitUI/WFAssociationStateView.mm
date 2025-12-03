@interface WFAssociationStateView
- (UIActivityIndicatorView)activityIndicator;
- (void)layoutSubviews;
- (void)setState:(int64_t)state;
@end

@implementation WFAssociationStateView

- (void)setState:(int64_t)state
{
  if (self->_state == state)
  {
    return;
  }

  v20 = v6;
  v21 = v5;
  v22 = v4;
  v23 = v3;
  self->_state = state;
  switch(state)
  {
    case 0:
      imageView = [(WFAssociationStateView *)self imageView];
      v18 = imageView;
      v19 = 1;
LABEL_10:
      [imageView setHidden:{v19, v20, v21, v22, v23}];

      activityIndicator = [(WFAssociationStateView *)self activityIndicator];
      [activityIndicator stopAnimating];
      goto LABEL_11;
    case 2:
      imageView2 = [(WFAssociationStateView *)self imageView];

      if (!imageView2)
      {
        v13 = +[WFImageCache sharedImageCache];
        v14 = [v13 imageNamed:@"checkmark"];

        v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v14];
        [(WFAssociationStateView *)self setImageView:v15];

        imageView3 = [(WFAssociationStateView *)self imageView];
        [(WFAssociationStateView *)self addSubview:imageView3];
      }

      imageView = [(WFAssociationStateView *)self imageView:v6];
      v18 = imageView;
      v19 = 0;
      goto LABEL_10;
    case 1:
      activityIndicator2 = [(WFAssociationStateView *)self activityIndicator];
      [activityIndicator2 startAnimating];

      activityIndicator = [(WFAssociationStateView *)self imageView];
      [activityIndicator setHidden:1];
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(WFAssociationStateView *)self setBackgroundColor:clearColor];

  [(WFAssociationStateView *)self center];
  v5 = v4;
  v7 = v6;
  imageView = [(WFAssociationStateView *)self imageView];
  [imageView setCenter:{v5, v7}];

  imageView2 = [(WFAssociationStateView *)self imageView];
  [imageView2 setContentMode:4];

  [(WFAssociationStateView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16 + -1.0;
  imageView3 = [(WFAssociationStateView *)self imageView];
  [imageView3 setFrame:{v11, v13, v15, v17}];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  imageView4 = [(WFAssociationStateView *)self imageView];
  [imageView4 setBackgroundColor:clearColor2];

  [(WFAssociationStateView *)self center];
  v22 = v21;
  v24 = v23;
  activityIndicator = [(WFAssociationStateView *)self activityIndicator];
  [activityIndicator setCenter:{v22, v24}];

  [(WFAssociationStateView *)self bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  activityIndicator2 = [(WFAssociationStateView *)self activityIndicator];
  [activityIndicator2 setFrame:{v27, v29, v31, v33}];
}

- (UIActivityIndicatorView)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    altTextColor = [MEMORY[0x277D75348] altTextColor];
    [(UIActivityIndicatorView *)v4 setColor:altTextColor];

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