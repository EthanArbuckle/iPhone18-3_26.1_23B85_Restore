@interface PXSectionedDataSource(Snapshotting)
- (id)objectIdentifierForSpriteTag:()Snapshotting;
@end

@implementation PXSectionedDataSource(Snapshotting)

- (id)objectIdentifierForSpriteTag:()Snapshotting
{
  v5 = [a1 identifier];
  if (v5 == BYTE1(a3))
  {
    v6 = WORD1(a3);
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (HIDWORD(a3) == 0xFFFFFFFF)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = HIDWORD(a3);
    }
  }

  else
  {
    v5 = *MEMORY[0x277D3CFD8];
    v6 = *(MEMORY[0x277D3CFD8] + 8);
    v8 = *(MEMORY[0x277D3CFD8] + 16);
    v7 = *(MEMORY[0x277D3CFD8] + 24);
  }

  if (v5 == [a1 identifier])
  {
    v11[0] = v5;
    v11[1] = v6;
    v11[2] = v8;
    v11[3] = v7;
    v9 = [a1 objectIDAtIndexPath:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end