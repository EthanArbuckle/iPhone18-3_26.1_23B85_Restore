@interface SUCreditCardReaderInfoView
- (SUCreditCardReaderInfoView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SUCreditCardReaderInfoView

- (SUCreditCardReaderInfoView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = SUCreditCardReaderInfoView;
  v3 = [(SUCreditCardReaderInfoView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(SUCreditCardReaderInfoView *)v3 setAddCardLabel:v4];

    v5 = [(SUCreditCardReaderInfoView *)v3 addCardLabel];
    [v5 setTextAlignment:1];

    v6 = [(SUCreditCardReaderInfoView *)v3 addCardLabel];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CREDIT_CARD_ADD" value:&stru_1F41B3660 table:0];
    [v6 setText:v8];

    v9 = [(SUCreditCardReaderInfoView *)v3 addCardLabel];
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:32.0 weight:*MEMORY[0x1E69DB968]];
    [v9 setFont:v10];

    v11 = [(SUCreditCardReaderInfoView *)v3 addCardLabel];
    [(SUCreditCardReaderInfoView *)v3 addSubview:v11];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(SUCreditCardReaderInfoView *)v3 setAddCardDetailLabel:v12];

    v13 = [(SUCreditCardReaderInfoView *)v3 addCardDetailLabel];
    [v13 setTextAlignment:1];

    v14 = [(SUCreditCardReaderInfoView *)v3 addCardDetailLabel];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CREDIT_CARD_POSITION" value:&stru_1F41B3660 table:0];
    [v14 setText:v16];

    v17 = [(SUCreditCardReaderInfoView *)v3 addCardDetailLabel];
    v18 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
    [v17 setFont:v18];

    v19 = [(SUCreditCardReaderInfoView *)v3 addCardDetailLabel];
    [(SUCreditCardReaderInfoView *)v3 addSubview:v19];
  }

  return v3;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SUCreditCardReaderInfoView;
  [(SUCreditCardReaderInfoView *)&v22 layoutSubviews];
  v3 = [(SUCreditCardReaderInfoView *)self addCardLabel];
  [(SUCreditCardReaderInfoView *)self bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  [(SUCreditCardReaderInfoView *)self bounds];
  v10 = CGRectGetMidX(v23) - v7 * 0.5;
  v11 = [(SUCreditCardReaderInfoView *)self addCardLabel];
  [v11 setFrame:{v10, 25.0, v7, v9}];

  v12 = [(SUCreditCardReaderInfoView *)self addCardDetailLabel];
  [(SUCreditCardReaderInfoView *)self bounds];
  [v12 sizeThatFits:{v13, v14}];
  v16 = v15;
  v18 = v17;

  [(SUCreditCardReaderInfoView *)self bounds];
  v19 = CGRectGetMidX(v24) - v16 * 0.5;
  v25.origin.y = 25.0;
  v25.origin.x = v10;
  v25.size.width = v7;
  v25.size.height = v9;
  v20 = CGRectGetMaxY(v25) + 16.0;
  v21 = [(SUCreditCardReaderInfoView *)self addCardDetailLabel];
  [v21 setFrame:{v19, v20, v16, v18}];
}

@end