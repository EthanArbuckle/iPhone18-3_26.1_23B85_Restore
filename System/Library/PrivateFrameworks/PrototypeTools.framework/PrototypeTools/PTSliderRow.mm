@interface PTSliderRow
- (BOOL)isEqual:(id)equal;
- (PTSliderRow)init;
- (PTSliderRow)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)minValue:(double)value maxValue:(double)maxValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (id)minValue:(double)value maxValue:(double)maxValue
{
  [(PTSliderRow *)self setMinValue:value];
  [(PTSliderRow *)self setMaxValue:maxValue];
  return self;
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
    v7.super_class = PTSliderRow;
    v5 = [(PTRow *)&v7 isEqual:equalCopy]&& PTEqualFloats(self->_minValue, equalCopy->_minValue) && PTEqualFloats(self->_maxValue, equalCopy->_maxValue);
  }

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __19__PTSliderRow_hash__block_invoke;
  v9[3] = &unk_27835ECA8;
  v9[4] = self;
  v4 = [builder appendHashingBlocks:{v9, 0}];
  v5 = [builder appendDouble:self->_minValue];
  v6 = [builder appendDouble:self->_maxValue];
  v7 = [builder hash];

  return v7;
}

id __19__PTSliderRow_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PTSliderRow;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PTSliderRow;
  v4 = [(PTRow *)&v6 copyWithZone:zone];
  [v4 setMinValue:self->_minValue];
  [v4 setMaxValue:self->_maxValue];
  [v4 setValueStringFormatter:self->_valueStringFormatter];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PTSliderRow;
  coderCopy = coder;
  [(PTRow *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"minValue" forKey:{self->_minValue, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"maxValue" forKey:self->_maxValue];
}

- (PTSliderRow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PTSliderRow;
  v5 = [(PTRow *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"minValue"];
    v5->_minValue = v6;
    [coderCopy decodeDoubleForKey:@"maxValue"];
    v5->_maxValue = v7;
  }

  return v5;
}

@end