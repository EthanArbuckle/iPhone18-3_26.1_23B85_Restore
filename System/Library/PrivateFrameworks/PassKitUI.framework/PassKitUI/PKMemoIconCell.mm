@interface PKMemoIconCell
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (PKMemoIconCellDelegate)delegate;
- (void)layoutSubviews;
- (void)setItem:(id)item;
- (void)showEmojiKeyboardIfNeeded;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation PKMemoIconCell

- (void)showEmojiKeyboardIfNeeded
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  normalizedIdentifier = [currentInputMode normalizedIdentifier];

  if (([normalizedIdentifier isEqualToString:*MEMORY[0x1E69DDFB8]] & 1) == 0)
  {
    [(UITextView *)self->_emojiTextView resignFirstResponder];
  }

  [(UITextView *)self->_emojiTextView becomeFirstResponder];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_item, item);
  type = [(PKMemoItem *)self->_item type];
  v6 = type;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        [(UILabel *)self->_emojiLabel removeFromSuperview];
        emojiLabel = self->_emojiLabel;
        self->_emojiLabel = 0;

        [(UITextView *)self->_emojiTextView removeFromSuperview];
        emojiTextView = self->_emojiTextView;
        self->_emojiTextView = 0;

        contentView = [(PKMemoIconCell *)self contentView];
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (type == 2)
  {
    [(UILabel *)self->_emojiLabel removeFromSuperview];
    v19 = self->_emojiLabel;
    self->_emojiLabel = 0;

    contentView = [(PKMemoIconCell *)self contentView];
    goto LABEL_18;
  }

  if (type == 3)
  {
LABEL_7:
    memo = [(PKMemoItem *)self->_item memo];
    emoji = [memo emoji];
    v12 = [emoji length];

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
  contentView = [(PKMemoIconCell *)self contentView];
  if (v6 == 3)
  {
LABEL_13:
    memo2 = [(PKMemoItem *)self->_item memo];
    emoji2 = [memo2 emoji];

    if (!self->_emojiLabel && [emoji2 length])
    {
      v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v18 = self->_emojiLabel;
      self->_emojiLabel = v17;

      [(UILabel *)self->_emojiLabel setTextAlignment:1];
      [contentView addSubview:self->_emojiLabel];
    }

    [(UILabel *)self->_emojiLabel setText:emoji2];

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UITextView *)v23 setTintColor:whiteColor];

    v25 = self->_emojiTextView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v25 setBackgroundColor:clearColor];

    [(UITextView *)self->_emojiTextView setScrollEnabled:0];
    [(UITextView *)self->_emojiTextView setTextAlignment:1];
    [(UITextView *)self->_emojiTextView setDelegate:self];
    [(UITextView *)self->_emojiTextView setKeyboardType:124];
    [(UITextView *)self->_emojiTextView setAutocorrectionType:1];
    [contentView addSubview:self->_emojiTextView];
    v20 = self->_emojiTextView;
  }

  memo3 = [(PKMemoItem *)self->_item memo];
  emoji3 = [memo3 emoji];
  [(UITextView *)v20 setText:emoji3];

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

  contentView = [(PKMemoIconCell *)self contentView];
  [contentView bounds];
  v8 = v7;
  PKSizeAlignedInRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v8 * 0.55;
  type = [(PKMemoItem *)self->_item type];
  switch(type)
  {
    case 3uLL:
      goto LABEL_9;
    case 2uLL:
      [(UITextView *)self->_emojiTextView setFrame:v10, v12, v14, v16];
      v21 = [MEMORY[0x1E69DB878] systemFontOfSize:v17];
      mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
      currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
      isDefaultRightToLeft = [currentInputMode isDefaultRightToLeft];

      v25 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
      text = [(UITextView *)self->_emojiTextView text];
      [contentView bounds];
      v28 = v27;
      v30 = v29;
      v31 = *MEMORY[0x1E69DB778];
      v47[0] = *MEMORY[0x1E69DB648];
      v47[1] = v31;
      v48[0] = v21;
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:isDefaultRightToLeft];
      v46 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      v48[1] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      [text boundingRectWithSize:33 options:v34 attributes:v25 context:{v28, v30}];
      v36 = v35;

      [(UITextView *)self->_emojiTextView contentOffset];
      v38 = v37;
      textContainer = [(UITextView *)self->_emojiTextView textContainer];
      [textContainer size];
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

- (void)updateConfigurationUsingState:(id)state
{
  v33[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKMemoIconCell;
  [(PKMemoIconCell *)&v32 updateConfigurationUsingState:state];
  backgroundConfiguration = [(PKMemoIconCell *)self backgroundConfiguration];
  v5 = backgroundConfiguration;
  if (backgroundConfiguration)
  {
    defaultBackgroundConfiguration = backgroundConfiguration;
  }

  else
  {
    defaultBackgroundConfiguration = [(PKMemoIconCell *)self defaultBackgroundConfiguration];
  }

  v7 = defaultBackgroundConfiguration;

  memo = [(PKMemoItem *)self->_item memo];
  color = [memo color];
  v10 = _UISolariumFeatureFlagEnabled();
  v11 = 10.0;
  if (v10)
  {
    v11 = 16.0;
  }

  [v7 setCornerRadius:v11];
  if (color)
  {
    PKPeerPaymentMessageColorFromSemanticColor(color);
  }

  else
  {
    [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  }
  v12 = ;
  [v7 setBackgroundColor:v12];

  type = [(PKMemoItem *)self->_item type];
  v14 = type;
  v15 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
LABEL_22:
      [v7 setStrokeWidth:0.0];
      goto LABEL_23;
    }

    if (type != 3)
    {
      goto LABEL_23;
    }

LABEL_15:
    memo2 = [(PKMemoItem *)self->_item memo];
    emoji = [memo2 emoji];
    v18 = [emoji length];

    if (v18)
    {
      v15 = 0;
    }

    else
    {
      v20 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:self->_priorBoundsSize.height * 0.6];
      v21 = MEMORY[0x1E69DCAD8];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v33[0] = secondaryLabelColor;
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

  if (!type)
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [v7 setStrokeColor:systemBlueColor];

    [v7 setStrokeOutset:1.0];
    v15 = 0;
    goto LABEL_23;
  }

  if (type == 1)
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

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  textCopy = text;
  text = [viewCopy text];
  v12 = [text stringByReplacingCharactersInRange:location withString:{length, textCopy}];

  if ([v12 length] && !CEMStringIsSingleEmoji())
  {
    if (!CEMStringIsSingleEmoji())
    {
      v16 = 0;
      goto LABEL_6;
    }

    [viewCopy setText:textCopy];
    memo = [(PKMemoItem *)self->_item memo];
    [memo setEmoji:textCopy];

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
    memo2 = [(PKMemoItem *)self->_item memo];
    [memo2 setEmoji:v12];

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