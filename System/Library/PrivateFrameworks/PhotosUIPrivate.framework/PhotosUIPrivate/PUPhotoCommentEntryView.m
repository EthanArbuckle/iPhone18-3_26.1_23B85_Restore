@interface PUPhotoCommentEntryView
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (BOOL)textViewShouldEndEditing:(id)a3;
- (PUPhotoCommentEntryView)initWithFrame:(CGRect)a3;
- (PUPhotoCommentEntryViewDelegate)delegate;
- (double)preferredHeight;
- (id)trimmedText;
- (void)clearText;
- (void)layoutSubviews;
- (void)setText:(id)a3;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation PUPhotoCommentEntryView

- (PUPhotoCommentEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)textViewDidEndEditing:(id)a3
{
  [(UIButton *)self->_postButton setHidden:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained photoCommentEntryViewDidEndEditing:self];
}

- (void)textViewDidBeginEditing:(id)a3
{
  [(UIButton *)self->_postButton setHidden:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 photoCommentEntryViewDidBeginEditing:self];
  }
}

- (BOOL)textViewShouldEndEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 photoCommentEntryViewShouldEndEditing:self];

  return v7;
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained photoCommentEntryViewWillBeginEditing:self];

  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (IsAccessibilityCategory)
  {
    placeholderLabel = self->_placeholderLabel;
    [(UILabel *)placeholderLabel frame];
    v10 = v9;
    [(UILabel *)self->_placeholderLabel frame];
    v12 = v11;
    [(UITextView *)self->_textView frame];
    v14 = v13;
    [(UILabel *)self->_placeholderLabel frame];
    [(UILabel *)placeholderLabel setFrame:v10, v12, v14];
  }

  return 1;
}

- (void)textViewDidChange:(id)a3
{
  v10 = [(PUPhotoCommentEntryView *)self trimmedText];
  v4 = [v10 length] != 0;
  v5 = [(UITextView *)self->_textView hasText];
  [(UIButton *)self->_postButton setEnabled:v4];
  [(UILabel *)self->_placeholderLabel setHidden:v5];
  [(PUPhotoCommentEntryView *)self frame];
  v7 = v6;
  [(PUPhotoCommentEntryView *)self preferredHeight];
  if (v7 != v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained photoCommentEntryViewHeightDidChange:self];
  }
}

- (void)layoutSubviews
{
  [(PUPhotoCommentEntryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PUPhotoCommentEntryView semanticContentAttribute](self, "semanticContentAttribute")}];
  [(UITextView *)self->_textView textContainerInset];
  v39 = v12;
  [(UIButton *)self->_postButton frame];
  v14 = v13;
  v16 = v15;
  if (v11)
  {
    v17 = 15.0;
  }

  else
  {
    v17 = v8 - v13 + -15.0;
  }

  v40 = [(UIButton *)self->_postButton titleLabel];
  [v40 _lastLineBaseline];
  [(UIButton *)self->_postButton convertPoint:v40 fromView:0.0, v18];
  [(UIButton *)self->_postButton setFrame:v17, v10 - v16 + -22.0 + v16 - v19, v14, v16];
  [(UIButton *)self->_postButton layoutIfNeeded];
  v20 = v8 + -10.0 - v14 + -5.0 + -15.0;
  v21 = v10 + -1.0 + -6.0 + -3.0;
  if (v11)
  {
    v42.origin.x = v4;
    v42.origin.y = v6;
    v42.size.width = v8;
    v42.size.height = v10;
    v22 = CGRectGetMaxX(v42) - v20 + -10.0;
  }

  else
  {
    v22 = 10.0;
  }

  [(UITextView *)self->_textView setFrame:v22, 7.0, v20, v21];
  [(UILabel *)self->_placeholderLabel frame];
  v24 = v23;
  v26 = v25;
  [(UITextView *)self->_textView frame];
  v28 = v27;
  v30 = v29;
  if (v11)
  {
    v43.origin.y = 7.0;
    v43.origin.x = v22;
    v43.size.width = v20;
    v43.size.height = v21;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = v28;
    v44.origin.y = v30;
    v44.size.width = v24;
    v44.size.height = v26;
    v32 = MaxX - CGRectGetWidth(v44) + -5.0;
  }

  else
  {
    v32 = v27 + 5.0;
  }

  [(UILabel *)self->_placeholderLabel setFrame:v32, v39 + v30, v24, v26];
  v33 = [MEMORY[0x1E69DC668] sharedApplication];
  v34 = [v33 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v34);

  if (IsAccessibilityCategory)
  {
    postButton = self->_postButton;
    [(UIButton *)postButton center];
    v38 = v37;
    [(UILabel *)self->_placeholderLabel center];
    [(UIButton *)postButton setCenter:v38];
  }
}

- (id)trimmedText
{
  v2 = [(UITextView *)self->_textView text];
  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (void)setText:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(UITextView *)self->_textView setText:v4];
    [(UILabel *)self->_placeholderLabel setHidden:1];
    [(UIButton *)self->_postButton setEnabled:1];
  }
}

- (void)clearText
{
  [(UITextView *)self->_textView setText:0];
  [(UILabel *)self->_placeholderLabel setHidden:0];
  postButton = self->_postButton;

  [(UIButton *)postButton setEnabled:0];
}

- (double)preferredHeight
{
  v3 = [(UITextView *)self->_textView textLayoutManager];
  v4 = [v3 textContentManager];
  v5 = [v4 documentRange];

  [v3 ensureLayoutForRange:v5];
  [(UITextView *)self->_textView layoutIfNeeded];
  [(UITextView *)self->_textView contentSize];
  if (v6 >= 0.0)
  {
    v8 = v6 + 1.0 + 6.0 + 3.0;
    v7 = 44.0;
    if (v8 >= 44.0)
    {
      v9 = [MEMORY[0x1E69DC938] currentDevice];
      v10 = [v9 userInterfaceIdiom];

      if (v10 == 1)
      {
        v11 = 80.0;
      }

      else
      {
        v12 = [MEMORY[0x1E69DC668] sharedApplication];
        v13 = [v12 statusBarOrientation] - 1;

        if (v13 >= 2)
        {
          v11 = 40.0;
        }

        else
        {
          v11 = 60.0;
        }
      }

      [(UITextView *)self->_textView textContainerInset];
      v16 = v15 + v11 + v14 + 1.0 + 6.0 + 3.0;
      if (v8 <= v16)
      {
        v7 = v8;
      }

      else
      {
        v7 = v16;
      }
    }
  }

  else
  {
    v7 = 44.0;
  }

  return v7;
}

- (PUPhotoCommentEntryView)initWithFrame:(CGRect)a3
{
  v37.receiver = self;
  v37.super_class = PUPhotoCommentEntryView;
  v3 = [(PUPhotoCommentEntryView *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    postButton = v3->_postButton;
    v3->_postButton = v4;

    v6 = v3->_postButton;
    v7 = PLLocalizedFrameworkString();
    [(UIButton *)v6 setTitle:v7 forState:0];

    v8 = [(UIButton *)v3->_postButton titleLabel];
    v9 = [MEMORY[0x1E69BE1B8] sharedCache];
    v10 = [v9 commentSendButtonFont];
    [v8 setFont:v10];

    [(UIButton *)v3->_postButton sizeToFit];
    [(UIButton *)v3->_postButton setHidden:1];
    [(UIButton *)v3->_postButton layoutIfNeeded];
    v11 = objc_alloc(MEMORY[0x1E69DD168]);
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
    textView = v3->_textView;
    v3->_textView = v16;

    [(UITextView *)v3->_textView setDelegate:v3];
    v18 = v3->_textView;
    v19 = [MEMORY[0x1E69DC888] labelColor];
    [(UITextView *)v18 setTextColor:v19];

    v20 = v3->_textView;
    v21 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v20 setBackgroundColor:v21];

    v22 = v3->_textView;
    v23 = [MEMORY[0x1E69BE1B8] sharedCache];
    v24 = [v23 commentEntryFont];
    [(UITextView *)v22 setFont:v24];

    [(UITextView *)v3->_textView sizeToFit];
    v25 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
    placeholderLabel = v3->_placeholderLabel;
    v3->_placeholderLabel = v25;

    v27 = v3->_placeholderLabel;
    v28 = [MEMORY[0x1E69DC888] placeholderTextColor];
    [(UILabel *)v27 setTextColor:v28];

    v29 = v3->_placeholderLabel;
    v30 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v29 setBackgroundColor:v30];

    v31 = v3->_placeholderLabel;
    v32 = [MEMORY[0x1E69BE1B8] sharedCache];
    v33 = [v32 commentEntryFont];
    [(UILabel *)v31 setFont:v33];

    v34 = v3->_placeholderLabel;
    v35 = PLLocalizedFrameworkString();
    [(UILabel *)v34 setText:v35];

    [(UILabel *)v3->_placeholderLabel sizeToFit];
    [(PUPhotoCommentEntryView *)v3 addSubview:v3->_placeholderLabel];
    [(PUPhotoCommentEntryView *)v3 addSubview:v3->_textView];
    [(UITextView *)v3->_textView setScrollsToTop:0];
    [(PUPhotoCommentEntryView *)v3 addSubview:v3->_postButton];
    [(PUPhotoCommentEntryView *)v3 clearText];
  }

  return v3;
}

@end