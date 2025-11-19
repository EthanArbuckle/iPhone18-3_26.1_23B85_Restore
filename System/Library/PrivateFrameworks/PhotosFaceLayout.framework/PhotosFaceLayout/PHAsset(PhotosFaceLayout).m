@interface PHAsset(PhotosFaceLayout)
- (id)pfl_creationDate;
- (id)pfl_modificationDate;
@end

@implementation PHAsset(PhotosFaceLayout)

- (id)pfl_creationDate
{
  v1 = [a1 creationDate];
  if (!v1)
  {
    v1 = [MEMORY[0x277CBEAA8] distantPast];
  }

  return v1;
}

- (id)pfl_modificationDate
{
  v2 = [a1 modificationDate];
  if (!v2)
  {
    v2 = [a1 pfl_creationDate];
  }

  return v2;
}

@end