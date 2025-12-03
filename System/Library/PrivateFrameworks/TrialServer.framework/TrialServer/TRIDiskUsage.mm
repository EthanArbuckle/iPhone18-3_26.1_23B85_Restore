@interface TRIDiskUsage
+ (id)usageWithNaiveSum:(unint64_t)sum deduplicatedSum:(unint64_t)deduplicatedSum compressedSum:(unint64_t)compressedSum;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUsage:(id)usage;
- (TRIDiskUsage)initWithNaiveSum:(unint64_t)sum deduplicatedSum:(unint64_t)deduplicatedSum compressedSum:(unint64_t)compressedSum;
- (id)copyWithReplacementCompressedSum:(unint64_t)sum;
- (id)copyWithReplacementDeduplicatedSum:(unint64_t)sum;
- (id)copyWithReplacementNaiveSum:(unint64_t)sum;
- (id)description;
@end

@implementation TRIDiskUsage

- (TRIDiskUsage)initWithNaiveSum:(unint64_t)sum deduplicatedSum:(unint64_t)deduplicatedSum compressedSum:(unint64_t)compressedSum
{
  v9.receiver = self;
  v9.super_class = TRIDiskUsage;
  result = [(TRIDiskUsage *)&v9 init];
  if (result)
  {
    result->_naiveSum = sum;
    result->_deduplicatedSum = deduplicatedSum;
    result->_compressedSum = compressedSum;
  }

  return result;
}

+ (id)usageWithNaiveSum:(unint64_t)sum deduplicatedSum:(unint64_t)deduplicatedSum compressedSum:(unint64_t)compressedSum
{
  v5 = [[self alloc] initWithNaiveSum:sum deduplicatedSum:deduplicatedSum compressedSum:compressedSum];

  return v5;
}

- (id)copyWithReplacementNaiveSum:(unint64_t)sum
{
  v5 = objc_alloc(objc_opt_class());
  deduplicatedSum = self->_deduplicatedSum;
  compressedSum = self->_compressedSum;

  return [v5 initWithNaiveSum:sum deduplicatedSum:deduplicatedSum compressedSum:compressedSum];
}

- (id)copyWithReplacementDeduplicatedSum:(unint64_t)sum
{
  v5 = objc_alloc(objc_opt_class());
  naiveSum = self->_naiveSum;
  compressedSum = self->_compressedSum;

  return [v5 initWithNaiveSum:naiveSum deduplicatedSum:sum compressedSum:compressedSum];
}

- (id)copyWithReplacementCompressedSum:(unint64_t)sum
{
  v5 = objc_alloc(objc_opt_class());
  naiveSum = self->_naiveSum;
  deduplicatedSum = self->_deduplicatedSum;

  return [v5 initWithNaiveSum:naiveSum deduplicatedSum:deduplicatedSum compressedSum:sum];
}

- (BOOL)isEqualToUsage:(id)usage
{
  usageCopy = usage;
  v5 = usageCopy;
  if (usageCopy && (naiveSum = self->_naiveSum, naiveSum == [usageCopy naiveSum]) && (deduplicatedSum = self->_deduplicatedSum, deduplicatedSum == objc_msgSend(v5, "deduplicatedSum")))
  {
    compressedSum = self->_compressedSum;
    v9 = compressedSum == [v5 compressedSum];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIDiskUsage *)self isEqualToUsage:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_naiveSum];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_deduplicatedSum];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_compressedSum];
  v7 = [v3 initWithFormat:@"<TRIDiskUsage | naiveSum:%@ deduplicatedSum:%@ compressedSum:%@>", v4, v5, v6];

  return v7;
}

@end