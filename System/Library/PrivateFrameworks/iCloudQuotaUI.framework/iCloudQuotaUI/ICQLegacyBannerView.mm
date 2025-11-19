@interface ICQLegacyBannerView
+ (id)replaceWordsIn:(id)a3 with:(id)a4;
- (BOOL)_performActionWithICQLink:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (ICQLegacyBannerView)initWithFrame:(CGRect)a3;
- (ICQLegacyBannerView)initWithOffer:(id)a3;
- (ICQLegacyBannerViewDelegate)delegate;
- (NSDirectionalEdgeInsets)textMargins;
- (id)_getOffer;
- (id)_initWithFrame:(CGRect)a3 offer:(id)a4;
- (id)attributedText;
- (id)detailAttributedText;
- (id)detailMessageAttributes;
- (id)linkAttributes;
- (id)messageAttributes;
- (id)textParagraphStyle;
- (id)textParagraphStyleAttributes;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (id)titleAttributes;
- (int64_t)semanticContentAttribute;
- (int64_t)userInterfaceLayoutDirection;
- (void)_applyTextParagraphAttributes;
- (void)_applyTextStorageAttributes;
- (void)_configureManageStorageButtonWithICQLink:(id)a3;
- (void)_updateBannerViewConstraints;
- (void)setFont:(id)a3;
- (void)setLinkTextColor:(id)a3;
- (void)setLinkTextFont:(id)a3;
- (void)setOffer:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)setTextLineSpacing:(double)a3;
- (void)setTextMargins:(NSDirectionalEdgeInsets)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)updateBannerView;
- (void)updateConstraints;
@end

@implementation ICQLegacyBannerView

- (ICQLegacyBannerView)initWithFrame:(CGRect)a3
{
  v3 = [(ICQLegacyBannerView *)self _initWithFrame:0 offer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(ICQLegacyBannerView *)v3 _getOffer];
    [(ICQLegacyBannerView *)v4 setOffer:v5];
  }

  return v4;
}

- (ICQLegacyBannerView)initWithOffer:(id)a3
{
  v48[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQLegacyBannerView *)self _initWithFrame:v4 offer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "initializing Freshmint Banner View", buf, 2u);
    }

    [v5 setOffer:v4];
    v7 = [v5 offer];
    v8 = [v7 bannerSpecification];

    if ([v8 isDetailBannerInfoAvailable])
    {
      v9 = [v5 offer];
      v10 = [v9 bundleIdentifier];
      v11 = [v10 isEqualToString:@"com.apple.mobileslideshow"];

      if (v11)
      {
        v12 = [v5 layer];
        [v12 setCornerRadius:14.0];

        v13 = [MEMORY[0x277D75348] labelColor];
        v14 = *(v5 + 58);
        *(v5 + 58) = v13;

        v15 = [MEMORY[0x277D75348] secondaryLabelColor];
        v16 = *(v5 + 59);
        *(v5 + 59) = v15;

        v17 = [MEMORY[0x277D75348] systemBlueColor];
        v18 = *(v5 + 65);
        *(v5 + 65) = v17;

        v19 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
        v47 = *MEMORY[0x277D74380];
        v45 = *MEMORY[0x277D74430];
        v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
        v46 = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v48[0] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
        v23 = [v19 fontDescriptorByAddingAttributes:v22];

        v24 = [MEMORY[0x277D74300] fontWithDescriptor:v19 size:0.0];
        v25 = [MEMORY[0x277D74300] fontWithDescriptor:v23 size:0.0];
        v26 = [MEMORY[0x277D75520] defaultMetrics];
        v27 = [v26 scaledFontForFont:v25];
        v28 = *(v5 + 55);
        *(v5 + 55) = v27;

        v29 = [MEMORY[0x277D75520] defaultMetrics];
        v30 = [v29 scaledFontForFont:v24];
        v31 = *(v5 + 56);
        *(v5 + 56) = v30;

        v32 = [MEMORY[0x277D75520] defaultMetrics];
        v33 = [v32 scaledFontForFont:v24];
        v34 = *(v5 + 57);
        *(v5 + 57) = v33;

        *(v5 + 63) = 0x4000000000000000;
        __asm { FMOV            V0.2D, #12.0 }

        *(v5 + 552) = _Q0;
        *(v5 + 568) = _Q0;
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          [v5 updateBannerView];
        }

        else
        {
          v40 = _ICQGetLogSystem();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [ICQLegacyBannerView initWithOffer:v40];
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __37__ICQLegacyBannerView_initWithOffer___block_invoke;
          block[3] = &unk_27A65A820;
          v43 = v5;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }
  }

  return v5;
}

- (id)_initWithFrame:(CGRect)a3 offer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v44.receiver = self;
  v44.super_class = ICQLegacyBannerView;
  v10 = [(ICQLegacyBannerView *)&v44 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [MEMORY[0x277D75348] clearColor];
    [(ICQLegacyBannerView *)v10 setBackgroundColor:v11];

    v12 = *MEMORY[0x277D74418];
    v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
    font = v10->_font;
    v10->_font = v13;

    v15 = [MEMORY[0x277D75520] defaultMetrics];
    v16 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
    v17 = [v15 scaledFontForFont:v16];
    titleFont = v10->_titleFont;
    v10->_titleFont = v17;

    v19 = [MEMORY[0x277D75520] defaultMetrics];
    v20 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:v12];
    v21 = [v19 scaledFontForFont:v20];
    detailMessageFont = v10->_detailMessageFont;
    v10->_detailMessageFont = v21;

    v23 = [MEMORY[0x277D75520] defaultMetrics];
    v24 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:v12];
    v25 = [v23 scaledFontForFont:v24];
    linkMessageFont = v10->_linkMessageFont;
    v10->_linkMessageFont = v25;

    v27 = [MEMORY[0x277D75348] systemRedColor];
    titleColor = v10->_titleColor;
    v10->_titleColor = v27;

    v29 = [MEMORY[0x277D75348] labelColor];
    detailMessageColor = v10->_detailMessageColor;
    v10->_detailMessageColor = v29;

    v31 = [MEMORY[0x277D75348] labelColor];
    linkMessageColor = v10->_linkMessageColor;
    v10->_linkMessageColor = v31;

    v33 = [MEMORY[0x277D75348] labelColor];
    textColor = v10->_textColor;
    v10->_textColor = v33;

    v10->_textAlignment = 1;
    v10->_textLineSpacing = 1.5;
    v35 = [v9 bundleIdentifier];
    v36 = [v35 isEqualToString:@"com.apple.mobileslideshow"];

    v37 = 10.0;
    if (v36)
    {
      v37 = 12.0;
    }

    v38 = 5.0;
    if (v36)
    {
      v38 = 12.0;
    }

    v10->_textMargins.top = v38;
    v10->_textMargins.leading = 25.0;
    v10->_textMargins.bottom = v37;
    v10->_textMargins.trailing = 25.0;
    v39 = [_ICQTextView alloc];
    v40 = [(_ICQTextView *)v39 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    textView = v10->_textView;
    v10->_textView = v40;

    [(_ICQTextView *)v10->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = [MEMORY[0x277D75348] clearColor];
    [(_ICQTextView *)v10->_textView setBackgroundColor:v42];

    [(_ICQTextView *)v10->_textView setTextContainerInset:0.0, 0.0, 0.0, 0.0];
    [(_ICQTextView *)v10->_textView setDelegate:v10];
    [(ICQLegacyBannerView *)v10 addSubview:v10->_textView];
    [(ICQLegacyBannerView *)v10 _updateBannerViewConstraints];
  }

  return v10;
}

- (id)_getOffer
{
  v2 = [MEMORY[0x277D7F390] sharedOfferManager];
  v3 = [v2 currentOffer];

  return v3;
}

- (int64_t)semanticContentAttribute
{
  v2 = [(ICQLegacyBannerView *)self textView];
  v3 = [v2 semanticContentAttribute];

  return v3;
}

- (int64_t)userInterfaceLayoutDirection
{
  v3 = objc_opt_class();
  v4 = [(ICQLegacyBannerView *)self textView];
  v5 = [v3 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v4, "semanticContentAttribute")}];

  return v5;
}

- (void)updateConstraints
{
  [(ICQLegacyBannerView *)self _updateBannerViewConstraints];
  v3.receiver = self;
  v3.super_class = ICQLegacyBannerView;
  [(ICQLegacyBannerView *)&v3 updateConstraints];
}

- (void)_updateBannerViewConstraints
{
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_activeConstraints];
  v17 = [MEMORY[0x277CBEB18] array];
  v3 = [(_ICQTextView *)self->_textView topAnchor];
  v4 = [(ICQLegacyBannerView *)self topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:self->_textMargins.top];
  [v17 addObject:v5];

  v6 = [(_ICQTextView *)self->_textView leadingAnchor];
  v7 = [(ICQLegacyBannerView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:self->_textMargins.leading];
  [v17 addObject:v8];

  v9 = [(_ICQTextView *)self->_textView trailingAnchor];
  v10 = [(ICQLegacyBannerView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-self->_textMargins.trailing];
  [v17 addObject:v11];

  v12 = [(ICQLegacyBannerView *)self bottomAnchor];
  v13 = [(_ICQTextView *)self->_textView bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:self->_textMargins.bottom];
  [v17 addObject:v14];

  v15 = [v17 copy];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v15;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_activeConstraints];
}

- (id)textParagraphStyle
{
  v3 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v4 = [v3 mutableCopy];

  [v4 setAlignment:{-[ICQLegacyBannerView textAlignment](self, "textAlignment")}];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 languageCode];
  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"th"];

  if (v8)
  {
    [v4 setLineHeightMultiple:1.2];
  }

  else
  {
    [(ICQLegacyBannerView *)self textLineSpacing];
    [v4 setLineSpacing:?];
  }

  v9 = [v4 copy];

  return v9;
}

- (id)textParagraphStyleAttributes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D74118];
  v2 = [(ICQLegacyBannerView *)self textParagraphStyle];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)messageAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D740A8];
  v3 = [(ICQLegacyBannerView *)self font];
  v8[0] = v3;
  v7[1] = *MEMORY[0x277D740C0];
  v4 = [(ICQLegacyBannerView *)self textColor];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)titleAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D740A8];
  v3 = [(ICQLegacyBannerView *)self titleFont];
  v8[0] = v3;
  v7[1] = *MEMORY[0x277D740C0];
  v4 = [(ICQLegacyBannerView *)self titleColor];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)detailMessageAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D740A8];
  v3 = [(ICQLegacyBannerView *)self detailMessageFont];
  v8[0] = v3;
  v7[1] = *MEMORY[0x277D740C0];
  v4 = [(ICQLegacyBannerView *)self detailMessageColor];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)linkAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D740A8];
  v3 = [(ICQLegacyBannerView *)self linkMessageFont];
  v8[0] = v3;
  v7[1] = *MEMORY[0x277D740C0];
  v4 = [(ICQLegacyBannerView *)self linkMessageFont];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)_applyTextParagraphAttributes
{
  v3 = [(_ICQTextView *)self->_textView textStorage];
  [v3 beginEditing];

  v4 = [(_ICQTextView *)self->_textView textStorage];
  v5 = [(ICQLegacyBannerView *)self textParagraphStyleAttributes];
  v6 = [(_ICQTextView *)self->_textView textStorage];
  [v4 addAttributes:v5 range:{0, objc_msgSend(v6, "length")}];

  v7 = [(_ICQTextView *)self->_textView textStorage];
  [v7 endEditing];
}

- (void)_applyTextStorageAttributes
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICQLegacyBannerView *)self offer];
  v4 = [v3 bannerSpecification];
  v5 = [v4 isDetailBannerInfoAvailable];

  if ((v5 & 1) == 0)
  {
    v6 = [(_ICQTextView *)self->_textView textStorage];
    [v6 beginEditing];

    v7 = [(_ICQTextView *)self->_textView textStorage];
    v8 = [v7 length];

    v9 = [(_ICQTextView *)self->_textView textStorage];
    v10 = [(ICQLegacyBannerView *)self messageAttributes];
    [v9 addAttributes:v10 range:{0, v8}];

    v11 = [(ICQLegacyBannerView *)self linkTextFont];

    if (v11)
    {
      v20 = *MEMORY[0x277D740A8];
      v12 = [(ICQLegacyBannerView *)self linkTextFont];
      v21[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

      v14 = [(_ICQTextView *)self->_textView textStorage];
      v15 = *MEMORY[0x277D740E8];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __50__ICQLegacyBannerView__applyTextStorageAttributes__block_invoke;
      v18[3] = &unk_27A65BBF0;
      v18[4] = self;
      v19 = v13;
      v16 = v13;
      [v14 enumerateAttribute:v15 inRange:0 options:v8 usingBlock:{0, v18}];
    }

    v17 = [(_ICQTextView *)self->_textView textStorage];
    [v17 endEditing];
  }
}

void __50__ICQLegacyBannerView__applyTextStorageAttributes__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [*(*(a1 + 32) + 536) textStorage];
    [v7 addAttributes:*(a1 + 40) range:{a3, a4}];
  }
}

- (id)attributedText
{
  v3 = objc_opt_new();
  v4 = [(ICQLegacyBannerView *)self offer];
  v5 = [v4 bannerSpecification];

  v6 = [v5 linksFormat];
  v7 = [v6 length];

  if (v7)
  {
    v8 = MEMORY[0x277CCA898];
    v9 = [v5 linksFormat];
    v10 = [(ICQLegacyBannerView *)self messageAttributes];
    v11 = [v5 links];
    v12 = [v8 attributedStringWithFormat:v9 attributes:v10 links:v11];

    [v3 appendAttributedString:v12];
    goto LABEL_10;
  }

  v13 = [(ICQLegacyBannerView *)self offer];
  v14 = [v13 level];

  v15 = _ICQGetLogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      LOWORD(v21) = 0;
      v17 = "Banner view is missing banner specification";
      v18 = &v21;
LABEL_8:
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
    }
  }

  else if (v16)
  {
    *buf = 0;
    v17 = "Banner view should not be shown if level is sufficient";
    v18 = buf;
    goto LABEL_8;
  }

LABEL_10:
  v19 = [v3 copy];

  return v19;
}

+ (id)replaceWordsIn:(id)a3 with:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v10);
        v13 = [v6 objectForKey:v12];
        v5 = [v11 stringByReplacingOccurrencesOfString:v12 withString:v13];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)detailAttributedText
{
  v3 = objc_opt_new();
  v4 = [(ICQLegacyBannerView *)self offer];
  v5 = [v4 bannerSpecification];

  if (([v5 isDetailBannerInfoAvailable] & 1) == 0)
  {
    v39 = [(ICQLegacyBannerView *)self attributedText];
    goto LABEL_19;
  }

  v6 = [(ICQLegacyBannerView *)self offer];
  v7 = [v6 deviceInfo];

  v8 = [v7 key];
  v9 = [v5 titleWithKey:v8];

  v10 = [v7 key];
  v11 = [v5 messageWithKey:v10];

  if ([v9 length])
  {
    v12 = objc_opt_class();
    v49 = v7;
    v13 = [v7 wordsToReplace];
    v14 = [v12 replaceWordsIn:v9 with:v13];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v14];

    v15 = MEMORY[0x277CCA898];
    v16 = [(ICQLegacyBannerView *)self titleAttributes];
    v17 = [v15 attributedStringWithFormat:v9 attributes:v16 links:0];

    v18 = [(ICQLegacyBannerView *)self offer];
    v19 = [v18 bundleIdentifier];
    v20 = [v19 isEqualToString:@"com.apple.mobileslideshow"];

    if (v20)
    {
      v48 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769D0]];
      v47 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle" withConfiguration:v48];
      v21 = [MEMORY[0x277D75348] systemOrangeColor];
      v22 = [v47 imageWithTintColor:v21];

      v23 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
      [v23 setImage:v22];
      v24 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v23];
      [v3 appendAttributedString:v24];
      v25 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
      [v3 appendAttributedString:v25];
    }

    [v3 appendAttributedString:v17];

    v7 = v49;
  }

  if ([v11 length])
  {
    v26 = objc_opt_class();
    v27 = [v7 wordsToReplace];
    v28 = [v26 replaceWordsIn:v11 with:v27];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v28];

    v29 = MEMORY[0x277CCA898];
    v30 = [(ICQLegacyBannerView *)self detailMessageAttributes];
    v31 = [v29 attributedStringWithFormat:v11 attributes:v30 links:0];

    [v3 appendAttributedString:v31];
  }

  v32 = [v5 linksFormat];
  v33 = [v32 length];

  if (!v33)
  {
    v40 = [(ICQLegacyBannerView *)self offer];
    v41 = [v40 level];

    v42 = _ICQGetLogSystem();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    if (v41)
    {
      if (v43)
      {
        v50 = 0;
        v44 = "Banner view is missing banner specification";
        v45 = &v50;
LABEL_16:
        _os_log_impl(&dword_275623000, v42, OS_LOG_TYPE_DEFAULT, v44, v45, 2u);
      }
    }

    else if (v43)
    {
      *buf = 0;
      v44 = "Banner view should not be shown if level is sufficient";
      v45 = buf;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v34 = MEMORY[0x277CCA898];
  v35 = [v5 linksFormat];
  v36 = [(ICQLegacyBannerView *)self linkAttributes];
  v37 = [v5 links];
  v38 = [v34 attributedStringWithFormat:v35 attributes:v36 links:v37];

  [v3 appendAttributedString:v38];
LABEL_18:
  v39 = [v3 copy];

LABEL_19:

  return v39;
}

- (void)setOffer:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_offer, a3);
  v5 = [(ICQLegacyBannerView *)self detailAttributedText];
  [(_ICQTextView *)self->_textView setAttributedText:v5];
  [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
  [(ICQLegacyBannerView *)self _applyTextParagraphAttributes];
  if (v5)
  {
    v6 = [v5 string];
    v7 = [v6 length];

    if (v7)
    {
      [(_ICQTextView *)self->_textView setIsAccessibilityElement:1];
      v8 = objc_alloc_init(MEMORY[0x277CCA898]);
      [(_ICQTextView *)self->_textView setAccessibilityAttributedLabel:v8];
    }
  }
}

- (void)setFont:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
  }

  if (self->_font != v4)
  {
    v5 = v4;
    objc_storeStrong(&self->_font, v4);
    [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
    v4 = v5;
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277D75348] labelColor];
  }

  if (self->_textColor != v4)
  {
    v5 = v4;
    objc_storeStrong(&self->_textColor, v4);
    [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
    v4 = v5;
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(ICQLegacyBannerView *)self _applyTextParagraphAttributes];
  }
}

- (void)setTextLineSpacing:(double)a3
{
  if (self->_textLineSpacing != a3)
  {
    self->_textLineSpacing = a3;
    [(ICQLegacyBannerView *)self _applyTextParagraphAttributes];
  }
}

- (void)setTextMargins:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textMargins.top, v3), vceqq_f64(*&self->_textMargins.bottom, v4)))) & 1) == 0)
  {
    self->_textMargins = a3;
    [(ICQLegacyBannerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setLinkTextFont:(id)a3
{
  v4 = a3;
  linkTextFont = self->_linkTextFont;
  if (linkTextFont != v4)
  {
    v9 = v4;
    v6 = [(UIFont *)linkTextFont isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIFont *)v9 copy];
      v8 = self->_linkTextFont;
      self->_linkTextFont = v7;

      [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
      v4 = v9;
    }
  }
}

- (void)setLinkTextColor:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQLegacyBannerView *)self offer];
  v6 = [v5 bannerSpecification];
  v7 = [v6 isDetailBannerInfoAvailable];

  if ((v7 & 1) == 0)
  {
    linkTextColor = self->_linkTextColor;
    if (linkTextColor != v4 && ([(UIColor *)linkTextColor isEqual:v4]& 1) == 0)
    {
      v9 = [(UIColor *)v4 copy];
      v10 = self->_linkTextColor;
      self->_linkTextColor = v9;

      v11 = self->_linkTextColor;
      if (v11)
      {
        v13 = *MEMORY[0x277D740C0];
        v14[0] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
        [(_ICQTextView *)self->_textView setLinkTextAttributes:v12];
      }

      else
      {
        [(_ICQTextView *)self->_textView setLinkTextAttributes:MEMORY[0x277CBEC10]];
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  p_textMargins = &self->_textMargins;
  [(_ICQTextView *)self->_textView sizeThatFits:a3.width - self->_textMargins.leading - self->_textMargins.trailing, 1.79769313e308];
  v6 = v5 + p_textMargins->top + p_textMargins->bottom;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = [a4 link];
  v7 = [v6 icqIndex];
  if (v7 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v8 = v7;
    v9 = [(ICQLegacyBannerView *)self offer];
    v10 = [v9 bannerSpecification];
    v11 = [v10 links];
    v12 = [v11 count];

    if (v8 < v12)
    {
      v13 = [(ICQLegacyBannerView *)self offer];
      v14 = [v13 bannerSpecification];
      v15 = [v14 links];
      v16 = [v15 objectAtIndexedSubscript:v8];

      if (![(ICQLegacyBannerView *)self _performActionWithICQLink:v16])
      {
        v17 = _ICQGetLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          [v16 action];
          v18 = _ICQStringForAction();
          v21 = 138543618;
          v22 = v18;
          v23 = 2114;
          v24 = objc_opt_class();
          v19 = v24;
          _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "ICQBanner: action %{public}@ not handled by delegate nor %{public}@", &v21, 0x16u);
        }
      }
    }
  }

  return 0;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v5 = a3;
  v3 = [v5 selectedRange];
  if (v3 | v4)
  {
    [v5 setSelectedRange:{0, 0}];
  }
}

- (void)_configureManageStorageButtonWithICQLink:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (manageStorageButton = self->_manageStorageButton) != 0)
  {
    v7 = [v4 text];
    [(UIButton *)manageStorageButton setTitle:v7 forState:0];

    v8 = MEMORY[0x277D750C8];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __64__ICQLegacyBannerView__configureManageStorageButtonWithICQLink___block_invoke;
    v14 = &unk_27A65BC18;
    v15 = self;
    v16 = v5;
    v9 = [v8 actionWithTitle:&stru_28844FC60 image:0 identifier:@"MANAGE_STORAGE" handler:&v11];
    [(UIButton *)self->_manageStorageButton addAction:v9 forControlEvents:64, v11, v12, v13, v14, v15];
  }

  else
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ICQLegacyBannerView *)&self->_manageStorageButton _configureManageStorageButtonWithICQLink:v5, v10];
    }
  }
}

void __64__ICQLegacyBannerView__configureManageStorageButtonWithICQLink___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _performActionWithICQLink:*(a1 + 40)];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = v1;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "ICQLink action completed with result: %d", v3, 8u);
  }
}

- (BOOL)_performActionWithICQLink:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Performing banner view action with icqLink: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained performActionWith:v4];

  return v7;
}

- (void)updateBannerView
{
  v3 = [MEMORY[0x277D75348] quaternarySystemFillColor];
  [(ICQLegacyBannerView *)self setBackgroundColor:v3];

  textView = self->_textView;
  v5 = [(ICQLegacyBannerView *)self detailAttributedText];
  [(_ICQTextView *)textView setAttributedText:v5];

  [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
  [(ICQLegacyBannerView *)self _applyTextParagraphAttributes];
  [(ICQLegacyBannerView *)self sizeToFit];
  v6 = [(ICQLegacyBannerView *)self superview];
  [v6 sizeToFit];

  v8 = [(ICQLegacyBannerView *)self superview];
  v7 = [v8 superview];
  [v7 sizeToFit];
}

- (ICQLegacyBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)textMargins
{
  top = self->_textMargins.top;
  leading = self->_textMargins.leading;
  bottom = self->_textMargins.bottom;
  trailing = self->_textMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)_configureManageStorageButtonWithICQLink:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Manage storage button (%@) and icqLink (%@) must not be nil.", &v4, 0x16u);
}

@end