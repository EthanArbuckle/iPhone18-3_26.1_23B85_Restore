@interface MANAutoAssetControlStatisticsBySize
- (MANAutoAssetControlStatisticsBySize)initWithCoder:(id)coder;
- (MANAutoAssetControlStatisticsBySize)initWithInitialValue:(int64_t)value;
- (id)copy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetControlStatisticsBySize

- (MANAutoAssetControlStatisticsBySize)initWithInitialValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = MANAutoAssetControlStatisticsBySize;
  result = [(MANAutoAssetControlStatisticsBySize *)&v5 init];
  if (result)
  {
    result->_patchedAssets = value;
    result->_patchedBytes = value;
    result->_fullAssets = value;
    result->_fullBytes = value;
  }

  return result;
}

- (MANAutoAssetControlStatisticsBySize)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MANAutoAssetControlStatisticsBySize;
  v5 = [(MANAutoAssetControlStatisticsBySize *)&v7 init];
  if (v5)
  {
    v5->_patchedAssets = [coderCopy decodeInt64ForKey:@"patchedAssets"];
    v5->_patchedBytes = [coderCopy decodeInt64ForKey:@"patchedBytes"];
    v5->_fullAssets = [coderCopy decodeInt64ForKey:@"fullAssets"];
    v5->_fullBytes = [coderCopy decodeInt64ForKey:@"fullBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsBySize patchedAssets](self forKey:{"patchedAssets"), @"patchedAssets"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsBySize patchedBytes](self forKey:{"patchedBytes"), @"patchedBytes"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsBySize fullAssets](self forKey:{"fullAssets"), @"fullAssets"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsBySize fullBytes](self forKey:{"fullBytes"), @"fullBytes"}];
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