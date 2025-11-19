@interface PTSliderRow
- (BOOL)isEqual:(id)a3;
- (PTSliderRow)init;
- (PTSliderRow)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)minValue:(double)a3 maxValue:(double)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PTSliderRow

- (PTSliderRow)init
{
  v5.receiver = self;
  v5.super_class = PTSliderRow;
  v2 = [(PTRow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PTSliderRow *)v2 setMinValue:0.0];
    [(PTSliderRow *)v3 setMaxValue:1.0];
  }

  return v3;
}

- (id)minValue:(double)a3 maxValue:(double)a4
{
  [(PTSliderRow *)self setMinValue:a3];
  [(PTSliderRow *)self setMaxValue:a4];
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PTSliderRow;
    v5 = [(PTRow *)&v7 isEqual:v4]&& PTEqualFloats(self->_minValue, v4->_minValue) && PTEqualFloats(self->_maxValue, v4->_maxValue);
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __19__PTSliderRow_hash__block_invoke;
  v9[3] = &unk_27835ECA8;
  v9[4] = self;
  v4 = [v3 appendHashingBlocks:{v9, 0}];
  v5 = [v3 appendDouble:self->_minValue];
  v6 = [v3 appendDouble:self->_maxValue];
  v7 = [v3 hash];

  return v7;
}

id __19__PTSliderRow_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PTSliderRow;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PTSliderRow;
  v4 = [(PTRow *)&v6 copyWithZone:a3];
  [v4 setMinValue:self->_minValue];
  [v4 setMaxValue:self->_maxValue];
  [v4 setValueStringFormatter:self->_valueStringFormatter];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PTSliderRow;
  v4 = a3;
  [(PTRow *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"minValue" forKey:{self->_minValue, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"maxValue" forKey:self->_maxValue];
}

- (PTSliderRow)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PTSliderRow;
  v5 = [(PTRow *)&v9 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"minValue"];
    v5->_minValue = v6;
    [v4 decodeDoubleForKey:@"maxValue"];
    v5->_maxValue = v7;
  }

  return v5;
}

@end