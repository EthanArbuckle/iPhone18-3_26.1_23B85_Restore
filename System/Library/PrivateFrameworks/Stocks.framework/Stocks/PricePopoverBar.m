@interface PricePopoverBar
- (PricePopoverBar)initWithBackgroundImage:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setChangeImage:(id)a3;
- (void)setImageMaskColor:(id)a3;
- (void)setPercentChange:(id)a3;
- (void)setPriceString:(id)a3;
- (void)sizeToFit;
@end

@implementation PricePopoverBar

- (PricePopoverBar)initWithBackgroundImage:(id)a3
{
  v5 = a3;
  v31.receiver = self;
  v31.super_class = PricePopoverBar;
  v6 = [(PricePopoverBar *)&v31 init];
  if (v6)
  {
    v7 = objc_opt_new();
    priceLabel = v6->_priceLabel;
    v6->_priceLabel = v7;

    v9 = v6->_priceLabel;
    v10 = +[StocksStyle sharedStyle];
    v11 = [v10 fontOfSize:22.0];
    [(UILabel *)v9 setFont:v11];

    v12 = v6->_priceLabel;
    v13 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v12 setTextColor:v13];

    v14 = v6->_priceLabel;
    v15 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v14 setBackgroundColor:v15];

    [(PricePopoverBar *)v6 addSubview:v6->_priceLabel];
    v16 = objc_opt_new();
    percentChangeLabel = v6->_percentChangeLabel;
    v6->_percentChangeLabel = v16;

    v18 = v6->_percentChangeLabel;
    v19 = +[StocksStyle sharedStyle];
    v20 = [v19 fontOfSize:22.0];
    [(UILabel *)v18 setFont:v20];

    v21 = v6->_percentChangeLabel;
    v22 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v21 setTextColor:v22];

    v23 = v6->_percentChangeLabel;
    v24 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v23 setBackgroundColor:v24];

    [(PricePopoverBar *)v6 addSubview:v6->_percentChangeLabel];
    v25 = objc_alloc_init(MEMORY[0x277D755E8]);
    priceChangeSignView = v6->_priceChangeSignView;
    v6->_priceChangeSignView = v25;

    [(PricePopoverBar *)v6 addSubview:v6->_priceChangeSignView];
    v27 = objc_alloc_init(MEMORY[0x277D755E8]);
    percentChangeSignView = v6->_percentChangeSignView;
    v6->_percentChangeSignView = v27;

    [(PricePopoverBar *)v6 addSubview:v6->_percentChangeSignView];
    objc_storeStrong(&v6->_backgroundImage, a3);
    v29 = [MEMORY[0x277D75348] clearColor];
    [(PricePopoverBar *)v6 setBackgroundColor:v29];
  }

  return v6;
}

- (void)sizeToFit
{
  [(UIImageView *)self->_priceChangeSignView sizeToFit];
  [(UIImageView *)self->_percentChangeSignView sizeToFit];
  v3 = [(UILabel *)self->_priceLabel text];
  v4 = [v3 length];

  if (v4)
  {
    [(UILabel *)self->_priceLabel sizeToFit];
    v5 = [(UIImageView *)self->_priceChangeSignView image];
    if (v5)
    {
      [(UIImageView *)self->_priceChangeSignView bounds];
      v7 = v6 + 4.0;
    }

    else
    {
      v7 = 0.0;
    }

    [(UILabel *)self->_priceLabel bounds];
    v8 = v7 + v9 + 16.0;
    v10 = [(UILabel *)self->_percentChangeLabel text];
    v11 = [v10 length];

    if (v11)
    {
      [(UILabel *)self->_percentChangeLabel sizeToFit];
      v12 = [(UIImageView *)self->_percentChangeSignView image];
      if (v12)
      {
        [(UIImageView *)self->_percentChangeSignView bounds];
        v14 = v13 + 4.0 + 15.0;
      }

      else
      {
        v14 = 15.0;
      }

      [(UILabel *)self->_percentChangeLabel bounds];
      v8 = v8 + v14 + v15 + 1.0;
    }
  }

  else
  {
    v8 = 0.0;
  }

  [(UIImage *)self->_backgroundImage size];
  if (v16 >= v8)
  {
    v8 = v16;
  }

  [(UIImage *)self->_backgroundImage size];

  [(PricePopoverBar *)self setBounds:0.0, 0.0, v8, v17];
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(PricePopoverBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIImage *)self->_backgroundImage drawInRect:?];
  CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceIn);
  [(UIColor *)self->_imageMaskColor set];
  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;

  CGContextFillRect(CurrentContext, *&v13);
}

- (void)layoutSubviews
{
  v3 = [(UILabel *)self->_priceLabel text];
  v4 = [v3 length];

  if (v4)
  {
    [(PricePopoverBar *)self sizeToFit];
    [(PricePopoverBar *)self bounds];
    v6 = v5;
    v7 = +[StocksPreferences sharedPreferences];
    v8 = [v7 textAttachmentDirectionIsRightToLeft];

    [(UIImageView *)self->_priceChangeSignView frame];
    v10 = v9;
    v12 = v11;
    v13 = RoundToPixel((v6 - v11) * 0.5);
    [(UILabel *)self->_priceLabel frame];
    v16 = v15;
    v52 = v6;
    v17 = (v6 - v15) * 0.5;
    v18 = floorf(v17);
    if (v8)
    {
      v19 = 8.0;
      v53 = 8.0;
      v20 = v18;
      v21 = v14;
      v22 = CGRectGetMaxX(*(&v14 - 2)) + 4.0;
      v23 = v13;
      v24 = v10;
      v25 = v12;
      v26 = v12;
      v27 = v22;
    }

    else
    {
      v21 = v14;
      v28 = [(UIImageView *)self->_priceChangeSignView image];
      v22 = 8.0;
      if (v28)
      {
        v55.origin.x = 8.0;
        v55.origin.y = v13;
        v55.size.width = v10;
        v55.size.height = v12;
        v22 = CGRectGetMaxX(v55) + 4.0;
      }

      v23 = v18;
      v24 = v21;
      v25 = v16;
      v53 = v22;
      v26 = v12;
      v27 = 8.0;
    }

    v29 = v22;
    MaxX = CGRectGetMaxX(*(&v23 - 1));
    [(UILabel *)self->_priceLabel setFrame:v53, v18, v21, v16];
    [(UIImageView *)self->_priceChangeSignView setFrame:v27, v13, v10, v26];
    v31 = [(UILabel *)self->_percentChangeLabel text];
    v32 = [v31 length];

    if (v32)
    {
      [(UIImageView *)self->_percentChangeSignView frame];
      v34 = v33;
      v36 = v35;
      v37 = RoundToPixel((v52 - v35) * 0.5);
      [(UILabel *)self->_percentChangeLabel frame];
      v40 = v38;
      v41 = v39;
      v42 = (v52 - v39) * 0.5;
      v43 = floorf(v42);
      v44 = MaxX + 15.0;
      if (v8)
      {
        v45 = MaxX + 15.0;
        v46 = v43;
        v47 = CGRectGetMaxX(*(&v38 - 2)) + 4.0;
      }

      else
      {
        v47 = MaxX + 15.0;
        v56.origin.x = v44;
        v56.origin.y = v37;
        v56.size.width = v34;
        v56.size.height = v36;
        v48 = CGRectGetMaxX(v56);
        v49 = [(UIImageView *)self->_percentChangeSignView image];
        v50 = 4.0;
        if (!v49)
        {
          v50 = 0.0;
        }

        v44 = v48 + v50;
      }

      [(UIImageView *)self->_percentChangeSignView setFrame:v47, v37, v34, v36, *&v52];
      percentChangeLabel = self->_percentChangeLabel;

      [(UILabel *)percentChangeLabel setFrame:v44, v43, v40, v41];
    }
  }
}

- (void)setPriceString:(id)a3
{
  [(UILabel *)self->_priceLabel setText:a3];

  [(PricePopoverBar *)self setNeedsLayout];
}

- (void)setPercentChange:(id)a3
{
  [(UILabel *)self->_percentChangeLabel setText:a3];

  [(PricePopoverBar *)self setNeedsLayout];
}

- (void)setImageMaskColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_imageMaskColor] & 1) == 0)
  {
    objc_storeStrong(&self->_imageMaskColor, a3);
    [(PricePopoverBar *)self setNeedsDisplay];
  }
}

- (void)setChangeImage:(id)a3
{
  priceChangeSignView = self->_priceChangeSignView;
  v5 = a3;
  [(UIImageView *)priceChangeSignView setImage:v5];
  [(UIImageView *)self->_percentChangeSignView setImage:v5];

  [(PricePopoverBar *)self setNeedsLayout];
}

@end