@interface ICQUpgradeButton
+ (BOOL)shouldShowForOffer:(id)offer;
+ (id)attributedStringWithFormat:(id)format attributes:(id)attributes buttonLinkAttributes:(id)linkAttributes links:(id)links;
+ (id)buttonWithType:(int64_t)type;
+ (id)spaceArrowAttributedStringWithBaseAttributes:(id)attributes;
- (ICQUpgradeButton)initWithFrame:(CGRect)frame;
- (id)buttonAttributes;
- (id)buttonLinkAttributes;
- (void)setOffer:(id)offer;
@end

@implementation ICQUpgradeButton

+ (BOOL)shouldShowForOffer:(id)offer
{
  offerCopy = offer;
  buttonSpecification = [offerCopy buttonSpecification];
  if (buttonSpecification)
  {
    v5 = [offerCopy level] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)buttonWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICQUpgradeButton;
  v3 = objc_msgSendSuper2(&v5, sel_buttonWithType_, 1);

  return v3;
}

+ (id)spaceArrowAttributedStringWithBaseAttributes:(id)attributes
{
  v3 = MEMORY[0x277CCAB48];
  attributesCopy = attributes;
  v5 = [v3 alloc];
  8197 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8197];
  v7 = [v5 initWithString:8197];

  v8 = [v7 length];
  v9 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
  v10 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"PresentationRightArrowRed"];
  [v9 setImage:v10];

  v11 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v9];
  [v7 appendAttributedString:v11];

  [v7 addAttributes:attributesCopy range:{0, objc_msgSend(v7, "length")}];
  [v7 addAttribute:*MEMORY[0x277D74078] value:&unk_288479D38 range:{v8, objc_msgSend(v7, "length") - v8}];
  v12 = [v7 copy];

  return v12;
}

+ (id)attributedStringWithFormat:(id)format attributes:(id)attributes buttonLinkAttributes:(id)linkAttributes links:(id)links
{
  formatCopy = format;
  attributesCopy = attributes;
  linkAttributesCopy = linkAttributes;
  linksCopy = links;
  v11 = [formatCopy length];
  v38 = objc_opt_new();
  v39 = formatCopy;
  v35 = v11;
  v12 = [formatCopy rangeOfString:@"%@" options:2 range:{0, v11}];
  v14 = v13;
  v15 = 0;
  if ([linksCopy count] && v14)
  {
    v15 = 0;
    v16 = 0;
    v34 = linksCopy;
    do
    {
      v17 = [linksCopy objectAtIndexedSubscript:v16];
      v18 = linkAttributesCopy;
      v19 = objc_alloc(MEMORY[0x277CCA898]);
      v20 = [v39 substringWithRange:{v15, v12 - v15}];
      v21 = [v19 initWithString:v20 attributes:attributesCopy];
      [v38 appendAttributedString:v21];

      v22 = MEMORY[0x277CCACA8];
      text = [v17 text];
      v24 = [v22 stringWithFormat:@"%@", text];

      v25 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v24 attributes:v18];
      [v38 appendAttributedString:v25];

      if ([v17 options])
      {
        v26 = [self spaceArrowAttributedStringWithBaseAttributes:v18];
        [v38 appendAttributedString:v26];
      }

      v15 = v12 + v14;
      ++v16;

      v12 = [v39 rangeOfString:@"%@" options:2 range:{v12 + v14, v35 - (v12 + v14)}];
      v14 = v27;
      linksCopy = v34;
    }

    while (v16 < [v34 count] && v14);
  }

  v28 = objc_alloc(MEMORY[0x277CCA898]);
  v29 = [v39 substringFromIndex:v15];
  v30 = [v28 initWithString:v29 attributes:attributesCopy];
  [v38 appendAttributedString:v30];

  v31 = [v38 copy];

  return v31;
}

- (ICQUpgradeButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = ICQUpgradeButton;
  v3 = [(ICQUpgradeButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
    currentOffer = [mEMORY[0x277D7F390] currentOffer];
    [(ICQUpgradeButton *)v3 setOffer:currentOffer];
  }

  return v3;
}

- (void)setOffer:(id)offer
{
  v39[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  objc_storeStrong(&self->_offer, offer);
  buttonSpecification = [offerCopy buttonSpecification];
  buttonLink = [buttonSpecification buttonLink];
  v8 = buttonLink;
  if ([(ICQLink *)buttonLink action]== 105)
  {
    v9 = MEMORY[0x277D7F370];
    text = [(ICQLink *)buttonLink text];
    options = [(ICQLink *)buttonLink options];
    parameters = [(ICQLink *)buttonLink parameters];
    v8 = [v9 linkWithText:text options:options action:3 parameters:parameters];
  }

  link = self->_link;
  self->_link = v8;

  buttonSpecification2 = [offerCopy buttonSpecification];
  buttonFormat = [buttonSpecification2 buttonFormat];
  if (![(__CFString *)buttonFormat length])
  {

    buttonFormat = @"%@";
  }

  if (self->_link)
  {
    textFormat = [buttonSpecification2 textFormat];

    if (textFormat)
    {
      v17 = objc_opt_class();
      textFormat2 = [buttonSpecification2 textFormat];
      buttonAttributes = [(ICQUpgradeButton *)self buttonAttributes];
      buttonLinkAttributes = [(ICQUpgradeButton *)self buttonLinkAttributes];
      v39[0] = self->_link;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v22 = [v17 attributedStringWithFormat:textFormat2 attributes:buttonAttributes buttonLinkAttributes:buttonLinkAttributes links:v21];
      attributedDetailedText = self->_attributedDetailedText;
      self->_attributedDetailedText = v22;
    }

    if (self->_link)
    {
      linkFormat = [buttonSpecification2 linkFormat];

      if (linkFormat)
      {
        v36 = objc_opt_class();
        linkFormat2 = [buttonSpecification2 linkFormat];
        buttonAttributes2 = [(ICQUpgradeButton *)self buttonAttributes];
        buttonLinkAttributes2 = [(ICQUpgradeButton *)self buttonLinkAttributes];
        v38 = self->_link;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        v29 = [v36 attributedStringWithFormat:linkFormat2 attributes:buttonAttributes2 buttonLinkAttributes:buttonLinkAttributes2 links:v28];
        attributedDetailedLink = self->_attributedDetailedLink;
        self->_attributedDetailedLink = v29;
      }

      if (self->_link)
      {
        v31 = objc_opt_class();
        buttonAttributes3 = [(ICQUpgradeButton *)self buttonAttributes];
        buttonLinkAttributes3 = [(ICQUpgradeButton *)self buttonLinkAttributes];
        v37 = self->_link;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        v35 = [v31 attributedStringWithFormat:buttonFormat attributes:buttonAttributes3 buttonLinkAttributes:buttonLinkAttributes3 links:v34];

        [(ICQUpgradeButton *)self setAttributedTitle:v35 forState:0];
      }
    }
  }
}

- (id)buttonAttributes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D740A8];
  v2 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74418]];
  v7[0] = v2;
  v6[1] = *MEMORY[0x277D740C0];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v7[1] = systemRedColor;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)buttonLinkAttributes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D740A8];
  v2 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74418]];
  v7[0] = v2;
  v6[1] = *MEMORY[0x277D740C0];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v7[1] = systemBlueColor;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end