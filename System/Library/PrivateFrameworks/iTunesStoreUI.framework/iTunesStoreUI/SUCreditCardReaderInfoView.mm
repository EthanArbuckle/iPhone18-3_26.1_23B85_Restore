@interface SUCreditCardReaderInfoView
- (SUCreditCardReaderInfoView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SUCreditCardReaderInfoView

- (SUCreditCardReaderInfoView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = SUCreditCardReaderInfoView;
  v3 = [(SUCreditCardReaderInfoView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(SUCreditCardReaderInfoView *)v3 setAddCardLabel:v4];

    addCardLabel = [(SUCreditCardReaderInfoView *)v3 addCardLabel];
    [addCardLabel setTextAlignment:1];

    addCardLabel2 = [(SUCreditCardReaderInfoView *)v3 addCardLabel];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CREDIT_CARD_ADD" value:&stru_1F41B3660 table:0];
    [addCardLabel2 setText:v8];

    addCardLabel3 = [(SUCreditCardReaderInfoView *)v3 addCardLabel];
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:32.0 weight:*MEMORY[0x1E69DB968]];
    [addCardLabel3 setFont:v10];

    addCardLabel4 = [(SUCreditCardReaderInfoView *)v3 addCardLabel];
    [(SUCreditCardReaderInfoView *)v3 addSubview:addCardLabel4];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(SUCreditCardReaderInfoView *)v3 setAddCardDetailLabel:v12];

    addCardDetailLabel = [(SUCreditCardReaderInfoView *)v3 addCardDetailLabel];
    [addCardDetailLabel setTextAlignment:1];

    addCardDetailLabel2 = [(SUCreditCardReaderInfoView *)v3 addCardDetailLabel];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CREDIT_CARD_POSITION" value:&stru_1F41B3660 table:0];
    [addCardDetailLabel2 setText:v16];

    addCardDetailLabel3 = [(SUCreditCardReaderInfoView *)v3 addCardDetailLabel];
    v18 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
    [addCardDetailLabel3 setFont:v18];

    addCardDetailLabel4 = [(SUCreditCardReaderInfoView *)v3 addCardDetailLabel];
    [(SUCreditCardReaderInfoView *)v3 addSubview:addCardDetailLabel4];
  }

  return v3;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SUCreditCardReaderInfoView;
  [(SUCreditCardReaderInfoView *)&v22 layoutSubviews];
  addCardLabel = [(SUCreditCardReaderInfoView *)self addCardLabel];
  [(SUCreditCardReaderInfoView *)self bounds];
  [addCardLabel sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  [(SUCreditCardReaderInfoView *)self bounds];
  v10 = CGRectGetMidX(v23) - v7 * 0.5;
  addCardLabel2 = [(SUCreditCardReaderInfoView *)self addCardLabel];
  [addCardLabel2 setFrame:{v10, 25.0, v7, v9}];

  addCardDetailLabel = [(SUCreditCardReaderInfoView *)self addCardDetailLabel];
  [(SUCreditCardReaderInfoView *)self bounds];
  [addCardDetailLabel sizeThatFits:{v13, v14}];
  v16 = v15;
  v18 = v17;

  [(SUCreditCardReaderInfoView *)self bounds];
  v19 = CGRectGetMidX(v24) - v16 * 0.5;
  v25.origin.y = 25.0;
  v25.origin.x = v10;
  v25.size.width = v7;
  v25.size.height = v9;
  v20 = CGRectGetMaxY(v25) + 16.0;
  addCardDetailLabel2 = [(SUCreditCardReaderInfoView *)self addCardDetailLabel];
  [addCardDetailLabel2 setFrame:{v19, v20, v16, v18}];
}

@end