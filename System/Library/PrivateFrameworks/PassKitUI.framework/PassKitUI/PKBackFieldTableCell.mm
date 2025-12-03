@interface PKBackFieldTableCell
- (BOOL)containsURL;
- (CGRect)_textBounds;
- (CGSize)_computeSizeWithBounds:(CGRect)bounds shouldLayOut:(BOOL)out;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKBackFieldTableCell)initWithBridgeStyle:(BOOL)style reuseIdentifier:(id)identifier;
- (id)_allURLsFromAttributedString:(id)string;
- (id)_linkColor;
- (id)_linkTextAttributes;
- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_setUpTitleTextViewAttributes;
- (void)_setUpValueTextViewAttributes;
- (void)layoutSubviews;
- (void)openFirstURL;
- (void)setField:(id)field;
- (void)setShowLinks:(BOOL)links;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKBackFieldTableCell

- (PKBackFieldTableCell)initWithBridgeStyle:(BOOL)style reuseIdentifier:(id)identifier
{
  v5 = [(PKBackFieldTableCell *)self initWithStyle:0 reuseIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    v5->_useBridgeStyle = style;
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    titleTextView = v6->_titleTextView;
    v6->_titleTextView = v11;

    textContainer = [(UITextView *)v6->_titleTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    v14 = *MEMORY[0x1E69DDCE0];
    v15 = *(MEMORY[0x1E69DDCE0] + 8);
    v16 = *(MEMORY[0x1E69DDCE0] + 16);
    v17 = *(MEMORY[0x1E69DDCE0] + 24);
    [(UITextView *)v6->_titleTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], v15, v16, v17];
    [(UITextView *)v6->_titleTextView setDelegate:v6];
    contentView = [(PKBackFieldTableCell *)v6 contentView];
    [contentView addSubview:v6->_titleTextView];

    v19 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{v7, v8, v9, v10}];
    valueTextView = v6->_valueTextView;
    v6->_valueTextView = v19;

    textContainer2 = [(UITextView *)v6->_valueTextView textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    [(UITextView *)v6->_valueTextView setTextContainerInset:v14, v15, v16, v17];
    [(UITextView *)v6->_valueTextView setDelegate:v6];
    contentView2 = [(PKBackFieldTableCell *)v6 contentView];
    [contentView2 addSubview:v6->_valueTextView];
  }

  return v6;
}

- (BOOL)containsURL
{
  link = [(PKPassField *)self->_field link];
  if (link)
  {
    v4 = 1;
  }

  else
  {
    attributedText = [(UITextView *)self->_valueTextView attributedText];
    v6 = [(PKBackFieldTableCell *)self _allURLsFromAttributedString:attributedText];
    v4 = [v6 count] != 0;
  }

  return v4;
}

- (void)_setUpTitleTextViewAttributes
{
  v7 = self->_titleTextView;
  label = [(PKPassField *)self->_field label];
  [(UITextView *)v7 setText:label];

  if ([(PKPassField *)self->_field cellStyle]== 3)
  {
    v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UITextView *)v7 setFont:v4];

    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UITextView *)v7 setFont:v5];

    [MEMORY[0x1E69DC888] labelColor];
  }
  v6 = ;
  [(UITextView *)v7 setTextColor:v6];

  [(UITextView *)v7 setTextAlignment:4];
  [(UITextView *)v7 setSelectable:0];
  [(UITextView *)v7 setUserInteractionEnabled:0];
}

- (void)_setUpValueTextViewAttributes
{
  v3 = self->_valueTextView;
  v14 = v3;
  if (self->_showLinks)
  {
    [(UITextView *)v3 setDataDetectorTypes:[(PKPassField *)self->_field dataDetectorTypes]];
  }

  else
  {
    webView = [(UITextView *)v3 webView];
    [webView setDataDetectorTypes:0];
    [webView setAllowsDataDetectorsSheet:0];
    [webView setAllowsImageSheet:0];
    [webView setAllowsLinkSheet:0];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(PKPassField *)self->_field cellStyle]== 3)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v6 = ;
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  link = [(PKPassField *)self->_field link];
  value = [(PKPassField *)self->_field value];
  v10 = value;
  if (link && [value length])
  {
    [v5 setObject:link forKeyedSubscript:*MEMORY[0x1E69DB670]];
    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v5];
  }

  else
  {
    v11 = PKAttributedStringByParsingLinksInString();
  }

  v12 = v11;
  [(UITextView *)v14 setAttributedText:v11];

  [(UITextView *)v14 setTextAlignment:4];
  _linkTextAttributes = [(PKBackFieldTableCell *)self _linkTextAttributes];
  [(UITextView *)v14 setLinkTextAttributes:_linkTextAttributes];

  [(UITextView *)v14 setSelectable:self->_showLinks];
  [(UITextView *)v14 setUserInteractionEnabled:self->_showLinks];
}

- (void)setShowLinks:(BOOL)links
{
  if (self->_showLinks != links)
  {
    self->_showLinks = links;
    [(PKBackFieldTableCell *)self _setUpValueTextViewAttributes];

    [(PKBackFieldTableCell *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PKBackFieldTableCell;
  [(PKBackFieldTableCell *)&v4 traitCollectionDidChange:change];
  self->_cachedWidth = 0.0;
}

- (void)setField:(id)field
{
  fieldCopy = field;
  if (self->_field != fieldCopy)
  {
    v7 = fieldCopy;
    objc_storeStrong(&self->_field, field);
    self->_cachedWidth = 0.0;
    [(PKBackFieldTableCell *)self _setUpTitleTextViewAttributes];
    [(PKBackFieldTableCell *)self _setUpValueTextViewAttributes];
    v6 = [(PKPassField *)v7 key];
    PKAccessibilityIDCellSet(self, v6);

    [(PKBackFieldTableCell *)self setNeedsLayout];
    fieldCopy = v7;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(PKBackFieldTableCell *)self _textBounds];
  if (self->_cachedWidth == v6)
  {
    computedHeight = self->_computedHeight;
  }

  else
  {
    self->_cachedWidth = v6;
    [(PKBackFieldTableCell *)self _computeSizeWithBounds:0 shouldLayOut:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
    width = v8;
  }

  v9 = width;
  result.height = computedHeight;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKBackFieldTableCell;
  [(PKBackFieldTableCell *)&v3 layoutSubviews];
  [(PKBackFieldTableCell *)self bounds];
  [(PKBackFieldTableCell *)self _computeSizeWithBounds:1 shouldLayOut:?];
}

- (CGSize)_computeSizeWithBounds:(CGRect)bounds shouldLayOut:(BOOL)out
{
  outCopy = out;
  width = bounds.size.width;
  [(PKBackFieldTableCell *)self _textBounds:bounds.origin.x];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  text = [(UITextView *)self->_titleTextView text];
  if ([text length])
  {
    text2 = [(UITextView *)self->_titleTextView text];
    v14 = text2;
    if (text2 == @" ")
    {
      v15 = 0;
    }

    else if (text2)
    {
      v15 = [(__CFString *)text2 isEqualToString:@" "]^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  text3 = [(UITextView *)self->_valueTextView text];
  v17 = [text3 length];

  if (v15)
  {
    [(UITextView *)self->_titleTextView sizeThatFits:v11, 1.79769313e308];
    v19 = v18;
    v21 = v20;
    if (v17)
    {
LABEL_11:
      [(UITextView *)self->_valueTextView sizeThatFits:v11, 1.79769313e308];
      v23 = v22;
      v25 = v24;
      goto LABEL_14;
    }
  }

  else
  {
    v19 = *MEMORY[0x1E695F060];
    v21 = *(MEMORY[0x1E695F060] + 8);
    if (v17)
    {
      goto LABEL_11;
    }
  }

  v23 = *MEMORY[0x1E695F060];
  v25 = *(MEMORY[0x1E695F060] + 8);
LABEL_14:
  [(PKBackFieldTableCell *)self _shouldReverseLayoutDirection];
  cellStyle = [(PKPassField *)self->_field cellStyle];
  if (cellStyle >= 3)
  {
    v34 = v25;
    v35 = v7;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v7 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v31 = 0.0;
    MaxY = 0.0;
    if (cellStyle == 3)
    {
      v7 = v35;
      if (v17)
      {
        v28 = v34;
        if (v15)
        {
          v30 = v9 + 7.0;
          v36 = v9 + 7.0;
          v37 = v11;
          MaxY = CGRectGetMaxY(*&v35);
          v38 = 58.0;
          v33 = v11;
          v31 = v7;
        }

        else
        {
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          v7 = v54;
          v30 = v55;
          v11 = v56;
          v28 = v57;
          v21 = 0.0;
          v38 = 48.0;
          v33 = 0.0;
          MaxY = 0.0;
          v31 = 0.0;
        }
      }

      else if (v15)
      {
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        v31 = v50;
        MaxY = v51;
        v33 = v52;
        v21 = v53;
        v38 = 48.0;
        v11 = 0.0;
        v30 = 0.0;
        v7 = 0.0;
      }

      else
      {
        v11 = 0.0;
        v38 = 48.0;
        v30 = 0.0;
        v7 = 0.0;
        v21 = 0.0;
        MaxY = 0.0;
      }

      self->_computedHeight = fmax(v38, v28 + 7.0 + v21 + 7.0);
      v29 = v11;
      v32 = v21;
      if (outCopy)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (v19 + v23 + 10.0 > v11)
    {
      v62.origin.y = v9 + 7.0;
      v62.origin.x = v7;
      MaxY = v9 + 7.0;
      v62.size.width = v11;
      v62.size.height = v21;
      v27 = CGRectGetMaxY(v62);
      self->_computedHeight = fmax(v21 + v25 + 7.0 + 7.0, 58.0);
      v28 = v25;
      v29 = v11;
      v30 = v27 + 2.0;
      v31 = v7;
      v32 = v21;
      v33 = v11;
      if (!outCopy)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    self->_computedHeight = fmax(fmax(v21, v25) + 7.0 + 7.0, 48.0);
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v58 = v39;
    MaxY = v40;
    v42 = v41;
    v32 = v43;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v31 = v58;
    v33 = v42;
    v7 = v44;
    v30 = v45;
    v29 = v46;
    v28 = v47;
  }

  if (outCopy)
  {
LABEL_24:
    [(UITextView *)self->_titleTextView setFrame:v31, MaxY, v33, v32];
    [(UITextView *)self->_valueTextView setFrame:v7, v30, v29, v28];
  }

LABEL_25:
  computedHeight = self->_computedHeight;
  v49 = width;
  result.height = computedHeight;
  result.width = v49;
  return result;
}

- (CGRect)_textBounds
{
  [(PKBackFieldTableCell *)self separatorInset];
  v4 = v3;
  if ([(PKBackFieldTableCell *)self _shouldReverseLayoutDirection])
  {
    v5 = 15.0;
  }

  else
  {
    v5 = v4;
  }

  contentView = [(PKBackFieldTableCell *)self contentView];
  [contentView bounds];
  v8 = v7;
  v10 = v5 + v9;
  v12 = v11 + 0.0;
  v14 = v13 - (v4 + 15.0);

  v15 = v10;
  v16 = v12;
  v17 = v14;
  v18 = v8;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)openFirstURL
{
  if (self->_showLinks)
  {
    if ([(PKBackFieldTableCell *)self containsURL])
    {
      v3 = MEMORY[0x1E695DFF8];
      link = [(PKPassField *)self->_field link];
      v5 = [v3 URLWithString:link];

      attributedText = [(UITextView *)self->_valueTextView attributedText];
      v7 = [(PKBackFieldTableCell *)self _allURLsFromAttributedString:attributedText];
      firstObject = [v7 firstObject];

      PKOpenURL();
    }
  }
}

void __36__PKBackFieldTableCell_openFirstURL__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && ([*(*(a1 + 32) + 1080) dataDetectorTypes] & 4) != 0)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:16 error:0];
    v4 = [*(*(a1 + 32) + 1080) attributedText];
    v5 = [v4 string];

    v6 = [*(*(a1 + 32) + 1080) attributedText];
    v7 = [v3 matchesInString:v5 options:0 range:{0, objc_msgSend(v6, "length")}];

    v8 = [v7 firstObject];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 range];
      v12 = [v5 substringWithRange:{v10, v11}];
      if ([v12 length])
      {
        v13 = MEMORY[0x1E695FBC8];
        v14 = v12;
        v15 = objc_alloc_init(v13);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __PKMapItemByParsingAddressInString_block_invoke;
        v16[3] = &unk_1E8016258;
        v17 = &__block_literal_global_68;
        [v15 geocodeAddressString:v14 completionHandler:v16];
      }
    }
  }
}

void __36__PKBackFieldTableCell_openFirstURL__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [MEMORY[0x1E696F270] urlForMapItem:a2 options:0];
    if (v2)
    {
      v3 = v2;
      if ([MEMORY[0x1E696F4A8] canHandleURL:v2])
      {
        [MEMORY[0x1E696F270] _openDefaultNavigationWithURL:v3 fromScene:0 completionHandler:0];
      }

      else
      {
        PKOpenURL();
      }

      v2 = v3;
    }
  }
}

- (id)_allURLsFromAttributedString:(id)string
{
  v3 = MEMORY[0x1E695DF70];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  v6 = *MEMORY[0x1E69DB670];
  v7 = [stringCopy length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PKBackFieldTableCell__allURLsFromAttributedString___block_invoke;
  v11[3] = &unk_1E80161E0;
  v12 = v5;
  v8 = v5;
  [stringCopy enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v11}];

  v9 = [v8 copy];

  return v9;
}

void __53__PKBackFieldTableCell__allURLsFromAttributedString___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [MEMORY[0x1E695DFF8] URLWithString:v4];
      if (v3)
      {
        [*(a1 + 32) addObject:v3];
      }
    }
  }
}

- (id)_linkColor
{
  if (self->_useBridgeStyle)
  {
    PKBridgeButtonTextColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] linkColor];
  }
  v2 = ;

  return v2;
}

- (id)_linkTextAttributes
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E69DB650];
  _linkColor = [(PKBackFieldTableCell *)self _linkColor];
  v5[1] = *MEMORY[0x1E69DB758];
  v6[0] = _linkColor;
  v6[1] = &unk_1F3CC70E8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu
{
  menuCopy = menu;
  link = [item link];
  v8 = PKIsURLHttpScheme();

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E69DD118] configurationWithMenu:menuCopy];
  }

  return v9;
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  actionCopy = action;
  link = [item link];
  v8 = link;
  if (!link)
  {
    v14 = actionCopy;
    goto LABEL_12;
  }

  absoluteString = [link absoluteString];
  v10 = [absoluteString hasPrefix:@"com.apple.Home-private://userLockSettings/"];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x1E699F960]];
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F918]];
    v12 = MEMORY[0x1E69DC628];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__PKBackFieldTableCell_textView_primaryActionForTextItem_defaultAction___block_invoke;
    v22[3] = &unk_1E8016230;
    v23 = v11;
    v24 = v8;
    v25 = 0;
    v13 = v11;
    v14 = [v12 actionWithTitle:@"Open in Home App" image:0 identifier:0 handler:v22];

    v15 = v23;
LABEL_10:

    goto LABEL_11;
  }

  scheme = [v8 scheme];
  v13 = scheme;
  if (scheme != @"x-apple-data-detectors")
  {
    if (!scheme || (v17 = [(__CFString *)scheme isEqualToString:@"x-apple-data-detectors"], v13, !v17))
    {
      v18 = MEMORY[0x1E69DC628];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __72__PKBackFieldTableCell_textView_primaryActionForTextItem_defaultAction___block_invoke_71;
      v20[3] = &unk_1E8016068;
      v21 = v8;
      v14 = [v18 actionWithTitle:@"Open Link" image:0 identifier:0 handler:v20];
      v15 = v21;
      goto LABEL_10;
    }
  }

  v14 = actionCopy;
LABEL_11:

LABEL_12:

  return v14;
}

void __72__PKBackFieldTableCell_textView_primaryActionForTextItem_defaultAction___block_invoke(uint64_t a1)
{
  v2 = SBSCreateOpenApplicationService();
  v3 = *MEMORY[0x1E69BB930];
  v4 = [MEMORY[0x1E699FB70] optionsWithDictionary:*(a1 + 32)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PKBackFieldTableCell_textView_primaryActionForTextItem_defaultAction___block_invoke_2;
  v5[3] = &unk_1E8016208;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v2 openApplication:v3 withOptions:v4 completion:v5];
}

void __72__PKBackFieldTableCell_textView_primaryActionForTextItem_defaultAction___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Attempted to open %@ at for %@, but got error: %@", &v10, 0x20u);
    }
  }
}

@end