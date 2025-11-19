@interface ICQPremiumButton
+ (id)buttonWithType:(int64_t)a3 link:(id)a4;
- (void)setLink:(id)a3;
@end

@implementation ICQPremiumButton

+ (id)buttonWithType:(int64_t)a3 link:(id)a4
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___ICQPremiumButton;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v11, sel_buttonWithType_, a3);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:{0, v11.receiver, v11.super_class}];
  v7 = [v6 titleLabel];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v7 setFont:v8];

  v9 = [v6 titleLabel];
  [v9 setAdjustsFontForContentSizeCategory:1];

  [v6 setLink:v5];

  return v6;
}

- (void)setLink:(id)a3
{
  v5 = a3;
  if (self->_link != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_link, a3);
    v6 = [(ICQLink *)v7 text];
    [(ICQPremiumButton *)self setTitle:v6 forState:0];

    v5 = v7;
  }
}

@end