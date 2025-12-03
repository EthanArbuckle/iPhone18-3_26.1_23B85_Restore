@interface TIHistogram
- (TIHistogram)init;
- (id)descriptionOfCumulativeDistributionFunction;
- (id)sortedNumbers;
- (int64_t)countForNumber:(id)number;
- (void)addNumber:(id)number;
- (void)enumerateCumulativeDistributionFunctionUsingBlock:(id)block;
- (void)enumerateNumbersUsingBlock:(id)block;
@end

@implementation TIHistogram

- (id)descriptionOfCumulativeDistributionFunction
{
  string = [MEMORY[0x277CCAB68] string];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__TIHistogram_descriptionOfCumulativeDistributionFunction__block_invoke;
  v6[3] = &unk_279DA0D40;
  v4 = string;
  v7 = v4;
  [(TIHistogram *)self enumerateCumulativeDistributionFunctionUsingBlock:v6];

  return v4;
}

- (void)enumerateCumulativeDistributionFunctionUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__TIHistogram_enumerateCumulativeDistributionFunctionUsingBlock___block_invoke;
  v6[3] = &unk_279DA0D18;
  v8 = v9;
  v5 = blockCopy;
  v6[4] = self;
  v7 = v5;
  [(TIHistogram *)self enumerateNumbersUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

- (void)enumerateNumbersUsingBlock:(id)block
{
  blockCopy = block;
  sortedNumbers = [(TIHistogram *)self sortedNumbers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TIHistogram_enumerateNumbersUsingBlock___block_invoke;
  v7[3] = &unk_279DA0CF0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [sortedNumbers enumerateObjectsUsingBlock:v7];
}

void __42__TIHistogram_enumerateNumbersUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  (*(v2 + 16))(v2, v4, [v3 countForNumber:v4]);
}

- (id)sortedNumbers
{
  allKeys = [(NSMutableDictionary *)self->_counts allKeys];
  v3 = [allKeys sortedArrayUsingComparator:&__block_literal_global_2890];

  return v3;
}

uint64_t __28__TIHistogram_sortedNumbers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 <= [v5 integerValue])
  {
    v8 = [v4 integerValue];
    if (v8 >= [v5 integerValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)countForNumber:(id)number
{
  v3 = [(NSMutableDictionary *)self->_counts objectForKey:number];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)addNumber:(id)number
{
  counts = self->_counts;
  numberCopy = number;
  v6 = [(NSMutableDictionary *)counts objectForKey:numberCopy];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "integerValue") + 1}];

  [(NSMutableDictionary *)self->_counts setObject:v7 forKey:numberCopy];
  ++self->_totalCount;
}

- (TIHistogram)init
{
  v6.receiver = self;
  v6.super_class = TIHistogram;
  v2 = [(TIHistogram *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    counts = v2->_counts;
    v2->_counts = v3;
  }

  return v2;
}

@end