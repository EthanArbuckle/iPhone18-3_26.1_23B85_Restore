@interface SiriUIReviewItemCell
+ (CGSize)sizeThatFits:(CGSize)a3 withReview:(id)a4 characterLimit:(int64_t)a5;
+ (UIEdgeInsets)_defaultEdgeInsets;
+ (id)_displayTextForComment:(id)a3 characterLimit:(int64_t)a4;
- (SiriUIReviewItemCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInsets;
- (id)_relativeStringFromDate:(id)a3;
- (void)_setAuthor:(id)a3 andDate:(id)a4 timeZoneId:(id)a5 hasRatingView:(BOOL)a6;
- (void)_setComment:(id)a3;
- (void)_setRatingView:(id)a3;
- (void)configureWithReview:(id)a3 ratingView:(id)a4 offset:(UIOffset)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SiriUIReviewItemCell

+ (UIEdgeInsets)_defaultEdgeInsets
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  if ([v2 userInterfaceIdiom])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 15.0;
  }

  v4 = 7.5;
  v5 = 14.0;
  v6 = 15.0;
  v7 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v7;
  result.top = v4;
  return result;
}

+ (id)_displayTextForComment:(id)a3 characterLimit:(int64_t)a4
{
  v5 = MEMORY[0x277CCA900];
  v6 = a3;
  v7 = [v5 whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [v8 length];
  if (v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  if (a4 <= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n" options:0 range:{0, v11}];

  if ([v12 length] > a4)
  {
    v13 = [v12 substringToIndex:a4];

    v12 = v13;
  }

  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
  v15 = [v14 siriUILocalizedStringForKey:@"REVIEW_TEXT_FORMAT"];

  if (v15)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v15 validFormatSpecifiers:@"“%@”" error:0, v12];
  }

  else
  {
    v16 = v12;
  }

  v17 = v16;

  return v17;
}

+ (CGSize)sizeThatFits:(CGSize)a3 withReview:(id)a4 characterLimit:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v47[2] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D74248];
  v10 = a4;
  v11 = [v9 defaultParagraphStyle];
  v12 = [v11 mutableCopy];

  [v12 setMinimumLineHeight:20.0];
  [v12 setMaximumLineHeight:20.0];
  if (!sizeThatFits_withReview_characterLimit__sCommentAttributes)
  {
    v46[0] = *MEMORY[0x277D740A8];
    v13 = v46[0];
    v14 = [a1 _commentLabelFont];
    v46[1] = *MEMORY[0x277D74118];
    v47[0] = v14;
    v47[1] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
    v16 = sizeThatFits_withReview_characterLimit__sCommentAttributes;
    sizeThatFits_withReview_characterLimit__sCommentAttributes = v15;

    v44 = v13;
    v17 = [a1 _authorFontAttribute];
    v45 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v19 = sizeThatFits_withReview_characterLimit__sAuthorAttributes;
    sizeThatFits_withReview_characterLimit__sAuthorAttributes = v18;
  }

  v20 = [v10 comment];
  v21 = [a1 _displayTextForComment:v20 characterLimit:a5];

  v22 = [v10 author];

  if ([v22 length])
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  [a1 _defaultEdgeInsets];
  v27 = width - (v25 + v26);
  v30 = v28 + v29 + 1.0;
  [v21 boundingRectWithSize:1 options:sizeThatFits_withReview_characterLimit__sCommentAttributes attributes:0 context:{v27, height}];
  v32 = v30 + v31;
  [v24 boundingRectWithSize:0 options:sizeThatFits_withReview_characterLimit__sAuthorAttributes attributes:0 context:{v27, height}];
  v34 = v33;

  v35 = v32 + v34;
  v36 = [MEMORY[0x277D759A0] mainScreen];
  [v36 scale];
  v38 = ceil(v27);
  v39 = ceil(v35);
  if (v37 >= 2.0)
  {
    v40 = v27;
  }

  else
  {
    v40 = v38;
  }

  if (v37 >= 2.0)
  {
    v41 = v35;
  }

  else
  {
    v41 = v39;
  }

  v42 = v40;
  v43 = v41;
  result.height = v43;
  result.width = v42;
  return result;
}

- (SiriUIReviewItemCell)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = SiriUIReviewItemCell;
  v3 = [(SiriUIContentCollectionViewCell *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SiriUIContentCollectionViewCell *)v3 setKeylineType:1];
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    commentLabel = v4->_commentLabel;
    v4->_commentLabel = v10;

    v12 = v4->_commentLabel;
    v13 = [objc_opt_class() _commentLabelFont];
    [(UILabel *)v12 setFont:v13];

    v14 = v4->_commentLabel;
    v15 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v14 setTextColor:v15];

    v16 = v4->_commentLabel;
    v17 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v16 setBackgroundColor:v17];

    [(UILabel *)v4->_commentLabel setNumberOfLines:0];
    [(UILabel *)v4->_commentLabel setLineBreakMode:4];
    [(SiriUIReviewItemCell *)v4 addSubview:v4->_commentLabel];
    v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    authorLabel = v4->_authorLabel;
    v4->_authorLabel = v18;

    v20 = v4->_authorLabel;
    v21 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v20 setTextColor:v21];

    v22 = v4->_authorLabel;
    v23 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v22 setBackgroundColor:v23];

    [(SiriUIReviewItemCell *)v4 addSubview:v4->_authorLabel];
    [objc_opt_class() _defaultEdgeInsets];
    v4->_contentInsets.top = v24;
    v4->_contentInsets.left = v25;
    v4->_contentInsets.bottom = v26;
    v4->_contentInsets.right = v27;
    v4->_characterLimit = [objc_opt_class() defaultCharacterLimit];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SiriUIReviewItemCell;
  [(SiriUIContentCollectionViewCell *)&v4 prepareForReuse];
  [(UILabel *)self->_commentLabel setText:0];
  [(UILabel *)self->_authorLabel setAttributedText:0];
  [(UIView *)self->_ratingView removeFromSuperview];
  ratingView = self->_ratingView;
  self->_ratingView = 0;
}

- (void)configureWithReview:(id)a3 ratingView:(id)a4 offset:(UIOffset)a5
{
  vertical = a5.vertical;
  horizontal = a5.horizontal;
  v9 = a4;
  v10 = a3;
  v11 = [v10 comment];
  [(SiriUIReviewItemCell *)self _setComment:v11];

  [(SiriUIReviewItemCell *)self _setRatingView:v9];
  self->_ratingOffset.horizontal = horizontal;
  self->_ratingOffset.vertical = vertical;
  v15 = [v10 lastUpdated];
  v12 = [v10 author];

  v13 = [v15 date];
  v14 = [v15 timeZoneId];
  [(SiriUIReviewItemCell *)self _setAuthor:v12 andDate:v13 timeZoneId:v14 hasRatingView:v9 != 0];
}

- (void)_setComment:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() _displayTextForComment:v4 characterLimit:self->_characterLimit];

  v6 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v7 = [v6 mutableCopy];

  [v7 setMinimumLineHeight:20.0];
  [v7 setMaximumLineHeight:20.0];
  v8 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = *MEMORY[0x277D74118];
  v12[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v8 initWithString:v5 attributes:v9];

  [(UILabel *)self->_commentLabel setAttributedText:v10];
}

- (void)_setRatingView:(id)a3
{
  v5 = a3;
  [(UIView *)self->_ratingView removeFromSuperview];
  objc_storeStrong(&self->_ratingView, a3);
  if (self->_ratingView)
  {
    [(SiriUIReviewItemCell *)self addSubview:?];
  }
}

- (void)_setAuthor:(id)a3 andDate:(id)a4 timeZoneId:(id)a5 hasRatingView:(BOOL)a6
{
  v6 = a6;
  v26[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v12 = [v9 length];
  v13 = MEMORY[0x277D740A8];
  if (v12)
  {
    if (v6)
    {
      v14 = [@" " stringByAppendingString:v9];

      v9 = v14;
    }

    if (v10)
    {
      v15 = [v9 stringByAppendingString:@" "];

      v9 = v15;
    }

    v25 = *v13;
    v16 = [objc_opt_class() _authorFontAttribute];
    v26[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v9 attributes:v17];
    [v11 appendAttributedString:v18];
  }

  if (v10)
  {
    v19 = [(SiriUIReviewItemCell *)self _relativeStringFromDate:v10];
    if ([v19 length])
    {
      v23 = *v13;
      v20 = [objc_opt_class() _authorDateFontAttribute];
      v24 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

      v22 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19 attributes:v21];
      [v11 appendAttributedString:v22];
    }
  }

  [(UILabel *)self->_authorLabel setAttributedText:v11];
  [(UILabel *)self->_authorLabel sizeToFit];
}

- (id)_relativeStringFromDate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_11;
  }

  [v3 timeIntervalSinceNow];
  if ((v5 / -60.0) <= 1)
  {
    v6 = [MEMORY[0x277CCABB8] sruif_localizedStringFromNumber:&unk_287A0D3D0];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v9 = [v8 siriUILocalizedStringForKey:@"LESS_THAN_ONE_MINUTE_AGO_FORMAT"];
    v10 = [v7 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v6];

    goto LABEL_11;
  }

  v11 = (v5 / -3600.0);
  if (v11 > 1)
  {
    if ((v5 / -86400.0) >= 1)
    {
      v10 = [MEMORY[0x277CCA968] localizedStringFromDate:v4 dateStyle:1 timeStyle:0];
      goto LABEL_11;
    }

    v19 = MEMORY[0x277CCABB8];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    v14 = [v19 sruif_localizedStringFromNumber:v20];

    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v17 = v16;
    v18 = @"LESS_THAN_ONE_DAY_HOURS_FORMAT";
  }

  else
  {
    v12 = MEMORY[0x277CCABB8];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v14 = [v12 sruif_localizedStringFromNumber:v13];

    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v17 = v16;
    v18 = @"LESS_THAN_ONE_HOUR_MINUTES_FORMAT";
  }

  v21 = [v16 siriUILocalizedStringForKey:v18];
  v10 = [v15 stringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:0, v14];

LABEL_11:

  return v10;
}

- (void)layoutSubviews
{
  *&recta.size.height = self;
  v82 = SiriUIReviewItemCell;
  [(CGFloat *)&recta.size.height layoutSubviews];
  [(SiriUIReviewItemCell *)self bounds];
  v4 = v3;
  v6 = v5;
  recta.origin.y = v8;
  recta.size.width = v7;
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  right = self->_contentInsets.right;
  [(UILabel *)self->_authorLabel frame];
  v13 = v12;
  [(UIView *)self->_ratingView frame];
  v15 = v14;
  v16 = [MEMORY[0x277D759A0] mainScreen];
  [v16 scale];
  v18 = v17;
  [(UIView *)self->_ratingView frame];
  v20 = ceil(v19);
  if (v18 >= 2.0)
  {
    v20 = v19;
  }

  v80 = v20;

  commentLabel = self->_commentLabel;
  recta.origin.x = v4;
  if (commentLabel)
  {
    if (v13 < v15)
    {
      v13 = v15;
    }

    v83.origin.x = v4;
    v83.origin.y = v6;
    y = recta.origin.y;
    v83.size.width = recta.size.width;
    v83.size.height = recta.origin.y;
    [(UILabel *)commentLabel sizeThatFits:CGRectGetWidth(v83) - left - right, v13];
    v24 = v23;
    v26 = v25;
    v27 = [MEMORY[0x277D759A0] mainScreen];
    [v27 scale];
    v29 = v28 < 2.0;
    v30 = ceil(left);
    v31 = ceil(top);
    v32 = ceil(v24);
    v33 = ceil(v26);
    if (v29)
    {
      v26 = v33;
    }

    if (v29)
    {
      v24 = v32;
    }

    if (v29)
    {
      v34 = v31;
    }

    else
    {
      v34 = top;
    }

    v35 = left;
    if (v29)
    {
      v36 = v30;
    }

    else
    {
      v36 = left;
    }

    [(UILabel *)self->_commentLabel setFrame:v36, v34, v24, v26];
    v84.origin.x = v36;
    v84.origin.y = v34;
    v84.size.width = v24;
    v84.size.height = v26;
    MaxY = CGRectGetMaxY(v84);
    v38 = [(UILabel *)self->_commentLabel font];
    [v38 descender];
    v79 = MaxY + v39;

    width = recta.size.width;
  }

  else
  {
    v79 = top;
    v35 = left;
    y = recta.origin.y;
    width = recta.size.width;
  }

  authorLabel = self->_authorLabel;
  v42 = v35;
  if (authorLabel)
  {
    [(UILabel *)authorLabel frame];
    height = v85.size.height;
    v44 = v35 + v80;
    v85.origin.x = v35 + v80;
    v45 = y;
    v46 = v79 - CGRectGetHeight(v85);
    v47 = [(UILabel *)self->_authorLabel font];
    [v47 descender];
    v49 = v46 - v48 + 21.0;

    v86.origin.x = recta.origin.x;
    v86.origin.y = v6;
    v86.size.width = width;
    v86.size.height = v45;
    v50 = CGRectGetMaxX(v86) - v44;
    v51 = [MEMORY[0x277D759A0] mainScreen];
    [v51 scale];
    v53 = v52 < 2.0;
    v54 = ceil(v44);
    v55 = ceil(v49);
    v56 = ceil(v50);
    v57 = ceil(height);
    if (v53)
    {
      v58 = v54;
    }

    else
    {
      v58 = v44;
    }

    if (v53)
    {
      v49 = v55;
    }

    if (v53)
    {
      v50 = v56;
    }

    if (v53)
    {
      v59 = v57;
    }

    else
    {
      v59 = height;
    }

    [(UILabel *)self->_authorLabel setFrame:v58, v49, v50, v59];
  }

  ratingView = self->_ratingView;
  if (ratingView)
  {
    [(UIView *)ratingView frame];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v42 + self->_ratingOffset.horizontal;
    [(UILabel *)self->_authorLabel frame];
    MidY = CGRectGetMidY(v87);
    v88.origin.x = v67;
    v88.origin.y = v62;
    v88.size.width = v64;
    v88.size.height = v66;
    v69 = self->_ratingOffset.vertical + MidY + CGRectGetHeight(v88) * -0.5;
    v70 = [MEMORY[0x277D759A0] mainScreen];
    [v70 scale];
    v72 = v71 < 2.0;
    v73 = ceil(v67);
    v74 = ceil(v69);
    v75 = ceil(v64);
    v76 = ceil(v66);
    if (v72)
    {
      v77 = v73;
    }

    else
    {
      v77 = v67;
    }

    if (v72)
    {
      v78 = v74;
    }

    else
    {
      v78 = v69;
    }

    if (v72)
    {
      v64 = v75;
    }

    if (v72)
    {
      v66 = v76;
    }

    [(UIView *)self->_ratingView setFrame:v77, v78, v64, v66];
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end