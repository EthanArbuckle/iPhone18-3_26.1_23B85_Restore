@interface PTEditFloatRow
- (BOOL)isEqual:(id)equal;
- (PTEditFloatRow)init;
- (PTEditFloatRow)initWithCoder:(id)coder;
- (id)_validatedValue:(id)value;
- (id)between:(double)between and:(double)and;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PTEditFloatRow

- (id)between:(double)between and:(double)and
{
  [(PTEditFloatRow *)self setMinValue:between];
  [(PTEditFloatRow *)self setMaxValue:and];
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

- (id)_validatedValue:(id)value
{
  maxValue = self->_maxValue;
  minValue = self->_minValue;
  [value floatValue];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PTEditFloatRow;
    v5 = [(PTRow *)&v7 isEqual:equalCopy]&& self->_precision == equalCopy->_precision && PTEqualFloats(self->_minValue, equalCopy->_minValue) && PTEqualFloats(self->_maxValue, equalCopy->_maxValue);
  }

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__PTEditFloatRow_hash__block_invoke;
  v10[3] = &unk_27835ECA8;
  v10[4] = self;
  v4 = [builder appendHashingBlocks:{v10, 0}];
  v5 = [builder appendInteger:self->_precision];
  v6 = [builder appendDouble:self->_minValue];
  v7 = [builder appendDouble:self->_maxValue];
  v8 = [builder hash];

  return v8;
}

id __22__PTEditFloatRow_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PTEditFloatRow;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PTEditFloatRow;
  v4 = [(PTRow *)&v6 copyWithZone:zone];
  [v4 setPrecision:self->_precision];
  [v4 setMinValue:self->_minValue];
  [v4 setMaxValue:self->_maxValue];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PTEditFloatRow;
  coderCopy = coder;
  [(PTRow *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_precision forKey:{@"precision", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"minValue" forKey:self->_minValue];
  [coderCopy encodeDouble:@"maxValue" forKey:self->_maxValue];
}

- (PTEditFloatRow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PTEditFloatRow;
  v5 = [(PTRow *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_precision = [coderCopy decodeIntegerForKey:@"precision"];
    [coderCopy decodeDoubleForKey:@"minValue"];
    v5->_minValue = v6;
    [coderCopy decodeDoubleForKey:@"maxValue"];
    v5->_maxValue = v7;
  }

  return v5;
}

@end