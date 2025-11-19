@interface TRIDiskUsage
+ (id)usageWithNaiveSum:(unint64_t)a3 deduplicatedSum:(unint64_t)a4 compressedSum:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUsage:(id)a3;
- (TRIDiskUsage)initWithNaiveSum:(unint64_t)a3 deduplicatedSum:(unint64_t)a4 compressedSum:(unint64_t)a5;
- (id)copyWithReplacementCompressedSum:(unint64_t)a3;
- (id)copyWithReplacementDeduplicatedSum:(unint64_t)a3;
- (id)copyWithReplacementNaiveSum:(unint64_t)a3;
- (id)description;
@end

@implementation TRIDiskUsage

- (TRIDiskUsage)initWithNaiveSum:(unint64_t)a3 deduplicatedSum:(unint64_t)a4 compressedSum:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = TRIDiskUsage;
  result = [(TRIDiskUsage *)&v9 init];
  if (result)
  {
    result->_naiveSum = a3;
    result->_deduplicatedSum = a4;
    result->_compressedSum = a5;
  }

  return result;
}

+ (id)usageWithNaiveSum:(unint64_t)a3 deduplicatedSum:(unint64_t)a4 compressedSum:(unint64_t)a5
{
  v5 = [[a1 alloc] initWithNaiveSum:a3 deduplicatedSum:a4 compressedSum:a5];

  return v5;
}

- (id)copyWithReplacementNaiveSum:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  deduplicatedSum = self->_deduplicatedSum;
  compressedSum = self->_compressedSum;

  return [v5 initWithNaiveSum:a3 deduplicatedSum:deduplicatedSum compressedSum:compressedSum];
}

- (id)copyWithReplacementDeduplicatedSum:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  naiveSum = self->_naiveSum;
  compressedSum = self->_compressedSum;

  return [v5 initWithNaiveSum:naiveSum deduplicatedSum:a3 compressedSum:compressedSum];
}

- (id)copyWithReplacementCompressedSum:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  naiveSum = self->_naiveSum;
  deduplicatedSum = self->_deduplicatedSum;

  return [v5 initWithNaiveSum:naiveSum deduplicatedSum:deduplicatedSum compressedSum:a3];
}

- (BOOL)isEqualToUsage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (naiveSum = self->_naiveSum, naiveSum == [v4 naiveSum]) && (deduplicatedSum = self->_deduplicatedSum, deduplicatedSum == objc_msgSend(v5, "deduplicatedSum")))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIDiskUsage *)self isEqualToUsage:v5];
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