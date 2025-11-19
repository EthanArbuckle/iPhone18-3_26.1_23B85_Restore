@interface PUPhotoSmilesCommentCell
+ (double)heightOfSmileCellWithComments:(id)a3 forWidth:(double)a4 isVideo:(BOOL)a5 forInterfaceOrientation:(int64_t)a6;
+ (id)_attributedStringForComments:(id)a3 color:(id)a4 isVideo:(BOOL)a5;
- (PUPhotoSmilesCommentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 isVideo:(BOOL)a5;
- (void)_updateContent;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setUserLikes:(id)a3;
- (void)setUsesCompactSeparators:(BOOL)a3;
@end

@implementation PUPhotoSmilesCommentCell

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = PUPhotoSmilesCommentCell;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  v3 = [(PUPhotoSmilesCommentCell *)self effectiveUserInterfaceLayoutDirection];
  v4 = [(PUPhotoSmilesCommentCell *)self contentView];
  [v4 bounds];
  rect.origin.x = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_smileContentLabel sizeThatFits:v9 + -15.0 + -10.0, v11 + -12.0 + -12.0];
  v13 = v12;
  v14 = 15.0;
  v15 = 15.0;
  if (v3 == 1)
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

  if (v3 == 1)
  {
    v21.origin.x = rect.origin.x;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    v14 = CGRectGetMaxX(v21) - v18 + -15.0;
  }

  [(UIView *)self->_styledSeparatorView setFrame:v14, v11 - 1.0 / v17, v18];
}

- (void)setUserLikes:(id)a3
{
  v5 = a3;
  if (self->_userLikes != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userLikes, a3);
    [(PUPhotoSmilesCommentCell *)self _updateContent];
    v5 = v6;
  }
}

- (void)_updateContent
{
  v3 = objc_opt_class();
  userLikes = self->_userLikes;
  v5 = [MEMORY[0x1E69DC888] labelColor];
  v9 = [v3 _attributedStringForComments:userLikes color:v5 isVideo:self->_isVideo];

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

- (void)setUsesCompactSeparators:(BOOL)a3
{
  if (self->_usesCompactSeparators != a3)
  {
    self->_usesCompactSeparators = a3;
    [(PUPhotoSmilesCommentCell *)self setNeedsLayout];
  }
}

- (PUPhotoSmilesCommentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 isVideo:(BOOL)a5
{
  v19.receiver = self;
  v19.super_class = PUPhotoSmilesCommentCell;
  v6 = [(PUPhotoSmilesCommentCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
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
    v12 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v11 setBackgroundColor:v12];

    v13 = [(PUPhotoSmilesCommentCell *)v7 contentView];
    [v13 addSubview:v7->_smileContentLabel];

    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    styledSeparatorView = v7->_styledSeparatorView;
    v7->_styledSeparatorView = v14;

    v16 = v7->_styledSeparatorView;
    v17 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v16 setBackgroundColor:v17];

    [(PUPhotoSmilesCommentCell *)v7 addSubview:v7->_styledSeparatorView];
    v7->_isVideo = a5;
  }

  return v7;
}

+ (double)heightOfSmileCellWithComments:(id)a3 forWidth:(double)a4 isVideo:(BOOL)a5 forInterfaceOrientation:(int64_t)a6
{
  v6 = a5;
  v9 = a3;
  if ([v9 count])
  {
    v10 = [a1 _attributedStringForComments:v9 color:0 isVideo:v6];
    v11 = [PUPhotoCommentCell _synthesizedAttributedString:v10 withWordWrapping:1];

    [v11 boundingRectWithSize:1 options:0 context:{a4 + -25.0, 1.79769313e308}];
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

+ (id)_attributedStringForComments:(id)a3 color:(id)a4 isVideo:(BOOL)a5
{
  v38 = a5;
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [MEMORY[0x1E69DC888] redColor];
  }

  v9 = *MEMORY[0x1E69DB648];
  v47[0] = *MEMORY[0x1E69DB650];
  v8 = v47[0];
  v47[1] = v9;
  v48[0] = v7;
  v10 = [MEMORY[0x1E69BE1B8] sharedCache];
  v11 = [v10 likeFont];
  v48[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

  v39 = v7;
  v45[1] = v9;
  v46[0] = v7;
  v45[0] = v8;
  v13 = [MEMORY[0x1E69BE1B8] sharedCache];
  v14 = [v13 youLikeFont];
  v46[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

  if ([v6 count])
  {
    v37 = v12;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v31 = 0;
      v32 = v39;
      goto LABEL_23;
    }

    v35 = v15;
    v36 = v6;
    v16 = v6;
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
            v24 = [v23 photoLibrary];
            v25 = MEMORY[0x1E6978AC0];
            v26 = [v24 librarySpecificFetchOptions];
            v27 = [v25 fetchContributorForComment:v23 options:v26];
            v28 = [v27 firstObject];

            v29 = [v28 fullName];
            if ([v29 length])
            {
              [v40 addObject:v29];
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
    v31 = [MEMORY[0x1E696AAB0] px_localizedAttributedStringForLikesFromUser:v20 & 1 otherPeopleFullNames:v30 isVideo:v38 defaultTextAttributes:v37 emphasizedTextAttributes:v35];
    v6 = v36;
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