@interface ICQUpgradeButton
+ (BOOL)shouldShowForOffer:(id)a3;
+ (id)attributedStringWithFormat:(id)a3 attributes:(id)a4 buttonLinkAttributes:(id)a5 links:(id)a6;
+ (id)buttonWithType:(int64_t)a3;
+ (id)spaceArrowAttributedStringWithBaseAttributes:(id)a3;
- (ICQUpgradeButton)initWithFrame:(CGRect)a3;
- (id)buttonAttributes;
- (id)buttonLinkAttributes;
- (void)setOffer:(id)a3;
@end

@implementation ICQUpgradeButton

+ (BOOL)shouldShowForOffer:(id)a3
{
  v3 = a3;
  v4 = [v3 buttonSpecification];
  if (v4)
  {
    v5 = [v3 level] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)buttonWithType:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICQUpgradeButton;
  v3 = objc_msgSendSuper2(&v5, sel_buttonWithType_, 1);

  return v3;
}

+ (id)spaceArrowAttributedStringWithBaseAttributes:(id)a3
{
  v3 = MEMORY[0x277CCAB48];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8197];
  v7 = [v5 initWithString:v6];

  v8 = [v7 length];
  v9 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
  v10 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"PresentationRightArrowRed"];
  [v9 setImage:v10];

  v11 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v9];
  [v7 appendAttributedString:v11];

  [v7 addAttributes:v4 range:{0, objc_msgSend(v7, "length")}];
  [v7 addAttribute:*MEMORY[0x277D74078] value:&unk_288479D38 range:{v8, objc_msgSend(v7, "length") - v8}];
  v12 = [v7 copy];

  return v12;
}

+ (id)attributedStringWithFormat:(id)a3 attributes:(id)a4 buttonLinkAttributes:(id)a5 links:(id)a6
{
  v9 = a3;
  v37 = a4;
  v36 = a5;
  v10 = a6;
  v11 = [v9 length];
  v38 = objc_opt_new();
  v39 = v9;
  v35 = v11;
  v12 = [v9 rangeOfString:@"%@" options:2 range:{0, v11}];
  v14 = v13;
  v15 = 0;
  if ([v10 count] && v14)
  {
    v15 = 0;
    v16 = 0;
    v34 = v10;
    do
    {
      v17 = [v10 objectAtIndexedSubscript:v16];
      v18 = v36;
      v19 = objc_alloc(MEMORY[0x277CCA898]);
      v20 = [v39 substringWithRange:{v15, v12 - v15}];
      v21 = [v19 initWithString:v20 attributes:v37];
      [v38 appendAttributedString:v21];

      v22 = MEMORY[0x277CCACA8];
      v23 = [v17 text];
      v24 = [v22 stringWithFormat:@"%@", v23];

      v25 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v24 attributes:v18];
      [v38 appendAttributedString:v25];

      if ([v17 options])
      {
        v26 = [a1 spaceArrowAttributedStringWithBaseAttributes:v18];
        [v38 appendAttributedString:v26];
      }

      v15 = v12 + v14;
      ++v16;

      v12 = [v39 rangeOfString:@"%@" options:2 range:{v12 + v14, v35 - (v12 + v14)}];
      v14 = v27;
      v10 = v34;
    }

    while (v16 < [v34 count] && v14);
  }

  v28 = objc_alloc(MEMORY[0x277CCA898]);
  v29 = [v39 substringFromIndex:v15];
  v30 = [v28 initWithString:v29 attributes:v37];
  [v38 appendAttributedString:v30];

  v31 = [v38 copy];

  return v31;
}

- (ICQUpgradeButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ICQUpgradeButton;
  v3 = [(ICQUpgradeButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D7F390] sharedOfferManager];
    v5 = [v4 currentOffer];
    [(ICQUpgradeButton *)v3 setOffer:v5];
  }

  return v3;
}

- (void)setOffer:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_offer, a3);
  v6 = [v5 buttonSpecification];
  v7 = [v6 buttonLink];
  v8 = v7;
  if ([(ICQLink *)v7 action]== 105)
  {
    v9 = MEMORY[0x277D7F370];
    v10 = [(ICQLink *)v7 text];
    v11 = [(ICQLink *)v7 options];
    v12 = [(ICQLink *)v7 parameters];
    v8 = [v9 linkWithText:v10 options:v11 action:3 parameters:v12];
  }

  link = self->_link;
  self->_link = v8;

  v14 = [v5 buttonSpecification];
  v15 = [v14 buttonFormat];
  if (![(__CFString *)v15 length])
  {

    v15 = @"%@";
  }

  if (self->_link)
  {
    v16 = [v14 textFormat];

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = [v14 textFormat];
      v19 = [(ICQUpgradeButton *)self buttonAttributes];
      v20 = [(ICQUpgradeButton *)self buttonLinkAttributes];
      v39[0] = self->_link;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v22 = [v17 attributedStringWithFormat:v18 attributes:v19 buttonLinkAttributes:v20 links:v21];
      attributedDetailedText = self->_attributedDetailedText;
      self->_attributedDetailedText = v22;
    }

    if (self->_link)
    {
      v24 = [v14 linkFormat];

      if (v24)
      {
        v36 = objc_opt_class();
        v25 = [v14 linkFormat];
        v26 = [(ICQUpgradeButton *)self buttonAttributes];
        v27 = [(ICQUpgradeButton *)self buttonLinkAttributes];
        v38 = self->_link;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        v29 = [v36 attributedStringWithFormat:v25 attributes:v26 buttonLinkAttributes:v27 links:v28];
        attributedDetailedLink = self->_attributedDetailedLink;
        self->_attributedDetailedLink = v29;
      }

      if (self->_link)
      {
        v31 = objc_opt_class();
        v32 = [(ICQUpgradeButton *)self buttonAttributes];
        v33 = [(ICQUpgradeButton *)self buttonLinkAttributes];
        v37 = self->_link;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        v35 = [v31 attributedStringWithFormat:v15 attributes:v32 buttonLinkAttributes:v33 links:v34];

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
  v3 = [MEMORY[0x277D75348] systemRedColor];
  v7[1] = v3;
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
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end