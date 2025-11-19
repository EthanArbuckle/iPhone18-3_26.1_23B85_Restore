@interface RecursivelyObserveOutletsForSettingsAtKeyPathWithBlock
@end

@implementation RecursivelyObserveOutletsForSettingsAtKeyPathWithBlock

void ___RecursivelyObserveOutletsForSettingsAtKeyPathWithBlock_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v7 stringByAppendingFormat:@".%@", v5];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___RecursivelyObserveOutletsForSettingsAtKeyPathWithBlock_block_invoke_2;
  v13[3] = &unk_279ACAC10;
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  v11 = v9;
  v12 = [v6 addAction:v13];
}

void ___RecursivelyObserveOutletsForSettingsAtKeyPathWithBlock_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 stringByAppendingFormat:@".%@", v9];
  }

  else
  {
    v7 = v9;
  }

  v8 = v7;
  _RecursivelyObserveOutletsForSettingsAtKeyPathWithBlock(v5, v7, *(a1 + 40));
}

@end