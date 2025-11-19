@interface PSSpecifier(STStorageAppHeaderCell)
- (uint64_t)setVersionLabelEnabled:()STStorageAppHeaderCell;
- (uint64_t)versionLabelEnabled;
@end

@implementation PSSpecifier(STStorageAppHeaderCell)

- (uint64_t)setVersionLabelEnabled:()STStorageAppHeaderCell
{
  if (a3)
  {
    return [a1 removePropertyForKey:@"stVersionDisabled"];
  }

  else
  {
    return [a1 setProperty:MEMORY[0x277CBEC38] forKey:@"stVersionDisabled"];
  }
}

- (uint64_t)versionLabelEnabled
{
  v1 = [a1 propertyForKey:@"stVersionDisabled"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

@end