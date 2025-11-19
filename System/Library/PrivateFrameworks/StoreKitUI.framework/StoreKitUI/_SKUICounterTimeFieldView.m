@interface _SKUICounterTimeFieldView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_SKUICounterTimeFieldView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation _SKUICounterTimeFieldView

- (_SKUICounterTimeFieldView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = _SKUICounterTimeFieldView;
  v3 = [(_SKUICounterTimeFieldView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    labelLabel = v3->_labelLabel;
    v3->_labelLabel = v4;

    v6 = v3->_labelLabel;
    v7 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:14.0];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)v3->_labelLabel setTextAlignment:1];
    [(_SKUICounterTimeFieldView *)v3 addSubview:v3->_labelLabel];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    valueLabel = v3->_valueLabel;
    v3->_valueLabel = v8;

    v10 = v3->_valueLabel;
    v11 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:28.0];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v3->_valueLabel setTextAlignment:1];
    [(_SKUICounterTimeFieldView *)v3 addSubview:v3->_valueLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(_SKUICounterTimeFieldView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_valueLabel frame];
  [(UILabel *)self->_valueLabel sizeThatFits:v4, v6];
  v9 = v8;
  if (v7 >= v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  v11 = (v4 - v10) * 0.5;
  v12 = floorf(v11);
  v13 = 0;
  v28 = CGRectIntegral(*(&v9 - 3));
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  [(UILabel *)self->_valueLabel setFrame:?];
  [(UILabel *)self->_labelLabel frame];
  [(UILabel *)self->_labelLabel sizeThatFits:v4, v6];
  v20 = v19;
  if (v18 >= v4)
  {
    v21 = v4;
  }

  else
  {
    v21 = v18;
  }

  v22 = (v4 - v21) * 0.5;
  v23 = floorf(v22);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MaxY = CGRectGetMaxY(v29);
  [(UILabel *)self->_valueLabel _baselineOffsetFromBottom];
  *&v25 = MaxY - v25 + 2.0;
  v30.origin.y = roundf(*&v25);
  v30.origin.x = v23;
  v30.size.width = v21;
  v30.size.height = v20;
  v31 = CGRectIntegral(v30);
  labelLabel = self->_labelLabel;

  [(UILabel *)labelLabel setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
}

- (void)setBackgroundColor:(id)a3
{
  labelLabel = self->_labelLabel;
  v5 = a3;
  [(UILabel *)labelLabel setBackgroundColor:v5];
  [(UILabel *)self->_valueLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = _SKUICounterTimeFieldView;
  [(_SKUICounterTimeFieldView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UILabel *)self->_labelLabel sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  [(UILabel *)self->_valueLabel sizeThatFits:width, height];
  v11 = v10;
  v13 = v9 + v12;
  [(UILabel *)self->_valueLabel _baselineOffsetFromBottom];
  *&v14 = v13 - v14 + 2.0;
  v15 = ceilf(*&v14);
  if (v7 >= v11)
  {
    v16 = v7;
  }

  else
  {
    v16 = v11;
  }

  if (width < v16)
  {
    v16 = width;
  }

  v17 = v16;
  v18 = ceilf(v17);
  result.height = v15;
  result.width = v18;
  return result;
}

@end