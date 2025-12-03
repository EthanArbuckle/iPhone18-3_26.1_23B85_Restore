@interface ICQPremiumButton
+ (id)buttonWithType:(int64_t)type link:(id)link;
- (void)setLink:(id)link;
@end

@implementation ICQPremiumButton

+ (id)buttonWithType:(int64_t)type link:(id)link
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___ICQPremiumButton;
  linkCopy = link;
  v6 = objc_msgSendSuper2(&v11, sel_buttonWithType_, type);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:{0, v11.receiver, v11.super_class}];
  titleLabel = [v6 titleLabel];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [titleLabel setFont:v8];

  titleLabel2 = [v6 titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  [v6 setLink:linkCopy];

  return v6;
}

- (void)setLink:(id)link
{
  linkCopy = link;
  if (self->_link != linkCopy)
  {
    v7 = linkCopy;
    objc_storeStrong(&self->_link, link);
    text = [(ICQLink *)v7 text];
    [(ICQPremiumButton *)self setTitle:text forState:0];

    linkCopy = v7;
  }
}

@end