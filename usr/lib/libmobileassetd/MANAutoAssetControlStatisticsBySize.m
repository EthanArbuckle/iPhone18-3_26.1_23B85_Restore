@interface MANAutoAssetControlStatisticsBySize
- (MANAutoAssetControlStatisticsBySize)initWithCoder:(id)a3;
- (MANAutoAssetControlStatisticsBySize)initWithInitialValue:(int64_t)a3;
- (id)copy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetControlStatisticsBySize

- (MANAutoAssetControlStatisticsBySize)initWithInitialValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MANAutoAssetControlStatisticsBySize;
  result = [(MANAutoAssetControlStatisticsBySize *)&v5 init];
  if (result)
  {
    result->_patchedAssets = a3;
    result->_patchedBytes = a3;
    result->_fullAssets = a3;
    result->_fullBytes = a3;
  }

  return result;
}

- (MANAutoAssetControlStatisticsBySize)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MANAutoAssetControlStatisticsBySize;
  v5 = [(MANAutoAssetControlStatisticsBySize *)&v7 init];
  if (v5)
  {
    v5->_patchedAssets = [v4 decodeInt64ForKey:@"patchedAssets"];
    v5->_patchedBytes = [v4 decodeInt64ForKey:@"patchedBytes"];
    v5->_fullAssets = [v4 decodeInt64ForKey:@"fullAssets"];
    v5->_fullBytes = [v4 decodeInt64ForKey:@"fullBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsBySize patchedAssets](self forKey:{"patchedAssets"), @"patchedAssets"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsBySize patchedBytes](self forKey:{"patchedBytes"), @"patchedBytes"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsBySize fullAssets](self forKey:{"fullAssets"), @"fullAssets"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsBySize fullBytes](self forKey:{"fullBytes"), @"fullBytes"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MANAutoAssetControlStatisticsBySize);
  [(MANAutoAssetControlStatisticsBySize *)v3 setPatchedAssets:[(MANAutoAssetControlStatisticsBySize *)self patchedAssets]];
  [(MANAutoAssetControlStatisticsBySize *)v3 setPatchedBytes:[(MANAutoAssetControlStatisticsBySize *)self patchedBytes]];
  [(MANAutoAssetControlStatisticsBySize *)v3 setFullAssets:[(MANAutoAssetControlStatisticsBySize *)self fullAssets]];
  [(MANAutoAssetControlStatisticsBySize *)v3 setFullBytes:[(MANAutoAssetControlStatisticsBySize *)self fullBytes]];
  return v3;
}

@end