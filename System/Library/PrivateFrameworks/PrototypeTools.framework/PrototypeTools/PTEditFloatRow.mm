@interface PTEditFloatRow
- (BOOL)isEqual:(id)a3;
- (PTEditFloatRow)init;
- (PTEditFloatRow)initWithCoder:(id)a3;
- (id)_validatedValue:(id)a3;
- (id)between:(double)a3 and:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PTEditFloatRow

- (id)between:(double)a3 and:(double)a4
{
  [(PTEditFloatRow *)self setMinValue:a3];
  [(PTEditFloatRow *)self setMaxValue:a4];
  return self;
}

- (PTEditFloatRow)init
{
  v5.receiver = self;
  v5.super_class = PTEditFloatRow;
  v2 = [(PTRow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PTEditFloatRow *)v2 setPrecision:2];
    [(PTEditFloatRow *)v3 setMinValue:2.22507386e-308];
    [(PTEditFloatRow *)v3 setMaxValue:1.79769313e308];
  }

  return v3;
}

- (id)_validatedValue:(id)a3
{
  maxValue = self->_maxValue;
  minValue = self->_minValue;
  [a3 floatValue];
  v6 = v5;
  if (minValue >= v6)
  {
    v6 = minValue;
  }

  if (maxValue < v6)
  {
    v6 = maxValue;
  }

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithDouble:v6];
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
    v7.super_class = PTEditFloatRow;
    v5 = [(PTRow *)&v7 isEqual:v4]&& self->_precision == v4->_precision && PTEqualFloats(self->_minValue, v4->_minValue) && PTEqualFloats(self->_maxValue, v4->_maxValue);
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__PTEditFloatRow_hash__block_invoke;
  v10[3] = &unk_27835ECA8;
  v10[4] = self;
  v4 = [v3 appendHashingBlocks:{v10, 0}];
  v5 = [v3 appendInteger:self->_precision];
  v6 = [v3 appendDouble:self->_minValue];
  v7 = [v3 appendDouble:self->_maxValue];
  v8 = [v3 hash];

  return v8;
}

id __22__PTEditFloatRow_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PTEditFloatRow;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PTEditFloatRow;
  v4 = [(PTRow *)&v6 copyWithZone:a3];
  [v4 setPrecision:self->_precision];
  [v4 setMinValue:self->_minValue];
  [v4 setMaxValue:self->_maxValue];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PTEditFloatRow;
  v4 = a3;
  [(PTRow *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_precision forKey:{@"precision", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"minValue" forKey:self->_minValue];
  [v4 encodeDouble:@"maxValue" forKey:self->_maxValue];
}

- (PTEditFloatRow)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PTEditFloatRow;
  v5 = [(PTRow *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_precision = [v4 decodeIntegerForKey:@"precision"];
    [v4 decodeDoubleForKey:@"minValue"];
    v5->_minValue = v6;
    [v4 decodeDoubleForKey:@"maxValue"];
    v5->_maxValue = v7;
  }

  return v5;
}

@end