@interface StocksListTableViewCell
+ (double)cellHeightForStackStatus:(BOOL)status;
- (CGRect)changeButtonRect;
- (StocksListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)changeSignNegative:(BOOL)negative;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBoxContentsAlpha:(double)alpha includeChangeSign:(BOOL)sign;
- (void)setBoxValueFromRowDataType;
- (void)setRowDataType:(int64_t)type;
- (void)setShouldStackView:(BOOL)view;
- (void)setStock:(id)stock;
- (void)updateValues;
@end

@implementation StocksListTableViewCell

+ (double)cellHeightForStackStatus:(BOOL)status
{
  statusCopy = status;
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  [v4 _scaledValueForValue:36.0];
  v6 = v5 + 0.0;
  [v4 _scaledValueForValue:20.0];
  v8 = v6 + v7;
  if (statusCopy)
  {
    [v4 _scaledValueForValue:36.0];
    v10 = v9;
    [v4 _scaledValueForValue:28.0];
    v8 = v8 + v10 + v11;
  }

  return v8;
}

- (StocksListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v53.receiver = self;
  v53.super_class = StocksListTableViewCell;
  v4 = [(StocksListTableViewCell *)&v53 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(StocksListTableViewCell *)v4 setBackgroundColor:blackColor];

    v6 = objc_opt_new();
    symbolLabel = v4->_symbolLabel;
    v4->_symbolLabel = v6;

    v8 = v4->_symbolLabel;
    v9 = *MEMORY[0x277D76A20];
    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
    [(UILabel *)v8 setFont:v10];

    [(UILabel *)v4->_symbolLabel setAdjustsFontForContentSizeCategory:1];
    v11 = v4->_symbolLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v11 setBackgroundColor:clearColor];

    v13 = v4->_symbolLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v13 setTextColor:whiteColor];

    [(UILabel *)v4->_symbolLabel setBaselineAdjustment:1];
    [(StocksListTableViewCell *)v4 addSubview:v4->_symbolLabel];
    v15 = objc_opt_new();
    priceLabel = v4->_priceLabel;
    v4->_priceLabel = v15;

    v17 = v4->_priceLabel;
    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)v4->_priceLabel setAdjustsFontForContentSizeCategory:1];
    v19 = v4->_priceLabel;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v19 setBackgroundColor:clearColor2];

    v21 = v4->_priceLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v21 setTextColor:whiteColor2];

    [(UILabel *)v4->_priceLabel setBaselineAdjustment:1];
    [(UILabel *)v4->_priceLabel setTextAlignment:2];
    [(StocksListTableViewCell *)v4 addSubview:v4->_priceLabel];
    v23 = [StocksListBoxView alloc];
    v24 = MEMORY[0x277D755B8];
    v25 = [StocksBundles getBundle:1];
    traitCollection = [(StocksListTableViewCell *)v4 traitCollection];
    v27 = [v24 imageNamed:@"ButtonMask" inBundle:v25 compatibleWithTraitCollection:traitCollection];
    v28 = CeilToPixel(4.5);
    v29 = [v27 resizableImageWithCapInsets:1 resizingMode:{0.0, v28, 0.0, CeilToPixel(4.5)}];
    v30 = [(StocksListBoxView *)v23 initWithBackgroundMask:v29];
    boxView = v4->_boxView;
    v4->_boxView = v30;

    [(StocksListTableViewCell *)v4 addSubview:v4->_boxView];
    v32 = objc_opt_new();
    boxLabel = v4->_boxLabel;
    v4->_boxLabel = v32;

    v34 = v4->_boxLabel;
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v34 setBackgroundColor:clearColor3];

    v36 = v4->_boxLabel;
    v37 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
    [(UILabel *)v36 setFont:v37];

    [(UILabel *)v4->_boxLabel setAdjustsFontForContentSizeCategory:1];
    v38 = v4->_boxLabel;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v38 setTextColor:whiteColor3];

    [(UILabel *)v4->_boxLabel setBaselineAdjustment:1];
    [(UILabel *)v4->_boxLabel setAdjustsFontSizeToFitWidth:1];
    [(StocksListTableViewCell *)v4 addSubview:v4->_boxLabel];
    v40 = objc_alloc(MEMORY[0x277D755E8]);
    v41 = MEMORY[0x277D755B8];
    v42 = [StocksBundles getBundle:1];
    traitCollection2 = [(StocksListTableViewCell *)v4 traitCollection];
    v44 = [v41 imageNamed:@"PlusSign" inBundle:v42 compatibleWithTraitCollection:traitCollection2];
    v45 = [v40 initWithImage:v44];
    changeSignView = v4->_changeSignView;
    v4->_changeSignView = v45;

    [(StocksListTableViewCell *)v4 addSubview:v4->_changeSignView];
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [(StocksListTableViewCell *)v4 setBackgroundColor:blackColor2];

    [(StocksListTableViewCell *)v4 setBoxValueFromRowDataType];
    v48 = objc_alloc(MEMORY[0x277D75D18]);
    [(StocksListTableViewCell *)v4 bounds];
    v49 = [v48 initWithFrame:?];
    [(StocksListTableViewCell *)v4 setSelectedBackgroundView:v49];

    v50 = [MEMORY[0x277D75348] colorWithWhite:0.22 alpha:1.0];
    selectedBackgroundView = [(StocksListTableViewCell *)v4 selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:v50];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(StocksListTableViewCell *)self setStock:0];
  v3.receiver = self;
  v3.super_class = StocksListTableViewCell;
  [(StocksListTableViewCell *)&v3 prepareForReuse];
}

- (void)setStock:(id)stock
{
  stockCopy = stock;
  if (self->_stock != stockCopy)
  {
    v6 = stockCopy;
    objc_storeStrong(&self->_stock, stock);
    [(StocksListTableViewCell *)self updateValues];
    stockCopy = v6;
  }
}

- (void)setBoxContentsAlpha:(double)alpha includeChangeSign:(BOOL)sign
{
  signCopy = sign;
  [(UILabel *)self->_boxLabel setAlpha:?];
  if (signCopy)
  {
    changeSignView = self->_changeSignView;

    [(UIImageView *)changeSignView setAlpha:alpha];
  }
}

- (void)setShouldStackView:(BOOL)view
{
  viewCopy = view;
  self->_shouldStackView = view;
  [(UILabel *)self->_symbolLabel setAdjustsFontSizeToFitWidth:!view];
  priceLabel = self->_priceLabel;

  [(UILabel *)priceLabel setAdjustsFontSizeToFitWidth:!viewCopy];
}

- (void)updateValues
{
  stock = self->_stock;
  if (stock)
  {
    symbolLabel = self->_symbolLabel;
    listName = [(Stock *)stock listName];
    [(UILabel *)symbolLabel setText:listName];

    price = [(Stock *)self->_stock price];

    if (price)
    {
      v7 = [(Stock *)self->_stock formattedPriceDroppingFractionDigitsIfLengthExceeds:10];
    }

    else
    {
      v7 = &stru_287C73C90;
    }

    [(UILabel *)self->_priceLabel setText:v7];
    changeIsNegative = [(Stock *)self->_stock changeIsNegative];
    boxView = self->_boxView;
    v11 = +[StocksStyle sharedStyle];
    v12 = v11;
    if (changeIsNegative)
    {
      [v11 lossColor];
    }

    else
    {
      [v11 gainColor];
    }
    v13 = ;
    [(StocksListBoxView *)boxView setImageMaskColor:v13];

    [(StocksListTableViewCell *)self setNeedsLayout];
    v8 = self->_stock == 0;
  }

  else
  {
    v8 = 1;
  }

  [(UILabel *)self->_symbolLabel setHidden:v8];
  [(UILabel *)self->_priceLabel setHidden:self->_stock == 0];
  [(UILabel *)self->_boxLabel setHidden:self->_stock == 0];
  v14 = self->_boxView;
  change = [(Stock *)self->_stock change];
  [(StocksListBoxView *)v14 setHidden:change == 0];

  [(StocksListTableViewCell *)self setBoxValueFromRowDataType];
}

- (id)changeSignNegative:(BOOL)negative
{
  negativeCopy = negative;
  v5 = [StocksBundles getBundle:1];
  if (!negativeCopy || changeSignNegative__minusSign)
  {
    if (changeSignNegative__plusSign)
    {
      goto LABEL_7;
    }

    v6 = @"PlusSign";
    v7 = &changeSignNegative__plusSign;
  }

  else
  {
    v6 = @"MinusSign";
    v7 = &changeSignNegative__minusSign;
  }

  v8 = MEMORY[0x277D755B8];
  traitCollection = [(StocksListTableViewCell *)self traitCollection];
  v10 = [v8 imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:traitCollection];
  v11 = *v7;
  *v7 = v10;

LABEL_7:
  if (negativeCopy)
  {
    v12 = &changeSignNegative__minusSign;
  }

  else
  {
    v12 = &changeSignNegative__plusSign;
  }

  v13 = *v12;
  v14 = *v12;

  return v13;
}

- (void)setBoxValueFromRowDataType
{
  changeSignView = self->_changeSignView;
  if (self->_stock)
  {
    v4 = self->_rowDataType == 2;
  }

  else
  {
    v4 = 1;
  }

  [(UIImageView *)changeSignView setHidden:v4];
  stock = self->_stock;
  if (stock)
  {
    if (self->_rowDataType == 2)
    {
      boxLabel = self->_boxLabel;
      change = [(Stock *)stock change];
      if (change)
      {
        marketcap = [(Stock *)self->_stock marketcap];
        v9 = [Stock localizedMagnitudeAbbreviatedStringWithString:marketcap];
        [(UILabel *)boxLabel setText:v9];
      }

      else
      {
        [(UILabel *)boxLabel setText:&stru_287C73C90];
      }
    }

    else
    {
      changeIsNegative = [(Stock *)stock changeIsNegative];
      change2 = [(Stock *)self->_stock change];
      if (change2)
      {
        v12 = [(Stock *)self->_stock formattedChangePercent:self->_rowDataType == 0];
      }

      else
      {
        v12 = &stru_287C73C90;
      }

      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      change = [(__CFString *)v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      [(UILabel *)self->_boxLabel setText:change];
      if ([change length] && (+[Stock BlankValueString](Stock, "BlankValueString"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(change, "isEqualToString:", v14), v14, !v15))
      {
        v16 = self->_changeSignView;
        v17 = [(StocksListTableViewCell *)self changeSignNegative:changeIsNegative];
        [(UIImageView *)v16 setImage:v17];
      }

      else
      {
        [(UIImageView *)self->_changeSignView setHidden:1];
      }
    }

    v18 = +[StocksPreferences sharedPreferences];
    textAttachmentDirectionIsRightToLeft = [v18 textAttachmentDirectionIsRightToLeft];

    v20 = 2;
    if (textAttachmentDirectionIsRightToLeft)
    {
      v20 = 0;
    }

    if (self->_rowDataType == 2)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    [(UILabel *)self->_boxLabel setTextAlignment:v21];
    [(UILabel *)self->_boxLabel sizeToFit];

    [(StocksListTableViewCell *)self setNeedsLayout];
  }
}

- (void)setRowDataType:(int64_t)type
{
  if (self->_rowDataType != type)
  {
    self->_rowDataType = type;
    [(StocksListTableViewCell *)self setBoxValueFromRowDataType];
  }
}

- (void)layoutSubviews
{
  v66.receiver = self;
  v66.super_class = StocksListTableViewCell;
  [(StocksListTableViewCell *)&v66 layoutSubviews];
  _shouldReverseLayoutDirection = [(StocksListTableViewCell *)self _shouldReverseLayoutDirection];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  v54 = RoundToPixel(0.5);
  [v4 _scaledValueForValue:36.0];
  v65 = v5;
  [v4 _scaledValueForValue:28.0];
  v51 = v6;
  [v4 _scaledValueForValue:RoundToPixel(93.0)];
  v8 = v7;
  [v4 _scaledValueForValue:31.5];
  v10 = v9;
  [(StocksListTableViewCell *)self bounds];
  v13 = v12;
  v50 = v14;
  v16 = v15;
  v17 = v11 + -16.0;
  v18 = v8;
  v19 = v11 + -16.0 - v8;
  v62 = 16.0;
  if (_shouldReverseLayoutDirection)
  {
    v20 = 16.0;
  }

  else
  {
    v20 = v11 + -16.0 - v8;
  }

  v58 = v11;
  v59 = v20;
  [(UILabel *)self->_symbolLabel sizeToFit];
  [(UILabel *)self->_priceLabel sizeToFit];
  [(UILabel *)self->_boxLabel sizeToFit];
  [(UILabel *)self->_symbolLabel frame];
  v22 = v21;
  v64 = v23;
  v55 = v17 - v23;
  v56 = v24;
  [(UILabel *)self->_priceLabel frame];
  v28 = v27;
  v63 = v26;
  rect = v29;
  v57 = v16;
  v53 = v10;
  if (self->_shouldStackView)
  {
    v30 = v25;
    v31 = 16.0;
    if (_shouldReverseLayoutDirection)
    {
      v67.origin.x = v13;
      v67.origin.y = v50;
      v67.size.width = v58;
      v67.size.height = v16;
      v32 = CGRectGetWidth(v67) + -16.0;
      v68.origin.x = v30;
      v68.origin.y = v28;
      v68.size.width = v63;
      v68.size.height = rect;
      v62 = v32 - CGRectGetWidth(v68);
      v69.origin.x = v13;
      v69.origin.y = v50;
      v69.size.width = v58;
      v69.size.height = v57;
      v31 = CGRectGetWidth(v69) + -16.0 - v18;
    }

    v59 = v31;
    [v4 ascender];
    [v4 ascender];
    v52 = v51 + v65 * 2.0 - v33;
  }

  else
  {
    v52 = (v16 - v10) * 0.5;
    if (_shouldReverseLayoutDirection)
    {
      v70.origin.x = 16.0;
      v70.size.width = v18;
      v70.size.height = v10;
      v70.origin.y = (v16 - v10) * 0.5;
      MaxX = CGRectGetMaxX(v70);
      v35 = MaxX + RoundToPixel(8.0);
      v36 = v63;
      v37 = rect;
      v62 = v35;
    }

    else
    {
      v38 = v19 - v26 - RoundToPixel(8.0);
      v35 = 16.0;
      v28 = v22;
      v36 = v64;
      v37 = v56;
      v62 = v38;
    }

    v39 = v28;
    CGRectGetMaxX(*&v35);
    [v4 ascender];
  }

  [v4 ascender];
  v40 = 0.0;
  if (self->_rowDataType != 2)
  {
    [(UIImageView *)self->_changeSignView bounds];
    v40 = v41 + 2.0;
  }

  [(UILabel *)self->_boxLabel frame];
  v71.size.width = v18 + -16.0 - v40;
  CGRectGetHeight(v71);
  [(UIImageView *)self->_changeSignView frame];
  v43 = v42;
  v44 = +[StocksPreferences sharedPreferences];
  textAttachmentDirectionIsRightToLeft = [v44 textAttachmentDirectionIsRightToLeft];

  v46 = v59;
  v47 = v59 + 8.0;
  if (textAttachmentDirectionIsRightToLeft)
  {
    v72.origin.x = v59;
    v72.origin.y = v52;
    v72.size.width = v18;
    v72.size.height = v53;
    v48 = CGRectGetMaxX(v72) + -8.0 - v43;
  }

  else
  {
    v48 = v59 + 8.0;
    v47 = v47 + v40;
  }

  v49 = 16.0;
  if (_shouldReverseLayoutDirection)
  {
    v49 = v55;
  }

  v60 = v49;
  [(UIImageView *)self->_changeSignView setFrame:RoundRectToPixel(v48)];
  [(UILabel *)self->_boxLabel setFrame:RoundRectToPixel(v47)];
  [(StocksListBoxView *)self->_boxView setFrame:RoundRectToPixel(v46)];
  [(UILabel *)self->_symbolLabel setFrame:RoundRectToPixel(v60)];
  [(UILabel *)self->_priceLabel setFrame:RoundRectToPixel(v62)];
  [(UIView *)self->_rowSeparatorView setFrame:16.0, v57 - v54, v58 + -32.0];
}

- (CGRect)changeButtonRect
{
  [(StocksListBoxView *)self->_boxView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end