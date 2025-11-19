@interface PUPhotoCommentCell
+ (double)heightForComment:(id)a3 ofAsset:(id)a4 forWidth:(double)a5 forInterfaceOrientation:(int64_t)a6;
+ (id)_attributionStringForComment:(id)a3 ofAsset:(id)a4;
+ (id)_commentStringForComment:(id)a3;
+ (id)_synthesizedAttributedString:(id)a3 withWordWrapping:(BOOL)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (PUPhotoCommentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateContent;
- (void)delete:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setComment:(id)a3;
- (void)setUsesCompactSeparators:(BOOL)a3;
@end

@implementation PUPhotoCommentCell

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PUPhotoCommentCell;
  [(PUPhotoCommentCell *)&v29 layoutSubviews];
  v3 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PUPhotoCommentCell semanticContentAttribute](self, "semanticContentAttribute")}];
  v4 = [(PUPhotoCommentCell *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [(PUPhotoCommentCell *)self px_screenScale];
  v10 = 1.0 / v9;
  v11 = v6 + -15.0;
  if ([(PUPhotoCommentCell *)self usesCompactSeparators])
  {
    v12 = (v6 + -15.0) * 0.5;
  }

  else
  {
    v12 = v6 + -15.0;
  }

  v13 = 15.0;
  v14 = 15.0;
  if (v3)
  {
    [(PUPhotoCommentCell *)self bounds];
    v14 = CGRectGetMaxX(v30) - v12 + -15.0;
  }

  [(UIView *)self->_styledSeparatorView setFrame:v14, v8 - v10, v12, v10];
  [(UITextView *)self->_commentContentTextView sizeThatFits:v11 + -15.0, 1.79769313e308];
  v16 = v15;
  v18 = v17;
  if (v3)
  {
    v19 = [(PUPhotoCommentCell *)self contentView];
    [v19 bounds];
    MaxX = CGRectGetMaxX(v31);
    v32.origin.x = 15.0;
    v32.origin.y = 6.0;
    v32.size.width = v16;
    v32.size.height = v18;
    v13 = MaxX - CGRectGetWidth(v32) + -15.0;
  }

  [(UITextView *)self->_commentContentTextView setFrame:v13, 6.0, v16, v18];
  v33.origin.y = 6.0;
  v33.origin.x = v13;
  v33.size.width = v16;
  v33.size.height = v18;
  v21 = CGRectGetMaxY(v33) + 1.0;
  [(UILabel *)self->_commentBylineLabel sizeThatFits:v11 + -15.0, 1.79769313e308];
  v23 = v22;
  v25 = v24;
  if (v3)
  {
    v26 = [(PUPhotoCommentCell *)self contentView];
    [v26 bounds];
    v27 = CGRectGetMaxX(v34);
    v35.origin.x = 15.0;
    v35.origin.y = v21;
    v35.size.width = v23;
    v35.size.height = v25;
    v28 = v27 - CGRectGetWidth(v35) + -15.0;
  }

  else
  {
    v28 = 15.0;
  }

  [(UILabel *)self->_commentBylineLabel setFrame:v28, v21, v23, v25];
}

- (void)setComment:(id)a3
{
  v4 = a3 | self->_comment;
  objc_storeStrong(&self->_comment, a3);
  if (v4)
  {

    [(PUPhotoCommentCell *)self _updateContent];
  }
}

- (void)_updateContent
{
  commentContentTextView = self->_commentContentTextView;
  v4 = [objc_opt_class() _commentStringForComment:self->_comment];
  [(UITextView *)commentContentTextView setAttributedText:v4];

  commentBylineLabel = self->_commentBylineLabel;
  v6 = objc_opt_class();
  comment = self->_comment;
  v8 = [(PUPhotoCommentCell *)self asset];
  v9 = [v6 _attributionStringForComment:comment ofAsset:v8];
  [(UILabel *)commentBylineLabel setAttributedText:v9];

  styledSeparatorView = self->_styledSeparatorView;
  v11 = [MEMORY[0x1E69DC888] separatorColor];
  [(UIView *)styledSeparatorView setBackgroundColor:v11];
}

- (void)delete:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C39E8];
  v7[0] = self->_comment;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = [(PUPhotoCommentCell *)self asset];
  [v4 removeComments:v5 fromAsset:v6 completionHandler:0];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_delete_ == a3)
  {
    comment = self->_comment;

    return [(PHAssetComment *)comment canBeDeletedByUser];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PUPhotoCommentCell;
    return [PUPhotoCommentCell canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }
}

- (void)setUsesCompactSeparators:(BOOL)a3
{
  if (self->_usesCompactSeparators != a3)
  {
    self->_usesCompactSeparators = a3;
    [(PUPhotoCommentCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PUPhotoCommentCell;
  [(PUPhotoCommentCell *)&v4 prepareForReuse];
  comment = self->_comment;
  self->_comment = 0;
}

- (PUPhotoCommentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v26.receiver = self;
  v26.super_class = PUPhotoCommentCell;
  v4 = [(PUPhotoCommentCell *)&v26 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PUPhotoCommentCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    commentBylineLabel = v5->_commentBylineLabel;
    v5->_commentBylineLabel = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    styledSeparatorView = v5->_styledSeparatorView;
    v5->_styledSeparatorView = v13;

    v15 = v5->_styledSeparatorView;
    v16 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v15 setBackgroundColor:v16];

    v17 = [objc_alloc(MEMORY[0x1E69DD168]) initWithFrame:{v7, v8, v9, v10}];
    commentContentTextView = v5->_commentContentTextView;
    v5->_commentContentTextView = v17;

    v19 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v5->_commentContentTextView setBackgroundColor:v19];

    [(UITextView *)v5->_commentContentTextView setDataDetectorTypes:2];
    [(UITextView *)v5->_commentContentTextView setEditable:0];
    [(UITextView *)v5->_commentContentTextView setSelectable:1];
    [(UITextView *)v5->_commentContentTextView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v5->_commentContentTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v20 = [(UITextView *)v5->_commentContentTextView textContainer];
    [v20 setLineFragmentPadding:0.0];

    v21 = v5->_commentBylineLabel;
    v22 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v21 setBackgroundColor:v22];

    [(UILabel *)v5->_commentBylineLabel setNumberOfLines:0];
    v23 = [(PUPhotoCommentCell *)v5 contentView];
    [v23 addSubview:v5->_commentContentTextView];

    v24 = [(PUPhotoCommentCell *)v5 contentView];
    [v24 addSubview:v5->_commentBylineLabel];

    [(PUPhotoCommentCell *)v5 addSubview:v5->_styledSeparatorView];
  }

  return v5;
}

+ (id)_attributionStringForComment:(id)a3 ofAsset:(id)a4
{
  v35[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v5 isCaption];
  if ([v5 isMyComment])
  {
    v13 = PLLocalizedFrameworkString();
  }

  else
  {
    v8 = [v5 photoLibrary];
    v9 = MEMORY[0x1E6978AC0];
    v10 = [v8 librarySpecificFetchOptions];
    v11 = [v9 fetchContributorForComment:v5 options:v10];
    v12 = [v11 firstObject];

    v13 = [v12 fullName];
  }

  v14 = [v13 length];
  v15 = MEMORY[0x1E69DB648];
  if (v14)
  {
    v34[0] = *MEMORY[0x1E69DB650];
    v16 = [MEMORY[0x1E69DC888] labelColor];
    v17 = v15;
    v34[1] = *v15;
    v35[0] = v16;
    v18 = [MEMORY[0x1E69BE1B8] sharedCache];
    v19 = [v18 commentAttributionNameFont];
    v35[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

    v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13 attributes:v20];
    [v7 addObject:v21];
  }

  else
  {
    v17 = MEMORY[0x1E69DB648];
    [v7 addObject:&stru_1F2AC6818];
  }

  v22 = [v5 commentDate];
  v23 = PLRelativePrettyDateForDate();

  [v7 addObject:v23];
  if (([v6 isVideo] & 1) == 0)
  {
    [v6 isStreamedVideo];
  }

  v24 = v17;
  v25 = PLLocalizedFrameworkString();
  v32[0] = *MEMORY[0x1E69DB650];
  v26 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v32[1] = *v24;
  v33[0] = v26;
  v27 = [MEMORY[0x1E69BE1B8] sharedCache];
  v28 = [v27 commentAttributionDateFont];
  v33[1] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

  v30 = [MEMORY[0x1E696AAB0] px_stringWithFormat:v25 defaultAttributes:v29 arguments:v7];

  return v30;
}

+ (id)_commentStringForComment:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [a3 commentText];
  v10[0] = *MEMORY[0x1E69DB650];
  v4 = [MEMORY[0x1E69DC888] labelColor];
  v11[0] = v4;
  v10[1] = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E69BE1B8] sharedCache];
  v6 = [v5 commentTextFont];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3 attributes:v7];

  return v8;
}

+ (double)heightForComment:(id)a3 ofAsset:(id)a4 forWidth:(double)a5 forInterfaceOrientation:(int64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [a1 _commentStringForComment:v10];
  v12 = [PUPhotoCommentCell _synthesizedAttributedString:v11 withWordWrapping:1];

  v13 = a5 + -30.0;
  [v12 boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  v20 = CGRectIntegral(v19);
  v14 = v20.size.height + 0.0;
  v15 = [a1 _attributionStringForComment:v10 ofAsset:{v9, v20.origin.x, v20.origin.y, v20.size.width}];

  v16 = [PUPhotoCommentCell _synthesizedAttributedString:v15 withWordWrapping:1];

  [v16 boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  v22 = CGRectIntegral(v21);
  if (v14 + v22.size.height + 0.0 + 13.0 >= 41.0)
  {
    v17 = v14 + v22.size.height + 0.0 + 13.0;
  }

  else
  {
    v17 = 41.0;
  }

  return v17;
}

+ (id)_synthesizedAttributedString:(id)a3 withWordWrapping:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 length])
  {
    v6 = [MEMORY[0x1E69DCC10] _defaultAttributes];
    v7 = [v6 mutableCopy];

    v8 = *MEMORY[0x1E69DB688];
    v9 = [v7 objectForKey:*MEMORY[0x1E69DB688]];
    v10 = [v9 mutableCopy];

    if (v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = 4;
    }

    [v10 setLineBreakMode:v11];
    [v7 setObject:v10 forKey:v8];
    v12 = [v5 length];
    v13 = objc_alloc(MEMORY[0x1E696AD40]);
    v14 = [v5 string];
    v15 = [v13 initWithString:v14 attributes:v7];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__PUPhotoCommentCell__synthesizedAttributedString_withWordWrapping___block_invoke;
    v18[3] = &unk_1E7B7AA60;
    v16 = v15;
    v19 = v16;
    [v5 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v18}];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F2AC6818];
  }

  return v16;
}

@end