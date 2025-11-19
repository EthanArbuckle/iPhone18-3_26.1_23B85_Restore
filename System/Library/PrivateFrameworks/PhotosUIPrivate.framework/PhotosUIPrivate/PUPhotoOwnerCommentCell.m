@interface PUPhotoOwnerCommentCell
+ (double)heightOfOwnerCellWithAsset:(id)a3 forWidth:(double)a4 forInterfaceOrientation:(int64_t)a5;
+ (id)_ownerStringForAsset:(id)a3;
- (PUPhotoOwnerCommentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setOwnerString:(id)a3;
- (void)setUsesCompactSeparators:(BOOL)a3;
- (void)updateContentFromAsset:(id)a3;
@end

@implementation PUPhotoOwnerCommentCell

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PUPhotoOwnerCommentCell;
  [(PUPhotoOwnerCommentCell *)&v19 layoutSubviews];
  v3 = [(PUPhotoOwnerCommentCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PUPhotoOwnerCommentCell semanticContentAttribute](self, "semanticContentAttribute")}];
  [(PUPhotoOwnerCommentCell *)self px_screenScale];
  v10 = 1.0 / v9;
  v11 = v5 + -15.0;
  if ([(PUPhotoOwnerCommentCell *)self usesCompactSeparators])
  {
    v12 = (v5 + -15.0) * 0.5;
  }

  else
  {
    v12 = v5 + -15.0;
  }

  if (v8)
  {
    [(PUPhotoOwnerCommentCell *)self bounds];
    [(UIView *)self->_styledSeparatorView setFrame:CGRectGetMaxX(v20) - v12 + -15.0, v7 - v10, v12, v10];
    v13 = [(PUPhotoOwnerCommentCell *)self contentView];
    [v13 bounds];
    v14 = CGRectGetMaxX(v21) - (v11 + -15.0) + -15.0;

    v15 = v7 + -10.0 + -8.0;
    [(UILabel *)self->_ownerContentLabel sizeToFit];
    v22.origin.y = 10.0;
    v22.origin.x = v14;
    v22.size.width = v11 + -15.0;
    v22.size.height = v15;
    Width = CGRectGetWidth(v22);
    [(UILabel *)self->_ownerContentLabel frame];
    v17 = CGRectGetWidth(v23);
    v18 = v14 + Width - v17;
  }

  else
  {
    v18 = 15.0;
    [(UIView *)self->_styledSeparatorView setFrame:15.0, v7 - v10, v12, v10];
    v17 = v11 + -15.0;
    v15 = v7 + -10.0 + -8.0;
  }

  [(UILabel *)self->_ownerContentLabel setFrame:v18, 10.0, v17, v15];
  [(UILabel *)self->_ownerContentLabel sizeToFit];
}

- (void)setOwnerString:(id)a3
{
  if (self->_ownerString != a3)
  {
    v4 = [a3 copy];
    ownerString = self->_ownerString;
    self->_ownerString = v4;

    ownerContentLabel = self->_ownerContentLabel;
    v7 = self->_ownerString;

    [(UILabel *)ownerContentLabel setAttributedText:v7];
  }
}

- (void)updateContentFromAsset:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _ownerStringForAsset:v4];

  [(PUPhotoOwnerCommentCell *)self setOwnerString:v5];
}

- (void)setUsesCompactSeparators:(BOOL)a3
{
  if (self->_usesCompactSeparators != a3)
  {
    self->_usesCompactSeparators = a3;
    [(PUPhotoOwnerCommentCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PUPhotoOwnerCommentCell;
  [(PUPhotoOwnerCommentCell *)&v3 prepareForReuse];
  [(PUPhotoOwnerCommentCell *)self setOwnerString:0];
}

- (PUPhotoOwnerCommentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v17.receiver = self;
  v17.super_class = PUPhotoOwnerCommentCell;
  v4 = [(PUPhotoOwnerCommentCell *)&v17 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PUPhotoOwnerCommentCell *)v4 setSelectionStyle:0];
    [(PUPhotoOwnerCommentCell *)v5 setAccessoryType:0];
    [(PUPhotoOwnerCommentCell *)v5 setEditingAccessoryType:0];
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    ownerContentLabel = v5->_ownerContentLabel;
    v5->_ownerContentLabel = v7;

    [(UILabel *)v5->_ownerContentLabel setNumberOfLines:0];
    [(UILabel *)v5->_ownerContentLabel setLineBreakMode:0];
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    styledSeparatorView = v5->_styledSeparatorView;
    v5->_styledSeparatorView = v9;

    v11 = v5->_styledSeparatorView;
    v12 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v11 setBackgroundColor:v12];

    v13 = v5->_ownerContentLabel;
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v13 setBackgroundColor:v14];

    v15 = [(PUPhotoOwnerCommentCell *)v5 contentView];
    [v15 addSubview:v5->_ownerContentLabel];

    [(PUPhotoOwnerCommentCell *)v5 addSubview:v5->_styledSeparatorView];
  }

  return v5;
}

+ (double)heightOfOwnerCellWithAsset:(id)a3 forWidth:(double)a4 forInterfaceOrientation:(int64_t)a5
{
  v6 = [a1 _ownerStringForAsset:{a3, a5}];
  v7 = [PUPhotoCommentCell _synthesizedAttributedString:v6 withWordWrapping:1];

  [v7 boundingRectWithSize:1 options:0 context:{a4 + -30.0, 1.79769313e308}];
  v11 = CGRectIntegral(v10);
  if (v11.size.height + 10.0 + 8.0 >= 23.0)
  {
    v8 = v11.size.height + 10.0 + 8.0;
  }

  else
  {
    v8 = 23.0;
  }

  return v8;
}

+ (id)_ownerStringForAsset:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17 = [v3 px_displayType];
  if ([v3 cloudIsMyAsset])
  {
    v18 = 0;
  }

  else
  {
    v18 = [v3 cloudOwnerDisplayName];
  }

  v4 = [v3 cloudBatchPublishDate];
  v21 = *MEMORY[0x1E69DB650];
  v5 = v21;
  v6 = [MEMORY[0x1E69DC888] labelColor];
  v23[0] = v6;
  v22 = *MEMORY[0x1E69DB648];
  v7 = v22;
  v8 = [MEMORY[0x1E69BE1B8] sharedCache];
  v9 = [v8 commentAttributionNameFont];
  v23[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v21 count:2];

  v19[0] = v5;
  v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v19[1] = v7;
  v20[0] = v11;
  v12 = [MEMORY[0x1E69BE1B8] sharedCache];
  v13 = [v12 commentAttributionDateFont];
  v20[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v15 = [MEMORY[0x1E696AAB0] px_localizedAttributedStringForPostAttributionOfAssetWithDisplayType:v17 postedByUserOrSubjectWithFullName:v18 atDate:v4 nameAttributes:v10 dateAttributes:v14];

  return v15;
}

@end