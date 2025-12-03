@interface PUPhotoSmilesCommentCell
+ (double)heightOfSmileCellWithComments:(id)comments forWidth:(double)width isVideo:(BOOL)video forInterfaceOrientation:(int64_t)orientation;
+ (id)_attributedStringForComments:(id)comments color:(id)color isVideo:(BOOL)video;
- (PUPhotoSmilesCommentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier isVideo:(BOOL)video;
- (void)_updateContent;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setUserLikes:(id)likes;
- (void)setUsesCompactSeparators:(BOOL)separators;
@end

@implementation PUPhotoSmilesCommentCell

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = PUPhotoSmilesCommentCell;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  effectiveUserInterfaceLayoutDirection = [(PUPhotoSmilesCommentCell *)self effectiveUserInterfaceLayoutDirection];
  contentView = [(PUPhotoSmilesCommentCell *)self contentView];
  [contentView bounds];
  rect.origin.x = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_smileContentLabel sizeThatFits:v9 + -15.0 + -10.0, v11 + -12.0 + -12.0];
  v13 = v12;
  v14 = 15.0;
  v15 = 15.0;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v20.origin.x = rect.origin.x;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    v15 = CGRectGetMaxX(v20) - v13 + -15.0;
  }

  [(UILabel *)self->_smileContentLabel setFrame:v15, 12.0, v13, v11 + -12.0 + -12.0];
  [(PUPhotoSmilesCommentCell *)self px_screenScale];
  v17 = v16;
  if ([(PUPhotoSmilesCommentCell *)self usesCompactSeparators])
  {
    v18 = (v9 + -15.0) * 0.5;
  }

  else
  {
    v18 = v9 + -15.0;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v21.origin.x = rect.origin.x;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    v14 = CGRectGetMaxX(v21) - v18 + -15.0;
  }

  [(UIView *)self->_styledSeparatorView setFrame:v14, v11 - 1.0 / v17, v18];
}

- (void)setUserLikes:(id)likes
{
  likesCopy = likes;
  if (self->_userLikes != likesCopy)
  {
    v6 = likesCopy;
    objc_storeStrong(&self->_userLikes, likes);
    [(PUPhotoSmilesCommentCell *)self _updateContent];
    likesCopy = v6;
  }
}

- (void)_updateContent
{
  v3 = objc_opt_class();
  userLikes = self->_userLikes;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v9 = [v3 _attributedStringForComments:userLikes color:labelColor isVideo:self->_isVideo];

  v6 = [(PXFastEnumeration *)self->_userLikes count]== 0;
  v7 = v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9;
  }

  [(UILabel *)self->_smileContentLabel setAttributedText:v8];
  [(UIView *)self->_styledSeparatorView setHidden:v7];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PUPhotoSmilesCommentCell;
  [(PUPhotoSmilesCommentCell *)&v3 prepareForReuse];
  [(PUPhotoSmilesCommentCell *)self setUserLikes:0];
}

- (void)setUsesCompactSeparators:(BOOL)separators
{
  if (self->_usesCompactSeparators != separators)
  {
    self->_usesCompactSeparators = separators;
    [(PUPhotoSmilesCommentCell *)self setNeedsLayout];
  }
}

- (PUPhotoSmilesCommentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier isVideo:(BOOL)video
{
  v19.receiver = self;
  v19.super_class = PUPhotoSmilesCommentCell;
  v6 = [(PUPhotoSmilesCommentCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    [(PUPhotoSmilesCommentCell *)v6 setSelectionStyle:0];
    [(PUPhotoSmilesCommentCell *)v7 setAccessoryType:0];
    [(PUPhotoSmilesCommentCell *)v7 setEditingAccessoryType:0];
    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    smileContentLabel = v7->_smileContentLabel;
    v7->_smileContentLabel = v9;

    [(UILabel *)v7->_smileContentLabel setNumberOfLines:0];
    [(UILabel *)v7->_smileContentLabel setLineBreakMode:0];
    v11 = v7->_smileContentLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v11 setBackgroundColor:clearColor];

    contentView = [(PUPhotoSmilesCommentCell *)v7 contentView];
    [contentView addSubview:v7->_smileContentLabel];

    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    styledSeparatorView = v7->_styledSeparatorView;
    v7->_styledSeparatorView = v14;

    v16 = v7->_styledSeparatorView;
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v16 setBackgroundColor:separatorColor];

    [(PUPhotoSmilesCommentCell *)v7 addSubview:v7->_styledSeparatorView];
    v7->_isVideo = video;
  }

  return v7;
}

+ (double)heightOfSmileCellWithComments:(id)comments forWidth:(double)width isVideo:(BOOL)video forInterfaceOrientation:(int64_t)orientation
{
  videoCopy = video;
  commentsCopy = comments;
  if ([commentsCopy count])
  {
    v10 = [self _attributedStringForComments:commentsCopy color:0 isVideo:videoCopy];
    v11 = [PUPhotoCommentCell _synthesizedAttributedString:v10 withWordWrapping:1];

    [v11 boundingRectWithSize:1 options:0 context:{width + -25.0, 1.79769313e308}];
    v15 = CGRectIntegral(v14);
    if (v15.size.height + 12.0 + 12.0 >= 25.0)
    {
      v12 = v15.size.height + 12.0 + 12.0;
    }

    else
    {
      v12 = 25.0;
    }
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

+ (id)_attributedStringForComments:(id)comments color:(id)color isVideo:(BOOL)video
{
  videoCopy = video;
  v50 = *MEMORY[0x1E69E9840];
  commentsCopy = comments;
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [MEMORY[0x1E69DC888] redColor];
  }

  v9 = *MEMORY[0x1E69DB648];
  v47[0] = *MEMORY[0x1E69DB650];
  v8 = v47[0];
  v47[1] = v9;
  v48[0] = colorCopy;
  mEMORY[0x1E69BE1B8] = [MEMORY[0x1E69BE1B8] sharedCache];
  likeFont = [mEMORY[0x1E69BE1B8] likeFont];
  v48[1] = likeFont;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

  v39 = colorCopy;
  v45[1] = v9;
  v46[0] = colorCopy;
  v45[0] = v8;
  mEMORY[0x1E69BE1B8]2 = [MEMORY[0x1E69BE1B8] sharedCache];
  youLikeFont = [mEMORY[0x1E69BE1B8]2 youLikeFont];
  v46[1] = youLikeFont;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

  if ([commentsCopy count])
  {
    v37 = v12;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v31 = 0;
      v32 = v39;
      goto LABEL_23;
    }

    v35 = v15;
    v36 = commentsCopy;
    v16 = commentsCopy;
    v40 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v42;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v41 + 1) + 8 * i);
          if ([v23 isMyComment])
          {
            v20 = 1;
          }

          else
          {
            photoLibrary = [v23 photoLibrary];
            v25 = MEMORY[0x1E6978AC0];
            librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
            v27 = [v25 fetchContributorForComment:v23 options:librarySpecificFetchOptions];
            firstObject = [v27 firstObject];

            fullName = [firstObject fullName];
            if ([fullName length])
            {
              [v40 addObject:fullName];
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    v33 = v40;
    v30 = v40;
    v12 = v37;
    v15 = v35;
    v31 = [MEMORY[0x1E696AAB0] px_localizedAttributedStringForLikesFromUser:v20 & 1 otherPeopleFullNames:v30 isVideo:videoCopy defaultTextAttributes:v37 emphasizedTextAttributes:v35];
    commentsCopy = v36;
  }

  else
  {
    v30 = PLLocalizedFrameworkString();
    v31 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v30 attributes:v12];
  }

  v32 = v39;
LABEL_23:

  return v31;
}

@end