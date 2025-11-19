@interface SKUIComposeReviewHeaderView
- (SKUIComposeReviewHeaderDelegate)delegate;
- (SKUIComposeReviewHeaderView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)textFieldList:(id)a3 configurationForFieldAtIndex:(unint64_t)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setReview:(id)a3;
- (void)sizeToFit;
- (void)starRatingButtonControlDidUpdateValues;
- (void)starRatingControlDidUpdateValues:(id)a3;
- (void)textFieldListValidityDidChange:(id)a3;
- (void)textFieldListValuesDidChange:(id)a3;
@end

@implementation SKUIComposeReviewHeaderView

- (SKUIComposeReviewHeaderView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v24.receiver = self;
  v24.super_class = SKUIComposeReviewHeaderView;
  v5 = [(SKUIComposeReviewHeaderView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"star"];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"star.fill"];
    v9 = SKGetRatingStarsImage();
    v10 = SKGetRatingStarsImage();
    v11 = [MEMORY[0x277D75348] systemBlueColor];
    v12 = [v9 imageWithTintColor:v11];

    v13 = [MEMORY[0x277D75348] systemBlueColor];
    v14 = [v10 imageWithTintColor:v13];

    v15 = [objc_alloc(MEMORY[0x277CDD398]) initWithBackgroundImage:v12 foregroundImage:v14];
    ratingControl = v6->_ratingControl;
    v6->_ratingControl = v15;

    v17 = v6->_ratingControl;
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"RATING_EXPLANATION" value:&stru_2827FFAC8 table:0];
    [(SKStarRatingControl *)v17 setExplanationText:v19];

    [(SKStarRatingControl *)v6->_ratingControl setStarWidth:27.5];
    [(SKStarRatingControl *)v6->_ratingControl setHitPadding:70.0, 3.0];
    [(SKStarRatingControl *)v6->_ratingControl sizeToFit];
    [(SKUIComposeReviewHeaderView *)v6 addSubview:v6->_ratingControl];
    [(SKStarRatingControl *)v6->_ratingControl addTarget:v6 action:sel_starRatingControlDidUpdateValues_ forControlEvents:4096];
    v20 = [SKUIComposeTextFieldListView alloc];
    v21 = [(SKUIComposeTextFieldListView *)v20 initWithFrame:v6->_style style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    textFieldListView = v6->_textFieldListView;
    v6->_textFieldListView = v21;

    [(SKUIComposeTextFieldListView *)v6->_textFieldListView setDelegate:v6];
    [(SKUIComposeTextFieldListView *)v6->_textFieldListView reloadData];
    [(SKUIComposeReviewHeaderView *)v6 addSubview:v6->_textFieldListView];
  }

  return v6;
}

- (void)dealloc
{
  [(SKUIComposeTextFieldListView *)self->_textFieldListView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIComposeReviewHeaderView;
  [(SKUIComposeReviewHeaderView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  [(SKUIComposeReviewHeaderView *)self bounds];
  v4 = v3;
  [(SKStarRatingControl *)self->_ratingControl frame];
  v6 = (v4 - v5) * 0.5;
  [(SKStarRatingControl *)self->_ratingControl setFrame:floorf(v6), 5.0];
  [(SKUIComposeTextFieldListView *)self->_textFieldListView frame];
  v8 = v7;
  [(SKUIComposeTextFieldListView *)self->_textFieldListView height];
  textFieldListView = self->_textFieldListView;

  [(SKUIComposeTextFieldListView *)textFieldListView setFrame:v8, 44.0, v4, v9];
}

- (void)sizeToFit
{
  [(SKUIComposeReviewHeaderView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(SKUIComposeTextFieldListView *)self->_textFieldListView height];

  [(SKUIComposeReviewHeaderView *)self setFrame:v4, v6, v8, v9 + 44.0];
}

- (void)setReview:(id)a3
{
  v5 = a3;
  review = self->_review;
  v8 = v5;
  if (review != v5)
  {
    objc_storeStrong(&self->_review, a3);
    review = self->_review;
  }

  ratingControl = self->_ratingControl;
  [(SKUIReviewMetadata *)review rating];
  [(SKStarRatingControl *)ratingControl setValue:?];
  [(SKUIComposeTextFieldListView *)self->_textFieldListView reloadData];
}

- (id)textFieldList:(id)a3 configurationForFieldAtIndex:(unint64_t)a4
{
  v6 = objc_alloc_init(SKUIComposeTextFieldConfiguration);
  if (!a4)
  {
    style = self->_style;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    if (style == 1)
    {
      v10 = [v8 localizedStringForKey:@"SUBJECT_LABEL" value:&stru_2827FFAC8 table:0];
      [(SKUIComposeTextFieldConfiguration *)v6 setLabel:v10];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"SUBJECT_PLACEHOLDER" value:&stru_2827FFAC8 table:0];
      [(SKUIComposeTextFieldConfiguration *)v6 setPlaceholder:v10];
    }

    [(SKUIComposeTextFieldConfiguration *)v6 setMaxLength:[(SKUIReviewMetadata *)self->_review titleMaxLength]];
    v11 = [(SKUIReviewMetadata *)self->_review title];
    [(SKUIComposeTextFieldConfiguration *)v6 setValue:v11];
  }

  return v6;
}

- (void)starRatingControlDidUpdateValues:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeHeaderViewValidityDidChange:self];
}

- (void)starRatingButtonControlDidUpdateValues
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeHeaderViewValidityDidChange:self];
}

- (void)textFieldListValidityDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeHeaderViewValidityDidChange:self];
}

- (void)textFieldListValuesDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeHeaderViewValuesDidChange:self];
}

- (SKUIComposeReviewHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end