@interface PHAsset(PhotosFaceLayout)
- (id)pfl_creationDate;
- (id)pfl_modificationDate;
@end

@implementation PHAsset(PhotosFaceLayout)

- (id)pfl_creationDate
{
  creationDate = [self creationDate];
  if (!creationDate)
  {
    creationDate = [MEMORY[0x277CBEAA8] distantPast];
  }

  return creationDate;
}

- (id)pfl_modificationDate
{
  modificationDate = [self modificationDate];
  if (!modificationDate)
  {
    modificationDate = [self pfl_creationDate];
  }

  return modificationDate;
}

@end