@interface SiriUIReviewItemCell
+ (CGSize)sizeThatFits:(CGSize)fits withReview:(id)review characterLimit:(int64_t)limit;
+ (UIEdgeInsets)_defaultEdgeInsets;
+ (id)_displayTextForComment:(id)comment characterLimit:(int64_t)limit;
- (SiriUIReviewItemCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInsets;
- (id)_relativeStringFromDate:(id)date;
- (void)_setAuthor:(id)author andDate:(id)date timeZoneId:(id)id hasRatingView:(BOOL)view;
- (void)_setComment:(id)comment;
- (void)_setRatingView:(id)view;
- (void)configureWithReview:(id)review ratingView:(id)view offset:(UIOffset)offset;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SiriUIReviewItemCell

+ (UIEdgeInsets)_defaultEdgeInsets
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
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

+ (id)_displayTextForComment:(id)comment characterLimit:(int64_t)limit
{
  v5 = MEMORY[0x277CCA900];
  commentCopy = comment;
  whitespaceAndNewlineCharacterSet = [v5 whitespaceAndNewlineCharacterSet];
  v8 = [commentCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v9 = [v8 length];
  if (v9 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v9;
  }

  if (limit <= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = limitCopy;
  }

  v12 = [v8 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n" options:0 range:{0, v11}];

  if ([v12 length] > limit)
  {
    v13 = [v12 substringToIndex:limit];

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

+ (CGSize)sizeThatFits:(CGSize)fits withReview:(id)review characterLimit:(int64_t)limit
{
  height = fits.height;
  width = fits.width;
  v47[2] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D74248];
  reviewCopy = review;
  defaultParagraphStyle = [v9 defaultParagraphStyle];
  v12 = [defaultParagraphStyle mutableCopy];

  [v12 setMinimumLineHeight:20.0];
  [v12 setMaximumLineHeight:20.0];
  if (!sizeThatFits_withReview_characterLimit__sCommentAttributes)
  {
    v46[0] = *MEMORY[0x277D740A8];
    v13 = v46[0];
    _commentLabelFont = [self _commentLabelFont];
    v46[1] = *MEMORY[0x277D74118];
    v47[0] = _commentLabelFont;
    v47[1] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
    v16 = sizeThatFits_withReview_characterLimit__sCommentAttributes;
    sizeThatFits_withReview_characterLimit__sCommentAttributes = v15;

    v44 = v13;
    _authorFontAttribute = [self _authorFontAttribute];
    v45 = _authorFontAttribute;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v19 = sizeThatFits_withReview_characterLimit__sAuthorAttributes;
    sizeThatFits_withReview_characterLimit__sAuthorAttributes = v18;
  }

  comment = [reviewCopy comment];
  v21 = [self _displayTextForComment:comment characterLimit:limit];

  author = [reviewCopy author];

  if ([author length])
  {
    v23 = author;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  [self _defaultEdgeInsets];
  v27 = width - (v25 + v26);
  v30 = v28 + v29 + 1.0;
  [v21 boundingRectWithSize:1 options:sizeThatFits_withReview_characterLimit__sCommentAttributes attributes:0 context:{v27, height}];
  v32 = v30 + v31;
  [v24 boundingRectWithSize:0 options:sizeThatFits_withReview_characterLimit__sAuthorAttributes attributes:0 context:{v27, height}];
  v34 = v33;

  v35 = v32 + v34;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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

- (SiriUIReviewItemCell)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = SiriUIReviewItemCell;
  v3 = [(SiriUIContentCollectionViewCell *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    _commentLabelFont = [objc_opt_class() _commentLabelFont];
    [(UILabel *)v12 setFont:_commentLabelFont];

    v14 = v4->_commentLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v14 setTextColor:whiteColor];

    v16 = v4->_commentLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v16 setBackgroundColor:clearColor];

    [(UILabel *)v4->_commentLabel setNumberOfLines:0];
    [(UILabel *)v4->_commentLabel setLineBreakMode:4];
    [(SiriUIReviewItemCell *)v4 addSubview:v4->_commentLabel];
    v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    authorLabel = v4->_authorLabel;
    v4->_authorLabel = v18;

    v20 = v4->_authorLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v20 setTextColor:whiteColor2];

    v22 = v4->_authorLabel;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v22 setBackgroundColor:clearColor2];

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

- (void)configureWithReview:(id)review ratingView:(id)view offset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  viewCopy = view;
  reviewCopy = review;
  comment = [reviewCopy comment];
  [(SiriUIReviewItemCell *)self _setComment:comment];

  [(SiriUIReviewItemCell *)self _setRatingView:viewCopy];
  self->_ratingOffset.horizontal = horizontal;
  self->_ratingOffset.vertical = vertical;
  lastUpdated = [reviewCopy lastUpdated];
  author = [reviewCopy author];

  date = [lastUpdated date];
  timeZoneId = [lastUpdated timeZoneId];
  [(SiriUIReviewItemCell *)self _setAuthor:author andDate:date timeZoneId:timeZoneId hasRatingView:viewCopy != 0];
}

- (void)_setComment:(id)comment
{
  v12[1] = *MEMORY[0x277D85DE8];
  commentCopy = comment;
  v5 = [objc_opt_class() _displayTextForComment:commentCopy characterLimit:self->_characterLimit];

  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  [v7 setMinimumLineHeight:20.0];
  [v7 setMaximumLineHeight:20.0];
  v8 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = *MEMORY[0x277D74118];
  v12[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v8 initWithString:v5 attributes:v9];

  [(UILabel *)self->_commentLabel setAttributedText:v10];
}

- (void)_setRatingView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_ratingView removeFromSuperview];
  objc_storeStrong(&self->_ratingView, view);
  if (self->_ratingView)
  {
    [(SiriUIReviewItemCell *)self addSubview:?];
  }
}

- (void)_setAuthor:(id)author andDate:(id)date timeZoneId:(id)id hasRatingView:(BOOL)view
{
  viewCopy = view;
  v26[1] = *MEMORY[0x277D85DE8];
  authorCopy = author;
  dateCopy = date;
  v11 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v12 = [authorCopy length];
  v13 = MEMORY[0x277D740A8];
  if (v12)
  {
    if (viewCopy)
    {
      v14 = [@" " stringByAppendingString:authorCopy];

      authorCopy = v14;
    }

    if (dateCopy)
    {
      v15 = [authorCopy stringByAppendingString:@" "];

      authorCopy = v15;
    }

    v25 = *v13;
    _authorFontAttribute = [objc_opt_class() _authorFontAttribute];
    v26[0] = _authorFontAttribute;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:authorCopy attributes:v17];
    [v11 appendAttributedString:v18];
  }

  if (dateCopy)
  {
    v19 = [(SiriUIReviewItemCell *)self _relativeStringFromDate:dateCopy];
    if ([v19 length])
    {
      v23 = *v13;
      _authorDateFontAttribute = [objc_opt_class() _authorDateFontAttribute];
      v24 = _authorDateFontAttribute;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

      v22 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19 attributes:v21];
      [v11 appendAttributedString:v22];
    }
  }

  [(UILabel *)self->_authorLabel setAttributedText:v11];
  [(UILabel *)self->_authorLabel sizeToFit];
}

- (id)_relativeStringFromDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (!dateCopy)
  {
    v10 = 0;
    goto LABEL_11;
  }

  [dateCopy timeIntervalSinceNow];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
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
    font = [(UILabel *)self->_commentLabel font];
    [font descender];
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
    font2 = [(UILabel *)self->_authorLabel font];
    [font2 descender];
    v49 = v46 - v48 + 21.0;

    v86.origin.x = recta.origin.x;
    v86.origin.y = v6;
    v86.size.width = width;
    v86.size.height = v45;
    v50 = CGRectGetMaxX(v86) - v44;
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen3 scale];
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
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 scale];
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