@interface WAPCStoreSize
- (WAPCStoreSize)initWithMaxStoreSize:(unint64_t)size;
- (id)description;
@end

@implementation WAPCStoreSize

- (WAPCStoreSize)initWithMaxStoreSize:(unint64_t)size
{
  v7.receiver = self;
  v7.super_class = WAPCStoreSize;
  v4 = [(WAPCStoreSize *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(WAPCStoreSize *)v4 setLimit:size];
    [(WAPCStoreSize *)v5 setCurrentSize:0];
    [(WAPCStoreSize *)v5 setStoreNeedsPruning:0];
    [(WAPCStoreSize *)v5 setNoError:1];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = vcvtd_n_f64_u64([(WAPCStoreSize *)self limit], 0xAuLL);
  currentSize = [(WAPCStoreSize *)self currentSize];
  [currentSize doubleValue];
  v7 = v6 * 0.0009765625;
  if ([(WAPCStoreSize *)self storeNeedsPruning])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(WAPCStoreSize *)self noError])
  {
    v9 = @"NO";
  }

  else
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"limit:%f.2KB currentSize:%f.2KB storeNeedsPruning:%@ error:%@", *&v4, *&v7, v8, v9];

  return v10;
}

@end