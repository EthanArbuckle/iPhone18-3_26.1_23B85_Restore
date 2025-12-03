@interface SKUIReviewInAppRatingHeaderView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIReviewInAppRatingHeaderView)initWithTitle:(id)title message:(id)message icon:(id)icon;
- (id)_messageLabelFont;
- (id)_titleLabelFont;
- (void)layoutSubviews;
- (void)setCompleted:(BOOL)completed;
- (void)setCompletedWithRating:(int64_t)rating;
- (void)setContentSize:(CGSize)size;
@end

@implementation SKUIReviewInAppRatingHeaderView

- (SKUIReviewInAppRatingHeaderView)initWithTitle:(id)title message:(id)message icon:(id)icon
{
  titleCopy = title;
  messageCopy = message;
  iconCopy = icon;
  v36.receiver = self;
  v36.super_class = SKUIReviewInAppRatingHeaderView;
  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  v15 = *(MEMORY[0x277CBF3A0] + 24);
  v16 = [(SKUIReviewInAppRatingHeaderView *)&v36 initWithFrame:*MEMORY[0x277CBF3A0], v13, v14, v15];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v12, v13, v14, v15}];
    imageView = v16->_imageView;
    v16->_imageView = v17;

    [(UIImageView *)v16->_imageView setImage:iconCopy];
    [(SKUIReviewInAppRatingHeaderView *)v16 addSubview:v16->_imageView];
    objc_storeStrong(&v16->_title, title);
    v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v12, v13, v14, v15}];
    titleLabel = v16->_titleLabel;
    v16->_titleLabel = v19;

    _titleLabelFont = [(SKUIReviewInAppRatingHeaderView *)v16 _titleLabelFont];
    [(UILabel *)v16->_titleLabel setFont:_titleLabelFont];

    [(UILabel *)v16->_titleLabel setText:titleCopy];
    [(UILabel *)v16->_titleLabel setNumberOfLines:0];
    [(UILabel *)v16->_titleLabel setTextAlignment:1];
    [(SKUIReviewInAppRatingHeaderView *)v16 addSubview:v16->_titleLabel];
    objc_storeStrong(&v16->_message, message);
    v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v12, v13, v14, v15}];
    messageLabel = v16->_messageLabel;
    v16->_messageLabel = v22;

    _messageLabelFont = [(SKUIReviewInAppRatingHeaderView *)v16 _messageLabelFont];
    [(UILabel *)v16->_messageLabel setFont:_messageLabelFont];

    [(UILabel *)v16->_messageLabel setText:messageCopy];
    [(UILabel *)v16->_messageLabel setNumberOfLines:0];
    [(UILabel *)v16->_messageLabel setTextAlignment:1];
    [(SKUIReviewInAppRatingHeaderView *)v16 addSubview:v16->_messageLabel];
    v25 = objc_alloc_init(SKUIStarRatingControl);
    ratingView = v16->_ratingView;
    v16->_ratingView = v25;

    v27 = v16->_ratingView;
    v28 = MEMORY[0x277D755B8];
    v29 = SKUIBundle();
    v30 = [v28 imageNamed:@"LightRateControl" inBundle:v29];
    [(SKUIStarRatingControl *)v27 setEmptyStarsImage:v30];

    v31 = v16->_ratingView;
    v32 = MEMORY[0x277D755B8];
    v33 = SKUIBundle();
    v34 = [v32 imageNamed:@"RateControlFilled" inBundle:v33];
    [(SKUIStarRatingControl *)v31 setFilledStarsImage:v34];

    [(SKUIStarRatingControl *)v16->_ratingView setUserInteractionEnabled:0];
    [(SKUIReviewInAppRatingHeaderView *)v16 addSubview:v16->_ratingView];
  }

  return v16;
}

- (void)setCompletedWithRating:(int64_t)rating
{
  ratingView = [(SKUIReviewInAppRatingHeaderView *)self ratingView];
  [ratingView setUserRating:rating];

  [(SKUIReviewInAppRatingHeaderView *)self setCompleted:1];
}

- (void)setCompleted:(BOOL)completed
{
  if (self->_completed != completed)
  {
    completedCopy = completed;
    if (completed)
    {
      v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v3 localizedStringForKey:@"IN_APP_REVIEW_SUCCESSFUL_TITLE" value:&stru_2827FFAC8 table:0];
    }

    else
    {
      [(SKUIReviewInAppRatingHeaderView *)self title];
    }
    v6 = ;
    titleLabel = [(SKUIReviewInAppRatingHeaderView *)self titleLabel];
    [titleLabel setText:v6];

    if (completedCopy)
    {

      v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v3 localizedStringForKey:@"IN_APP_REVIEW_SUCCESSFUL_MESSAGE" value:&stru_2827FFAC8 table:0];
    }

    else
    {
      [(SKUIReviewInAppRatingHeaderView *)self message];
    }
    v8 = ;
    messageLabel = [(SKUIReviewInAppRatingHeaderView *)self messageLabel];
    [messageLabel setText:v8];

    if (completedCopy)
    {

      v8 = v3;
    }

    [(SKUIReviewInAppRatingHeaderView *)self setNeedsLayout];
    [(SKUIReviewInAppRatingHeaderView *)self invalidateIntrinsicContentSize];
    self->_completed = completedCopy;
  }
}

- (void)setContentSize:(CGSize)size
{
  if (self->_contentSize.width != size.width || self->_contentSize.height != size.height)
  {
    self->_contentSize = size;
    [(SKUIReviewInAppRatingHeaderView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(SKUIReviewInAppRatingHeaderView *)self contentSize:fits.width];
  if (*MEMORY[0x277CBF3A8] == v6 && *(MEMORY[0x277CBF3A8] + 8) == v5)
  {
    v10 = 170.0;
  }

  else
  {
    [(SKUIReviewInAppRatingHeaderView *)self contentSize];
    width = v8;
    [(SKUIReviewInAppRatingHeaderView *)self contentSize];
    v10 = fmax(v9, 170.0);
  }

  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(SKUIReviewInAppRatingHeaderView *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v73.receiver = self;
  v73.super_class = SKUIReviewInAppRatingHeaderView;
  [(SKUIReviewInAppRatingHeaderView *)&v73 layoutSubviews];
  [(SKUIReviewInAppRatingHeaderView *)self bounds];
  v75 = CGRectInset(v74, 20.0, 20.0);
  x = v75.origin.x;
  y = v75.origin.y;
  width = v75.size.width;
  height = v75.size.height;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__SKUIReviewInAppRatingHeaderView_layoutSubviews__block_invoke;
  aBlock[3] = &__block_descriptor_64_e52__CGRect__CGPoint_dd__CGSize_dd__32__0_CGSize_dd_8d24l;
  v72 = v75;
  v7 = _Block_copy(aBlock);
  imageView = [(SKUIReviewInAppRatingHeaderView *)self imageView];
  [imageView sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;

  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v70 = width;
  v76.size.height = height;
  MinY = CGRectGetMinY(v76);
  v14 = v7 + 2;
  v15 = v7[2](v7, v10, v12, MinY);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  imageView2 = [(SKUIReviewInAppRatingHeaderView *)self imageView];
  [imageView2 setFrame:{v15, v17, v19, v21}];

  titleLabel = [(SKUIReviewInAppRatingHeaderView *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v25 = v24;
  v27 = v26;

  v77.origin.x = v15;
  v77.origin.y = v17;
  v77.size.width = v19;
  v77.size.height = v21;
  MaxY = CGRectGetMaxY(v77);
  v78.origin.x = v15;
  v78.origin.y = v17;
  v78.size.width = v19;
  v78.size.height = v21;
  v29 = CGRectGetHeight(v78) <= 0.0;
  v30 = 15.0;
  if (v29)
  {
    v30 = 0.0;
  }

  v31 = (*v14)(v7, v25, v27, MaxY + v30);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  titleLabel2 = [(SKUIReviewInAppRatingHeaderView *)self titleLabel];
  [titleLabel2 setFrame:{v31, v33, v35, v37}];

  messageLabel = [(SKUIReviewInAppRatingHeaderView *)self messageLabel];
  [messageLabel sizeThatFits:{v70, height}];
  v41 = v40;
  v43 = v42;

  v79.origin.x = v31;
  v79.origin.y = v33;
  v79.size.width = v35;
  v79.size.height = v37;
  v44 = CGRectGetMaxY(v79);
  v80.origin.x = v31;
  v80.origin.y = v33;
  v80.size.width = v35;
  v80.size.height = v37;
  v29 = CGRectGetHeight(v80) <= 0.0;
  v45 = 2.0;
  if (v29)
  {
    v45 = 0.0;
  }

  v46 = (*v14)(v7, v41, v43, v44 + v45);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  messageLabel2 = [(SKUIReviewInAppRatingHeaderView *)self messageLabel];
  [messageLabel2 setFrame:{v46, v48, v50, v52}];

  completed = [(SKUIReviewInAppRatingHeaderView *)self completed];
  ratingView = [(SKUIReviewInAppRatingHeaderView *)self ratingView];
  ratingView4 = ratingView;
  if (completed)
  {
    [ratingView sizeToFit];

    ratingView2 = [(SKUIReviewInAppRatingHeaderView *)self ratingView];
    [ratingView2 frame];
    v59 = v58;
    v61 = v60;

    v81.origin.x = v46;
    v81.origin.y = v48;
    v81.size.width = v50;
    v81.size.height = v52;
    v62 = CGRectGetMaxY(v81);
    v82.origin.x = v46;
    v82.origin.y = v48;
    v82.size.width = v50;
    v82.size.height = v52;
    v29 = CGRectGetHeight(v82) <= 0.0;
    v63 = 6.0;
    if (v29)
    {
      v63 = 0.0;
    }

    v46 = v7[2](v7, v59, v61, v62 + v63);
    v48 = v64;
    v50 = v65;
    v52 = v66;
    ratingView3 = [(SKUIReviewInAppRatingHeaderView *)self ratingView];
    [ratingView3 setFrame:{v46, v48, v50, v52}];

    ratingView4 = [(SKUIReviewInAppRatingHeaderView *)self ratingView];
    [ratingView4 setAlpha:1.0];
    v68 = 11.0;
  }

  else
  {
    [ratingView setAlpha:0.0];
    v68 = 20.0;
  }

  v83.origin.x = v46;
  v83.origin.y = v48;
  v83.size.width = v50;
  v83.size.height = v52;
  v69 = v68 + CGRectGetMaxY(v83);
  [(SKUIReviewInAppRatingHeaderView *)self bounds];
  [(SKUIReviewInAppRatingHeaderView *)self setContentSize:CGRectGetWidth(v84), v69];
}

double __49__SKUIReviewInAppRatingHeaderView_layoutSubviews__block_invoke(CGRect *a1, double a2)
{
  v2 = CGRectGetMidX(a1[1]) + a2 * -0.5;
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v5 = v4;

  return round(v2 * v5) / v5;
}

- (id)_titleLabelFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] addingSymbolicTraits:0 options:2];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (id)_messageLabelFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0] addingSymbolicTraits:0x8000 options:2];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end