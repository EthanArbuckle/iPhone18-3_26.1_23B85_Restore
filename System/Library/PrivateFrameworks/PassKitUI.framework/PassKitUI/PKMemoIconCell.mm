@interface PKMemoIconCell
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (PKMemoIconCellDelegate)delegate;
- (void)layoutSubviews;
- (void)setItem:(id)a3;
- (void)showEmojiKeyboardIfNeeded;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation PKMemoIconCell

- (void)showEmojiKeyboardIfNeeded
{
  v3 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 normalizedIdentifier];

  if (([v5 isEqualToString:*MEMORY[0x1E69DDFB8]] & 1) == 0)
  {
    [(UITextView *)self->_emojiTextView resignFirstResponder];
  }

  [(UITextView *)self->_emojiTextView becomeFirstResponder];
}

- (void)setItem:(id)a3
{
  v29 = a3;
  objc_storeStrong(&self->_item, a3);
  v5 = [(PKMemoItem *)self->_item type];
  v6 = v5;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        [(UILabel *)self->_emojiLabel removeFromSuperview];
        emojiLabel = self->_emojiLabel;
        self->_emojiLabel = 0;

        [(UITextView *)self->_emojiTextView removeFromSuperview];
        emojiTextView = self->_emojiTextView;
        self->_emojiTextView = 0;

        v9 = [(PKMemoIconCell *)self contentView];
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v5 == 2)
  {
    [(UILabel *)self->_emojiLabel removeFromSuperview];
    v19 = self->_emojiLabel;
    self->_emojiLabel = 0;

    v9 = [(PKMemoIconCell *)self contentView];
    goto LABEL_18;
  }

  if (v5 == 3)
  {
LABEL_7:
    v10 = [(PKMemoItem *)self->_item memo];
    v11 = [v10 emoji];
    v12 = [v11 length];

    if (!v12)
    {
      [(UILabel *)self->_emojiLabel removeFromSuperview];
      v13 = self->_emojiLabel;
      self->_emojiLabel = 0;
    }

    [(UITextView *)self->_emojiTextView removeFromSuperview];
    v14 = self->_emojiTextView;
    self->_emojiTextView = 0;
  }

LABEL_10:
  v9 = [(PKMemoIconCell *)self contentView];
  if (v6 == 3)
  {
LABEL_13:
    v15 = [(PKMemoItem *)self->_item memo];
    v16 = [v15 emoji];

    if (!self->_emojiLabel && [v16 length])
    {
      v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v18 = self->_emojiLabel;
      self->_emojiLabel = v17;

      [(UILabel *)self->_emojiLabel setTextAlignment:1];
      [v9 addSubview:self->_emojiLabel];
    }

    [(UILabel *)self->_emojiLabel setText:v16];

    goto LABEL_21;
  }

  if (v6 != 2)
  {
    if (v6)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

LABEL_18:
  v20 = self->_emojiTextView;
  if (!v20)
  {
    v21 = objc_alloc_init(MEMORY[0x1E69DD168]);
    v22 = self->_emojiTextView;
    self->_emojiTextView = v21;

    v23 = self->_emojiTextView;
    v24 = [MEMORY[0x1E69DC888] whiteColor];
    [(UITextView *)v23 setTintColor:v24];

    v25 = self->_emojiTextView;
    v26 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v25 setBackgroundColor:v26];

    [(UITextView *)self->_emojiTextView setScrollEnabled:0];
    [(UITextView *)self->_emojiTextView setTextAlignment:1];
    [(UITextView *)self->_emojiTextView setDelegate:self];
    [(UITextView *)self->_emojiTextView setKeyboardType:124];
    [(UITextView *)self->_emojiTextView setAutocorrectionType:1];
    [v9 addSubview:self->_emojiTextView];
    v20 = self->_emojiTextView;
  }

  v27 = [(PKMemoItem *)self->_item memo];
  v28 = [v27 emoji];
  [(UITextView *)v20 setText:v28];

LABEL_21:
  [(PKMemoIconCell *)self setNeedsUpdateConfiguration];
}

- (void)layoutSubviews
{
  v48[2] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = PKMemoIconCell;
  [(PKMemoIconCell *)&v45 layoutSubviews];
  [(PKMemoIconCell *)self bounds];
  if (v3 != self->_priorBoundsSize.width || v4 != self->_priorBoundsSize.height)
  {
    self->_priorBoundsSize.width = v3;
    self->_priorBoundsSize.height = v4;
    [(PKMemoIconCell *)self setNeedsUpdateConfiguration];
  }

  v6 = [(PKMemoIconCell *)self contentView];
  [v6 bounds];
  v8 = v7;
  PKSizeAlignedInRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v8 * 0.55;
  v18 = [(PKMemoItem *)self->_item type];
  switch(v18)
  {
    case 3uLL:
      goto LABEL_9;
    case 2uLL:
      [(UITextView *)self->_emojiTextView setFrame:v10, v12, v14, v16];
      v21 = [MEMORY[0x1E69DB878] systemFontOfSize:v17];
      v22 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
      v23 = [v22 currentInputMode];
      v24 = [v23 isDefaultRightToLeft];

      v25 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
      v26 = [(UITextView *)self->_emojiTextView text];
      [v6 bounds];
      v28 = v27;
      v30 = v29;
      v31 = *MEMORY[0x1E69DB778];
      v47[0] = *MEMORY[0x1E69DB648];
      v47[1] = v31;
      v48[0] = v21;
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
      v46 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      v48[1] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      [v26 boundingRectWithSize:33 options:v34 attributes:v25 context:{v28, v30}];
      v36 = v35;

      [(UITextView *)self->_emojiTextView contentOffset];
      v38 = v37;
      v39 = [(UITextView *)self->_emojiTextView textContainer];
      [v39 size];
      v41 = v40;
      [(UITextView *)self->_emojiTextView zoomScale];
      v43 = v41 - v36 * v42;

      v44 = -0.0;
      if (v43 * 0.5 >= 0.0)
      {
        v44 = -(v43 * 0.5);
      }

      [(UITextView *)self->_emojiTextView setContentOffset:v38, v44];
      [(UITextView *)self->_emojiTextView setFont:v21];

      break;
    case 0uLL:
LABEL_9:
      emojiLabel = self->_emojiLabel;
      v20 = [MEMORY[0x1E69DB878] systemFontOfSize:v17];
      [(UILabel *)emojiLabel setFont:v20];

      [(UILabel *)self->_emojiLabel setFrame:v10, v12, v14, v16];
      break;
  }
}

- (void)updateConfigurationUsingState:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKMemoIconCell;
  [(PKMemoIconCell *)&v32 updateConfigurationUsingState:a3];
  v4 = [(PKMemoIconCell *)self backgroundConfiguration];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(PKMemoIconCell *)self defaultBackgroundConfiguration];
  }

  v7 = v6;

  v8 = [(PKMemoItem *)self->_item memo];
  v9 = [v8 color];
  v10 = _UISolariumFeatureFlagEnabled();
  v11 = 10.0;
  if (v10)
  {
    v11 = 16.0;
  }

  [v7 setCornerRadius:v11];
  if (v9)
  {
    PKPeerPaymentMessageColorFromSemanticColor(v9);
  }

  else
  {
    [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  }
  v12 = ;
  [v7 setBackgroundColor:v12];

  v13 = [(PKMemoItem *)self->_item type];
  v14 = v13;
  v15 = 0;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
LABEL_22:
      [v7 setStrokeWidth:0.0];
      goto LABEL_23;
    }

    if (v13 != 3)
    {
      goto LABEL_23;
    }

LABEL_15:
    v16 = [(PKMemoItem *)self->_item memo];
    v17 = [v16 emoji];
    v18 = [v17 length];

    if (v18)
    {
      v15 = 0;
    }

    else
    {
      v20 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:self->_priorBoundsSize.height * 0.6];
      v21 = MEMORY[0x1E69DCAD8];
      v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v33[0] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      v24 = [v21 configurationWithPaletteColors:v23];
      v25 = [v20 configurationByApplyingConfiguration:v24];

      if (v14 == 1)
      {
        v26 = @"plus";
      }

      else
      {
        v26 = @"emoji.face.grinning";
      }

      v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v26 withConfiguration:v25];
      [v7 setImageContentMode:4];
    }

    goto LABEL_22;
  }

  if (!v13)
  {
    v19 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v7 setStrokeColor:v19];

    [v7 setStrokeOutset:1.0];
    v15 = 0;
    goto LABEL_23;
  }

  if (v13 == 1)
  {
    goto LABEL_15;
  }

LABEL_23:
  [v7 setImage:v15];
  height = self->_priorBoundsSize.height;
  if (self->_priorBoundsSize.width == height)
  {
    v29 = *MEMORY[0x1E69DC5C0];
    v28 = *(MEMORY[0x1E69DC5C0] + 8);
    v30 = *(MEMORY[0x1E69DC5C0] + 16);
    v31 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  else
  {
    v28 = (self->_priorBoundsSize.width - height) * 0.5;
    v29 = 0.0;
    v30 = 0.0;
    v31 = v28;
  }

  [v7 setBackgroundInsets:{v29, v28, v30, v31}];
  [(PKMemoIconCell *)self setBackgroundConfiguration:v7];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [v9 text];
  v12 = [v11 stringByReplacingCharactersInRange:location withString:{length, v10}];

  if ([v12 length] && !CEMStringIsSingleEmoji())
  {
    if (!CEMStringIsSingleEmoji())
    {
      v16 = 0;
      goto LABEL_6;
    }

    [v9 setText:v10];
    v19 = [(PKMemoItem *)self->_item memo];
    [v19 setEmoji:v10];

    p_delegate = &self->_delegate;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    v16 = 0;
    if (WeakRetained)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = [(PKMemoItem *)self->_item memo];
    [v13 setEmoji:v12];

    p_delegate = &self->_delegate;
    v15 = objc_loadWeakRetained(&self->_delegate);

    v16 = 1;
    if (v15)
    {
LABEL_4:
      v17 = objc_loadWeakRetained(p_delegate);
      [v17 cell:self didUpdateText:v12];
    }
  }

  [(PKMemoIconCell *)self setNeedsLayout];
LABEL_6:

  return v16;
}

- (PKMemoIconCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end