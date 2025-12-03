@interface PXCaptionHashtagsEntryView
- (BOOL)_needsUpdateSize:(BOOL *)size;
- (BOOL)_shouldShowMoreButton;
- (BOOL)isEditing;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (BOOL)textViewShouldEndEditing:(id)editing;
- (NSString)text;
- (PXCaptionHashtagsEntryView)initWithFrame:(CGRect)frame;
- (PXCaptionHashtagsEntryViewDelegate)delegate;
- (UIEdgeInsets)textContainerInsets;
- (double)_ellipsisWidth;
- (double)_maxHeight;
- (double)_preferredHeight:(BOOL *)height forWidth:(double)width;
- (double)minimumHeightInEdit;
- (double)preferredHeightForWidth:(double)width;
- (int64_t)_currentMaxLines;
- (void)_addLinkAttributeToHashtagsInTextView;
- (void)_handleEscape:(id)escape;
- (void)_hideShowButton;
- (void)_removeLinkAttributeInTextView;
- (void)_updateFonts;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)exitEditing;
- (void)moreButtonTapped:(id)tapped;
- (void)resetToOriginalText;
- (void)setFont:(id)font;
- (void)setOriginalText:(id)text;
- (void)setSpec:(id)spec;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation PXCaptionHashtagsEntryView

- (PXCaptionHashtagsEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  textView = [(PXCaptionHashtagsEntryView *)self textView];

  if (textView == editingCopy)
  {
    textView2 = [(PXCaptionHashtagsEntryView *)self textView];
    [textView2 setEditable:0];

    text = [(PXCaptionHashtagsEntryView *)self text];
    if (text)
    {
      v8 = text;
      text2 = [(PXCaptionHashtagsEntryView *)self text];
      v10 = [text2 length];

      if (v10)
      {
        v11 = PXLocalizedStringFromTable(@"PXWidgetCaptionAndHashtagsAXLabel", @"PhotosUICore");
        textView3 = [(PXCaptionHashtagsEntryView *)self textView];
        [textView3 setAccessibilityLabel:v11];
      }
    }

    [(PXCaptionHashtagsEntryView *)self _addLinkAttributeToHashtagsInTextView];
    delegate = [(PXCaptionHashtagsEntryView *)self delegate];
    [delegate captionHashtagsEntryViewDidEndEditing:self];
  }
}

- (void)textViewDidBeginEditing:(id)editing
{
  delegate = [(PXCaptionHashtagsEntryView *)self delegate];
  [delegate captionHashtagsEntryViewDidBeginEditing:self];

  [(PXCaptionHashtagsEntryView *)self _hideShowButton];
  [(PXCaptionHashtagsEntryView *)self _removeLinkAttributeInTextView];
  v5 = MEMORY[0x1E695DF90];
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  typingAttributes = [textView typingAttributes];
  v8 = [v5 dictionaryWithDictionary:typingAttributes];

  [v8 removeObjectForKey:*MEMORY[0x1E69DB670]];
  textView2 = [(PXCaptionHashtagsEntryView *)self textView];
  [textView2 setTypingAttributes:v8];

  v11 = 1;
  [(PXCaptionHashtagsEntryView *)self _preferredHeight:&v11];
  LOBYTE(typingAttributes) = v11;
  textView3 = [(PXCaptionHashtagsEntryView *)self textView];
  [textView3 setScrollEnabled:(typingAttributes & 1) == 0];
}

- (BOOL)textViewShouldEndEditing:(id)editing
{
  selfCopy = self;
  delegate = [(PXCaptionHashtagsEntryView *)self delegate];
  LOBYTE(selfCopy) = [delegate captionHashtagsEntryViewShouldEndEditing:selfCopy];

  return selfCopy;
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(PXCaptionHashtagsEntryView *)self delegate];
  if (delegate && (v6 = delegate, -[PXCaptionHashtagsEntryView delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 captionHashtagsEntryViewShouldBeginEditing:self], v7, v6, !v8))
  {
    v14 = 0;
  }

  else
  {
    text = [editingCopy text];
    originalText = [(PXCaptionHashtagsEntryView *)self originalText];
    v11 = [text isEqualToString:originalText];

    if ((v11 & 1) == 0)
    {
      originalText2 = [(PXCaptionHashtagsEntryView *)self originalText];
      [editingCopy setText:originalText2];
    }

    delegate2 = [(PXCaptionHashtagsEntryView *)self delegate];
    [delegate2 captionHashtagsEntryViewWillBeginEditing:self];

    v14 = 1;
  }

  return v14;
}

- (void)textViewDidChange:(id)change
{
  if ([(PXCaptionHashtagsEntryView *)self isEditing])
  {
    v8 = 1;
    if ([(PXCaptionHashtagsEntryView *)self _needsUpdateSize:&v8])
    {
      delegate = [(PXCaptionHashtagsEntryView *)self delegate];
      [delegate captionHashtagsEntryViewPreferredHeightDidChange:self];
    }

    v5 = v8;
    textView = [(PXCaptionHashtagsEntryView *)self textView];
    [textView setScrollEnabled:(v5 & 1) == 0];
  }

  else
  {
    [(PXCaptionHashtagsEntryView *)self _addLinkAttributeToHashtagsInTextView];
    delegate2 = [(PXCaptionHashtagsEntryView *)self delegate];
    [delegate2 captionHashtagsEntryViewDidEndEditing:self];
  }
}

- (void)_hideShowButton
{
  [(PXCaptionHashtagsEntryView *)self setShowAllText:1];
  moreButton = [(PXCaptionHashtagsEntryView *)self moreButton];
  [moreButton setHidden:1];
}

- (BOOL)_needsUpdateSize:(BOOL *)size
{
  [(PXCaptionHashtagsEntryView *)self _preferredHeight:size];
  [(PXCaptionHashtagsEntryView *)self frame];
  traitCollection = [(PXCaptionHashtagsEntryView *)self traitCollection];
  [traitCollection displayScale];

  PXFloatRoundToPixel();
}

- (BOOL)_shouldShowMoreButton
{
  if ([(PXCaptionHashtagsEntryView *)self showAllText])
  {
    v3 = 0;
  }

  else
  {
    v5 = 0;
    [(PXCaptionHashtagsEntryView *)self _preferredHeight:&v5];
    v3 = v5 ^ 1;
  }

  return v3 & 1;
}

- (double)_preferredHeight:(BOOL *)height forWidth:(double)width
{
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  if (![(PXCaptionHashtagsEntryView *)self isEditing])
  {
    text = [textView text];
    originalText = [(PXCaptionHashtagsEntryView *)self originalText];
    v8 = [text isEqualToString:originalText];

    if ((v8 & 1) == 0)
    {
      [textView text];
      objc_claimAutoreleasedReturnValue();
      originalText2 = [(PXCaptionHashtagsEntryView *)self originalText];
      [textView setText:originalText2];
    }
  }

  traitCollection = [(PXCaptionHashtagsEntryView *)self traitCollection];
  [traitCollection displayScale];

  [textView textContainerInset];
  [textView font];
  [objc_claimAutoreleasedReturnValue() lineHeight];
  PXFloatCeilingToPixel();
}

- (double)_maxHeight
{
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  [textView textContainerInset];
  v5 = v4;
  v7 = v6;

  v8 = v5 + v7;
  textView2 = [(PXCaptionHashtagsEntryView *)self textView];
  font = [textView2 font];
  [font lineHeight];
  v12 = v11;

  return v8 + v12 * [(PXCaptionHashtagsEntryView *)self _currentMaxLines];
}

- (int64_t)_currentMaxLines
{
  traitCollection = [(PXCaptionHashtagsEntryView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)_removeLinkAttributeInTextView
{
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  textStorage = [textView textStorage];

  v3 = [textStorage length];
  [textStorage removeAttribute:*MEMORY[0x1E69DB670] range:{0, v3}];
}

- (void)_addLinkAttributeToHashtagsInTextView
{
  v3 = +[PXPhotosDetailsSettings sharedInstance];
  captionWidgetEnableHashtags = [v3 captionWidgetEnableHashtags];

  if (captionWidgetEnableHashtags)
  {
    textView = [(PXCaptionHashtagsEntryView *)self textView];
    text = [textView text];

    if ([text length])
    {
      textView2 = [(PXCaptionHashtagsEntryView *)self textView];
      textStorage = [textView2 textStorage];

      [textStorage removeAttribute:*MEMORY[0x1E69DB670] range:{0, objc_msgSend(textStorage, "length")}];
      v9 = PLParseHashtags();
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __67__PXCaptionHashtagsEntryView__addLinkAttributeToHashtagsInTextView__block_invoke;
      v11[3] = &unk_1E773AEE0;
      v12 = textStorage;
      v10 = textStorage;
      [v9 enumerateKeysAndObjectsUsingBlock:v11];
      self->_numberOfHashtagsInText = [v9 count];
    }
  }
}

void __67__PXCaptionHashtagsEntryView__addLinkAttributeToHashtagsInTextView__block_invoke(uint64_t a1, NSString *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = NSRangeFromString(a2);
  v7 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v8 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v7];

  if ([v8 length])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos-navigation://search?hashtag=%@", v8];
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    v11 = v10;
    if (v10)
    {
      v12 = *(a1 + 32);
      v14 = *MEMORY[0x1E69DB670];
      v15[0] = v10;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [v12 addAttributes:v13 range:{v6.location, v6.length}];
    }
  }
}

- (void)_updateFonts
{
  v20[2] = *MEMORY[0x1E69E9840];
  spec = [(PXCaptionHashtagsEntryView *)self spec];
  userInterfaceIdiom = [spec userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    MEMORY[0x1A590C420](8, 0x8000, 3, *MEMORY[0x1E69DB970]);
  }

  else
  {
    MEMORY[0x1A590C430](8, 0x8000, 7);
  }
  v5 = ;
  [(PXCaptionHashtagsEntryView *)self setFont:v5];
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  [textView setFont:v5];

  moreButton = [(PXCaptionHashtagsEntryView *)self moreButton];
  titleLabel = [moreButton titleLabel];
  [titleLabel setFont:v5];

  spec2 = [(PXCaptionHashtagsEntryView *)self spec];
  sizeClass = [spec2 sizeClass];

  if (sizeClass == 2)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }
  v11 = ;
  v12 = v11;
  if (v5)
  {
    v13 = *MEMORY[0x1E69DB650];
    v19[0] = *MEMORY[0x1E69DB648];
    v19[1] = v13;
    v20[0] = v5;
    v20[1] = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = PXLocalizedStringFromTable(@"PXWidgetCaptionAndHashtagsPlaceholderTitle", @"PhotosUICore");
  v17 = [v15 initWithString:v16 attributes:v14];
  textView2 = [(PXCaptionHashtagsEntryView *)self textView];
  [textView2 setAttributedPlaceholder:v17];
}

- (double)_ellipsisWidth
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(PXCaptionHashtagsEntryView *)self cachedEllipsisWidth];
  v4 = v3;
  [(PXCaptionHashtagsEntryView *)self cachedEllipsisWidth];
  if (v5 == 0.0)
  {
    v10 = *MEMORY[0x1E69DB648];
    font = [(PXCaptionHashtagsEntryView *)self font];
    v11[0] = font;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [@"…" sizeWithAttributes:v7];
    v4 = v8;

    [(PXCaptionHashtagsEntryView *)self setCachedEllipsisWidth:v4];
  }

  return v4;
}

- (void)_handleEscape:(id)escape
{
  [(PXCaptionHashtagsEntryView *)self resetToOriginalText];

  [(PXCaptionHashtagsEntryView *)self exitEditing];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  v6 = fontCopy;
  if (self->_font != fontCopy)
  {
    v8 = fontCopy;
    v7 = [(UIFont *)fontCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_font, font);
      [(PXCaptionHashtagsEntryView *)self setCachedEllipsisWidth:0.0];
      v6 = v8;
    }
  }
}

- (BOOL)isEditing
{
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  isEditing = [textView isEditing];

  return isEditing;
}

- (void)moreButtonTapped:(id)tapped
{
  [(PXCaptionHashtagsEntryView *)self _hideShowButton];
  delegate = [(PXCaptionHashtagsEntryView *)self delegate];
  [delegate captionHashtagsEntryViewRequestFocus:self];

  delegate2 = [(PXCaptionHashtagsEntryView *)self delegate];
  [delegate2 captionHashtagsEntryViewPreferredHeightDidChange:self];
}

- (void)resetToOriginalText
{
  originalText = [(PXCaptionHashtagsEntryView *)self originalText];
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  [textView setText:originalText];

  [(PXCaptionHashtagsEntryView *)self _addLinkAttributeToHashtagsInTextView];
}

- (void)exitEditing
{
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  [textView resignFirstResponder];
}

uint64_t __44__PXCaptionHashtagsEntryView_layoutSubviews__block_invoke_332(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  v14 = a3;
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 24);
  if (v16 == *(a1 + 88))
  {
    v52.origin.x = a4;
    v52.origin.y = a5;
    v52.size.width = a6;
    v52.size.height = a7;
    *(*(*(a1 + 64) + 8) + 24) = CGRectGetMaxX(v52);
    v53.origin.x = a4;
    v53.origin.y = a5;
    v53.size.width = a6;
    v53.size.height = a7;
    *(*(*(a1 + 72) + 8) + 24) = CGRectGetMinY(v53);
    v17 = *(a1 + 32);
    v18 = [*(a1 + 40) location];
    v19 = [v13 endLocation];
    v20 = [v17 offsetFromLocation:v18 toLocation:v19];

    v21 = [v13 endLocation];
    v22 = [*(a1 + 32) locationFromLocation:v21 withOffset:-1];
    if (v22)
    {
      v43 = v14;
      v44 = v13;
      v23 = MEMORY[0x1E695F050];
      while (1)
      {
        v46 = 0;
        v47 = &v46;
        v48 = 0x4010000000;
        v49 = &unk_1A561E057;
        v24 = v23[1];
        v50 = *v23;
        v51 = v24;
        v25 = [objc_alloc(MEMORY[0x1E69DB848]) initWithLocation:v22 endLocation:v21];
        v26 = *(a1 + 32);
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __44__PXCaptionHashtagsEntryView_layoutSubviews__block_invoke_2;
        v45[3] = &unk_1E773AE90;
        v45[4] = &v46;
        [v26 enumerateTextSegmentsInRange:v25 type:0 options:0 usingBlock:v45];
        if (CGRectIsNull(v47[1]))
        {
          break;
        }

        x = v47[1].origin.x;
        y = v47[1].origin.y;
        width = v47[1].size.width;
        height = v47[1].size.height;
        if (*(a1 + 104) == 1)
        {
          if (CGRectGetMaxX(*&x) <= *(a1 + 96))
          {
            break;
          }

          v31 = CGRectGetWidth(v47[1]);
          v32 = *(*(a1 + 64) + 8);
          v33 = *(v32 + 24) - v31;
        }

        else
        {
          if (CGRectGetMinX(*&x) >= *(a1 + 96))
          {
            break;
          }

          v34 = CGRectGetWidth(v47[1]);
          v32 = *(*(a1 + 64) + 8);
          v33 = v34 + *(v32 + 24);
        }

        *(v32 + 24) = v33;
        v35 = v22;

        v22 = [*(a1 + 32) locationFromLocation:v35 withOffset:-1];
        v21 = v35;

        if (v22)
        {
          v36 = [v44 location];
          v37 = [v22 isEqual:v36];

          if (v37)
          {

            v22 = 0;
          }
        }

        _Block_object_dispose(&v46, 8);
        --v20;
        if (!v22)
        {
          goto LABEL_16;
        }
      }

      v20 -= CGRectGetWidth(v47[1]) == 0.0;

      _Block_object_dispose(&v46, 8);
LABEL_16:
      v13 = v44;
    }

    v38 = [*(a1 + 48) substringWithRange:{0, v20, v43}];
    if ([v38 length])
    {
      v39 = [v38 stringByAppendingString:@"…"];
      v40 = *(*(a1 + 80) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;
    }

    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 24);
  }

  *(v15 + 24) = v16 + 1;

  return 1;
}

uint64_t __44__PXCaptionHashtagsEntryView_layoutSubviews__block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*(a1 + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return 0;
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v8 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    textView = [(PXCaptionHashtagsEntryView *)self textView];
    [textView setBackgroundColor:clearColor];

    [(PXCaptionHashtagsEntryView *)self _updateFonts];
    specCopy = v8;
  }
}

- (void)setOriginalText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (self->_originalText != textCopy)
  {
    v13 = textCopy;
    v6 = [(NSString *)textCopy isEqualToString:?];
    v5 = v13;
    if (!v6)
    {
      v7 = [(NSString *)v13 copy];
      originalText = self->_originalText;
      self->_originalText = v7;

      if (v13 && [(NSString *)v13 length])
      {
        v9 = PXLocalizedStringFromTable(@"PXWidgetCaptionAndHashtagsAXLabel", @"PhotosUICore");
        [(_PXUITextView *)self->_textView setAccessibilityLabel:v9];
      }

      textView = [(PXCaptionHashtagsEntryView *)self textView];
      text = [textView text];
      if ([text isEqualToString:self->_originalText])
      {
      }

      else
      {
        isEditing = [(PXCaptionHashtagsEntryView *)self isEditing];

        v5 = v13;
        if (isEditing)
        {
          goto LABEL_11;
        }

        [(PXCaptionHashtagsEntryView *)self resetToOriginalText];
      }

      v5 = v13;
    }
  }

LABEL_11:
}

- (NSString)text
{
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  text = [textView text];
  v4 = text;
  if (text)
  {
    v5 = text;
  }

  else
  {
    v5 = &stru_1F1741150;
  }

  v6 = v5;

  return &v5->isa;
}

- (UIEdgeInsets)textContainerInsets
{
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  [textView textContainerInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)minimumHeightInEdit
{
  textView = [(PXCaptionHashtagsEntryView *)self textView];
  traitCollection = [(PXCaptionHashtagsEntryView *)self traitCollection];
  [traitCollection displayScale];

  [textView textContainerInset];
  [textView font];
  [objc_claimAutoreleasedReturnValue() lineHeight];
  PXFloatCeilingToPixel();
}

- (double)preferredHeightForWidth:(double)width
{
  widthCopy = width;
  if (width == 0.0)
  {
    textView = [(PXCaptionHashtagsEntryView *)self textView];
    [textView frame];
    widthCopy = v6;
  }

  textView2 = [(PXCaptionHashtagsEntryView *)self textView];
  textContainer = [textView2 textContainer];
  [textContainer lineFragmentPadding];
  v10 = v9;

  [(PXCaptionHashtagsEntryView *)self _preferredHeight:0 forWidth:widthCopy + v10 * 2.0];
  return result;
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  [(PXCaptionHashtagsEntryView *)self _updateFonts];
  delegate = [(PXCaptionHashtagsEntryView *)self delegate];
  [delegate captionHashtagsEntryViewPreferredHeightDidChange:self];
}

- (PXCaptionHashtagsEntryView)initWithFrame:(CGRect)frame
{
  v36[1] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = PXCaptionHashtagsEntryView;
  v3 = [(PXCaptionHashtagsEntryView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[PXPhotosDetailsSettings sharedInstance];
    captionWidgetEnableHashtags = [v4 captionWidgetEnableHashtags];

    v6 = [_PXUITextView alloc];
    v7 = [(_PXUITextView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    textView = v3->_textView;
    v3->_textView = v7;

    [(_PXUITextView *)v3->_textView setDelegate:v3];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(_PXUITextView *)v3->_textView setTextColor:labelColor];

    v35 = *MEMORY[0x1E69DB650];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v36[0] = systemBlueColor;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [(_PXUITextView *)v3->_textView setLinkTextAttributes:v11];

    if (captionWidgetEnableHashtags)
    {
      v12 = 9;
    }

    else
    {
      v12 = 0;
    }

    [(_PXUITextView *)v3->_textView setKeyboardType:v12];
    [(_PXUITextView *)v3->_textView setEditable:0];
    [(_PXUITextView *)v3->_textView setDataDetectorTypes:2];
    [(_PXUITextView *)v3->_textView setScrollEnabled:0];
    [(_PXUITextView *)v3->_textView setShowsHorizontalScrollIndicator:0];
    [(_PXUITextView *)v3->_textView setShowsVerticalScrollIndicator:0];
    [(_PXUITextView *)v3->_textView textContainerInset];
    v30 = v13;
    v31 = v14;
    v32 = v15;
    v33 = v16;
    font = [(_PXUITextView *)v3->_textView font];
    CTFontGetLanguageAwareOutsets();

    [(_PXUITextView *)v3->_textView setTextContainerInset:v30, v31, v32, v33];
    v18 = v3->_textView;
    v19 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__handleEscape_];
    [(_PXUITextView *)v18 addKeyCommand:v19];

    v20 = v3->_textView;
    v21 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0x100000 action:sel__handleReturn_];
    [(_PXUITextView *)v20 addKeyCommand:v21];

    [(PXCaptionHashtagsEntryView *)v3 addSubview:v3->_textView];
    v22 = [MEMORY[0x1E69DC738] buttonWithType:0];
    moreButton = v3->_moreButton;
    v3->_moreButton = v22;

    v24 = v3->_moreButton;
    v25 = PXLocalizedStringFromTable(@"PXWidgetCaptionAndHashtagsMoreTitle", @"PhotosUICore");
    [(UIButton *)v24 setTitle:v25 forState:0];

    v26 = v3->_moreButton;
    systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIButton *)v26 setTitleColor:systemBlueColor2 forState:0];

    [(UIButton *)v3->_moreButton addTarget:v3 action:sel_moreButtonTapped_ forControlEvents:64];
    [(PXCaptionHashtagsEntryView *)v3 insertSubview:v3->_moreButton aboveSubview:v3->_textView];
    [(PXCaptionHashtagsEntryView *)v3 _updateFonts];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

@end