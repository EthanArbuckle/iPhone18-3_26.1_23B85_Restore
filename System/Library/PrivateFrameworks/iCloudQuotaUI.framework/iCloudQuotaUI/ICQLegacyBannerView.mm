@interface ICQLegacyBannerView
+ (id)replaceWordsIn:(id)in with:(id)with;
- (BOOL)_performActionWithICQLink:(id)link;
- (CGSize)sizeThatFits:(CGSize)fits;
- (ICQLegacyBannerView)initWithFrame:(CGRect)frame;
- (ICQLegacyBannerView)initWithOffer:(id)offer;
- (ICQLegacyBannerViewDelegate)delegate;
- (NSDirectionalEdgeInsets)textMargins;
- (id)_getOffer;
- (id)_initWithFrame:(CGRect)frame offer:(id)offer;
- (id)attributedText;
- (id)detailAttributedText;
- (id)detailMessageAttributes;
- (id)linkAttributes;
- (id)messageAttributes;
- (id)textParagraphStyle;
- (id)textParagraphStyleAttributes;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (id)titleAttributes;
- (int64_t)semanticContentAttribute;
- (int64_t)userInterfaceLayoutDirection;
- (void)_applyTextParagraphAttributes;
- (void)_applyTextStorageAttributes;
- (void)_configureManageStorageButtonWithICQLink:(id)link;
- (void)_updateBannerViewConstraints;
- (void)setFont:(id)font;
- (void)setLinkTextColor:(id)color;
- (void)setLinkTextFont:(id)font;
- (void)setOffer:(id)offer;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
- (void)setTextLineSpacing:(double)spacing;
- (void)setTextMargins:(NSDirectionalEdgeInsets)margins;
- (void)textViewDidChangeSelection:(id)selection;
- (void)updateBannerView;
- (void)updateConstraints;
@end

@implementation ICQLegacyBannerView

- (ICQLegacyBannerView)initWithFrame:(CGRect)frame
{
  v3 = [(ICQLegacyBannerView *)self _initWithFrame:0 offer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _getOffer = [(ICQLegacyBannerView *)v3 _getOffer];
    [(ICQLegacyBannerView *)v4 setOffer:_getOffer];
  }

  return v4;
}

- (ICQLegacyBannerView)initWithOffer:(id)offer
{
  v48[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v5 = [(ICQLegacyBannerView *)self _initWithFrame:offerCopy offer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "initializing Freshmint Banner View", buf, 2u);
    }

    [v5 setOffer:offerCopy];
    offer = [v5 offer];
    bannerSpecification = [offer bannerSpecification];

    if ([bannerSpecification isDetailBannerInfoAvailable])
    {
      offer2 = [v5 offer];
      bundleIdentifier = [offer2 bundleIdentifier];
      v11 = [bundleIdentifier isEqualToString:@"com.apple.mobileslideshow"];

      if (v11)
      {
        layer = [v5 layer];
        [layer setCornerRadius:14.0];

        labelColor = [MEMORY[0x277D75348] labelColor];
        v14 = *(v5 + 58);
        *(v5 + 58) = labelColor;

        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        v16 = *(v5 + 59);
        *(v5 + 59) = secondaryLabelColor;

        systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
        v18 = *(v5 + 65);
        *(v5 + 65) = systemBlueColor;

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
        defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
        v27 = [defaultMetrics scaledFontForFont:v25];
        v28 = *(v5 + 55);
        *(v5 + 55) = v27;

        defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
        v30 = [defaultMetrics2 scaledFontForFont:v24];
        v31 = *(v5 + 56);
        *(v5 + 56) = v30;

        defaultMetrics3 = [MEMORY[0x277D75520] defaultMetrics];
        v33 = [defaultMetrics3 scaledFontForFont:v24];
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

- (id)_initWithFrame:(CGRect)frame offer:(id)offer
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  offerCopy = offer;
  v44.receiver = self;
  v44.super_class = ICQLegacyBannerView;
  height = [(ICQLegacyBannerView *)&v44 initWithFrame:x, y, width, height];
  if (height)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ICQLegacyBannerView *)height setBackgroundColor:clearColor];

    v12 = *MEMORY[0x277D74418];
    v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
    font = height->_font;
    height->_font = v13;

    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    v16 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
    v17 = [defaultMetrics scaledFontForFont:v16];
    titleFont = height->_titleFont;
    height->_titleFont = v17;

    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    v20 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:v12];
    v21 = [defaultMetrics2 scaledFontForFont:v20];
    detailMessageFont = height->_detailMessageFont;
    height->_detailMessageFont = v21;

    defaultMetrics3 = [MEMORY[0x277D75520] defaultMetrics];
    v24 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:v12];
    v25 = [defaultMetrics3 scaledFontForFont:v24];
    linkMessageFont = height->_linkMessageFont;
    height->_linkMessageFont = v25;

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    titleColor = height->_titleColor;
    height->_titleColor = systemRedColor;

    labelColor = [MEMORY[0x277D75348] labelColor];
    detailMessageColor = height->_detailMessageColor;
    height->_detailMessageColor = labelColor;

    labelColor2 = [MEMORY[0x277D75348] labelColor];
    linkMessageColor = height->_linkMessageColor;
    height->_linkMessageColor = labelColor2;

    labelColor3 = [MEMORY[0x277D75348] labelColor];
    textColor = height->_textColor;
    height->_textColor = labelColor3;

    height->_textAlignment = 1;
    height->_textLineSpacing = 1.5;
    bundleIdentifier = [offerCopy bundleIdentifier];
    v36 = [bundleIdentifier isEqualToString:@"com.apple.mobileslideshow"];

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

    height->_textMargins.top = v38;
    height->_textMargins.leading = 25.0;
    height->_textMargins.bottom = v37;
    height->_textMargins.trailing = 25.0;
    v39 = [_ICQTextView alloc];
    v40 = [(_ICQTextView *)v39 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    textView = height->_textView;
    height->_textView = v40;

    [(_ICQTextView *)height->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(_ICQTextView *)height->_textView setBackgroundColor:clearColor2];

    [(_ICQTextView *)height->_textView setTextContainerInset:0.0, 0.0, 0.0, 0.0];
    [(_ICQTextView *)height->_textView setDelegate:height];
    [(ICQLegacyBannerView *)height addSubview:height->_textView];
    [(ICQLegacyBannerView *)height _updateBannerViewConstraints];
  }

  return height;
}

- (id)_getOffer
{
  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  currentOffer = [mEMORY[0x277D7F390] currentOffer];

  return currentOffer;
}

- (int64_t)semanticContentAttribute
{
  textView = [(ICQLegacyBannerView *)self textView];
  semanticContentAttribute = [textView semanticContentAttribute];

  return semanticContentAttribute;
}

- (int64_t)userInterfaceLayoutDirection
{
  v3 = objc_opt_class();
  textView = [(ICQLegacyBannerView *)self textView];
  v5 = [v3 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(textView, "semanticContentAttribute")}];

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
  array = [MEMORY[0x277CBEB18] array];
  topAnchor = [(_ICQTextView *)self->_textView topAnchor];
  topAnchor2 = [(ICQLegacyBannerView *)self topAnchor];
  v5 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:self->_textMargins.top];
  [array addObject:v5];

  leadingAnchor = [(_ICQTextView *)self->_textView leadingAnchor];
  leadingAnchor2 = [(ICQLegacyBannerView *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:self->_textMargins.leading];
  [array addObject:v8];

  trailingAnchor = [(_ICQTextView *)self->_textView trailingAnchor];
  trailingAnchor2 = [(ICQLegacyBannerView *)self trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-self->_textMargins.trailing];
  [array addObject:v11];

  bottomAnchor = [(ICQLegacyBannerView *)self bottomAnchor];
  bottomAnchor2 = [(_ICQTextView *)self->_textView bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:self->_textMargins.bottom];
  [array addObject:v14];

  v15 = [array copy];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v15;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_activeConstraints];
}

- (id)textParagraphStyle
{
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v4 = [defaultParagraphStyle mutableCopy];

  [v4 setAlignment:{-[ICQLegacyBannerView textAlignment](self, "textAlignment")}];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  lowercaseString = [languageCode lowercaseString];
  v8 = [lowercaseString isEqualToString:@"th"];

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
  textParagraphStyle = [(ICQLegacyBannerView *)self textParagraphStyle];
  v6[0] = textParagraphStyle;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)messageAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D740A8];
  font = [(ICQLegacyBannerView *)self font];
  v8[0] = font;
  v7[1] = *MEMORY[0x277D740C0];
  textColor = [(ICQLegacyBannerView *)self textColor];
  v8[1] = textColor;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)titleAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D740A8];
  titleFont = [(ICQLegacyBannerView *)self titleFont];
  v8[0] = titleFont;
  v7[1] = *MEMORY[0x277D740C0];
  titleColor = [(ICQLegacyBannerView *)self titleColor];
  v8[1] = titleColor;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)detailMessageAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D740A8];
  detailMessageFont = [(ICQLegacyBannerView *)self detailMessageFont];
  v8[0] = detailMessageFont;
  v7[1] = *MEMORY[0x277D740C0];
  detailMessageColor = [(ICQLegacyBannerView *)self detailMessageColor];
  v8[1] = detailMessageColor;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)linkAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D740A8];
  linkMessageFont = [(ICQLegacyBannerView *)self linkMessageFont];
  v8[0] = linkMessageFont;
  v7[1] = *MEMORY[0x277D740C0];
  linkMessageFont2 = [(ICQLegacyBannerView *)self linkMessageFont];
  v8[1] = linkMessageFont2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)_applyTextParagraphAttributes
{
  textStorage = [(_ICQTextView *)self->_textView textStorage];
  [textStorage beginEditing];

  textStorage2 = [(_ICQTextView *)self->_textView textStorage];
  textParagraphStyleAttributes = [(ICQLegacyBannerView *)self textParagraphStyleAttributes];
  textStorage3 = [(_ICQTextView *)self->_textView textStorage];
  [textStorage2 addAttributes:textParagraphStyleAttributes range:{0, objc_msgSend(textStorage3, "length")}];

  textStorage4 = [(_ICQTextView *)self->_textView textStorage];
  [textStorage4 endEditing];
}

- (void)_applyTextStorageAttributes
{
  v21[1] = *MEMORY[0x277D85DE8];
  offer = [(ICQLegacyBannerView *)self offer];
  bannerSpecification = [offer bannerSpecification];
  isDetailBannerInfoAvailable = [bannerSpecification isDetailBannerInfoAvailable];

  if ((isDetailBannerInfoAvailable & 1) == 0)
  {
    textStorage = [(_ICQTextView *)self->_textView textStorage];
    [textStorage beginEditing];

    textStorage2 = [(_ICQTextView *)self->_textView textStorage];
    v8 = [textStorage2 length];

    textStorage3 = [(_ICQTextView *)self->_textView textStorage];
    messageAttributes = [(ICQLegacyBannerView *)self messageAttributes];
    [textStorage3 addAttributes:messageAttributes range:{0, v8}];

    linkTextFont = [(ICQLegacyBannerView *)self linkTextFont];

    if (linkTextFont)
    {
      v20 = *MEMORY[0x277D740A8];
      linkTextFont2 = [(ICQLegacyBannerView *)self linkTextFont];
      v21[0] = linkTextFont2;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

      textStorage4 = [(_ICQTextView *)self->_textView textStorage];
      v15 = *MEMORY[0x277D740E8];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __50__ICQLegacyBannerView__applyTextStorageAttributes__block_invoke;
      v18[3] = &unk_27A65BBF0;
      v18[4] = self;
      v19 = v13;
      v16 = v13;
      [textStorage4 enumerateAttribute:v15 inRange:0 options:v8 usingBlock:{0, v18}];
    }

    textStorage5 = [(_ICQTextView *)self->_textView textStorage];
    [textStorage5 endEditing];
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
  offer = [(ICQLegacyBannerView *)self offer];
  bannerSpecification = [offer bannerSpecification];

  linksFormat = [bannerSpecification linksFormat];
  v7 = [linksFormat length];

  if (v7)
  {
    v8 = MEMORY[0x277CCA898];
    linksFormat2 = [bannerSpecification linksFormat];
    messageAttributes = [(ICQLegacyBannerView *)self messageAttributes];
    links = [bannerSpecification links];
    v12 = [v8 attributedStringWithFormat:linksFormat2 attributes:messageAttributes links:links];

    [v3 appendAttributedString:v12];
    goto LABEL_10;
  }

  offer2 = [(ICQLegacyBannerView *)self offer];
  level = [offer2 level];

  v15 = _ICQGetLogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (level)
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

+ (id)replaceWordsIn:(id)in with:(id)with
{
  v20 = *MEMORY[0x277D85DE8];
  inCopy = in;
  withCopy = with;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [withCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = inCopy;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(withCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v10);
        v13 = [withCopy objectForKey:v12];
        inCopy = [v11 stringByReplacingOccurrencesOfString:v12 withString:v13];

        ++v10;
        v11 = inCopy;
      }

      while (v8 != v10);
      v8 = [withCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return inCopy;
}

- (id)detailAttributedText
{
  v3 = objc_opt_new();
  offer = [(ICQLegacyBannerView *)self offer];
  bannerSpecification = [offer bannerSpecification];

  if (([bannerSpecification isDetailBannerInfoAvailable] & 1) == 0)
  {
    attributedText = [(ICQLegacyBannerView *)self attributedText];
    goto LABEL_19;
  }

  offer2 = [(ICQLegacyBannerView *)self offer];
  deviceInfo = [offer2 deviceInfo];

  v8 = [deviceInfo key];
  v9 = [bannerSpecification titleWithKey:v8];

  v10 = [deviceInfo key];
  v11 = [bannerSpecification messageWithKey:v10];

  if ([v9 length])
  {
    v12 = objc_opt_class();
    v49 = deviceInfo;
    wordsToReplace = [deviceInfo wordsToReplace];
    v14 = [v12 replaceWordsIn:v9 with:wordsToReplace];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v14];

    v15 = MEMORY[0x277CCA898];
    titleAttributes = [(ICQLegacyBannerView *)self titleAttributes];
    v17 = [v15 attributedStringWithFormat:v9 attributes:titleAttributes links:0];

    offer3 = [(ICQLegacyBannerView *)self offer];
    bundleIdentifier = [offer3 bundleIdentifier];
    v20 = [bundleIdentifier isEqualToString:@"com.apple.mobileslideshow"];

    if (v20)
    {
      v48 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769D0]];
      v47 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle" withConfiguration:v48];
      systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
      v22 = [v47 imageWithTintColor:systemOrangeColor];

      v23 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
      [v23 setImage:v22];
      v24 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v23];
      [v3 appendAttributedString:v24];
      v25 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
      [v3 appendAttributedString:v25];
    }

    [v3 appendAttributedString:v17];

    deviceInfo = v49;
  }

  if ([v11 length])
  {
    v26 = objc_opt_class();
    wordsToReplace2 = [deviceInfo wordsToReplace];
    v28 = [v26 replaceWordsIn:v11 with:wordsToReplace2];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v28];

    v29 = MEMORY[0x277CCA898];
    detailMessageAttributes = [(ICQLegacyBannerView *)self detailMessageAttributes];
    v31 = [v29 attributedStringWithFormat:v11 attributes:detailMessageAttributes links:0];

    [v3 appendAttributedString:v31];
  }

  linksFormat = [bannerSpecification linksFormat];
  v33 = [linksFormat length];

  if (!v33)
  {
    offer4 = [(ICQLegacyBannerView *)self offer];
    level = [offer4 level];

    v42 = _ICQGetLogSystem();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    if (level)
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
  linksFormat2 = [bannerSpecification linksFormat];
  linkAttributes = [(ICQLegacyBannerView *)self linkAttributes];
  links = [bannerSpecification links];
  v38 = [v34 attributedStringWithFormat:linksFormat2 attributes:linkAttributes links:links];

  [v3 appendAttributedString:v38];
LABEL_18:
  attributedText = [v3 copy];

LABEL_19:

  return attributedText;
}

- (void)setOffer:(id)offer
{
  offerCopy = offer;
  objc_storeStrong(&self->_offer, offer);
  detailAttributedText = [(ICQLegacyBannerView *)self detailAttributedText];
  [(_ICQTextView *)self->_textView setAttributedText:detailAttributedText];
  [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
  [(ICQLegacyBannerView *)self _applyTextParagraphAttributes];
  if (detailAttributedText)
  {
    string = [detailAttributedText string];
    v7 = [string length];

    if (v7)
    {
      [(_ICQTextView *)self->_textView setIsAccessibilityElement:1];
      v8 = objc_alloc_init(MEMORY[0x277CCA898]);
      [(_ICQTextView *)self->_textView setAccessibilityAttributedLabel:v8];
    }
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (!fontCopy)
  {
    fontCopy = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
  }

  if (self->_font != fontCopy)
  {
    v5 = fontCopy;
    objc_storeStrong(&self->_font, fontCopy);
    [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
    fontCopy = v5;
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [MEMORY[0x277D75348] labelColor];
  }

  if (self->_textColor != colorCopy)
  {
    v5 = colorCopy;
    objc_storeStrong(&self->_textColor, colorCopy);
    [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
    colorCopy = v5;
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(ICQLegacyBannerView *)self _applyTextParagraphAttributes];
  }
}

- (void)setTextLineSpacing:(double)spacing
{
  if (self->_textLineSpacing != spacing)
  {
    self->_textLineSpacing = spacing;
    [(ICQLegacyBannerView *)self _applyTextParagraphAttributes];
  }
}

- (void)setTextMargins:(NSDirectionalEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.leading;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textMargins.top, v3), vceqq_f64(*&self->_textMargins.bottom, v4)))) & 1) == 0)
  {
    self->_textMargins = margins;
    [(ICQLegacyBannerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setLinkTextFont:(id)font
{
  fontCopy = font;
  linkTextFont = self->_linkTextFont;
  if (linkTextFont != fontCopy)
  {
    v9 = fontCopy;
    v6 = [(UIFont *)linkTextFont isEqual:fontCopy];
    fontCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIFont *)v9 copy];
      v8 = self->_linkTextFont;
      self->_linkTextFont = v7;

      [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
      fontCopy = v9;
    }
  }
}

- (void)setLinkTextColor:(id)color
{
  v14[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  offer = [(ICQLegacyBannerView *)self offer];
  bannerSpecification = [offer bannerSpecification];
  isDetailBannerInfoAvailable = [bannerSpecification isDetailBannerInfoAvailable];

  if ((isDetailBannerInfoAvailable & 1) == 0)
  {
    linkTextColor = self->_linkTextColor;
    if (linkTextColor != colorCopy && ([(UIColor *)linkTextColor isEqual:colorCopy]& 1) == 0)
    {
      v9 = [(UIColor *)colorCopy copy];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  p_textMargins = &self->_textMargins;
  [(_ICQTextView *)self->_textView sizeThatFits:fits.width - self->_textMargins.leading - self->_textMargins.trailing, 1.79769313e308];
  v6 = v5 + p_textMargins->top + p_textMargins->bottom;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  v25 = *MEMORY[0x277D85DE8];
  link = [item link];
  icqIndex = [link icqIndex];
  if (icqIndex <= 0x7FFFFFFFFFFFFFFELL)
  {
    v8 = icqIndex;
    offer = [(ICQLegacyBannerView *)self offer];
    bannerSpecification = [offer bannerSpecification];
    links = [bannerSpecification links];
    v12 = [links count];

    if (v8 < v12)
    {
      offer2 = [(ICQLegacyBannerView *)self offer];
      bannerSpecification2 = [offer2 bannerSpecification];
      links2 = [bannerSpecification2 links];
      v16 = [links2 objectAtIndexedSubscript:v8];

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

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selectedRange = [selectionCopy selectedRange];
  if (selectedRange | v4)
  {
    [selectionCopy setSelectedRange:{0, 0}];
  }
}

- (void)_configureManageStorageButtonWithICQLink:(id)link
{
  linkCopy = link;
  v5 = linkCopy;
  if (linkCopy && (manageStorageButton = self->_manageStorageButton) != 0)
  {
    text = [linkCopy text];
    [(UIButton *)manageStorageButton setTitle:text forState:0];

    v8 = MEMORY[0x277D750C8];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __64__ICQLegacyBannerView__configureManageStorageButtonWithICQLink___block_invoke;
    v14 = &unk_27A65BC18;
    selfCopy = self;
    v16 = v5;
    v9 = [v8 actionWithTitle:&stru_28844FC60 image:0 identifier:@"MANAGE_STORAGE" handler:&v11];
    [(UIButton *)self->_manageStorageButton addAction:v9 forControlEvents:64, v11, v12, v13, v14, selfCopy];
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

- (BOOL)_performActionWithICQLink:(id)link
{
  v11 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = linkCopy;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Performing banner view action with icqLink: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained performActionWith:linkCopy];

  return v7;
}

- (void)updateBannerView
{
  quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
  [(ICQLegacyBannerView *)self setBackgroundColor:quaternarySystemFillColor];

  textView = self->_textView;
  detailAttributedText = [(ICQLegacyBannerView *)self detailAttributedText];
  [(_ICQTextView *)textView setAttributedText:detailAttributedText];

  [(ICQLegacyBannerView *)self _applyTextStorageAttributes];
  [(ICQLegacyBannerView *)self _applyTextParagraphAttributes];
  [(ICQLegacyBannerView *)self sizeToFit];
  superview = [(ICQLegacyBannerView *)self superview];
  [superview sizeToFit];

  superview2 = [(ICQLegacyBannerView *)self superview];
  v8Superview = [superview2 superview];
  [v8Superview sizeToFit];
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