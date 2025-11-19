@interface ISRecordSPIFunctionUsage
@end

@implementation ISRecordSPIFunctionUsage

id ____ISRecordSPIFunctionUsage_block_invoke(uint64_t a1)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v2 = __ISCurrentProcessName();
  v3 = v2;
  v4 = @"No Client";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  if (*(a1 + 32))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v6 = @"No Selector";
  }

  if (*(a1 + 40))
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    v9 = [v8 lastPathComponent];
    v10 = [v7 stringWithFormat:@"%@:%i", v9, *(a1 + 48)];
  }

  else
  {
    v10 = @"No Location";
  }

  v14[0] = @"Client";
  v14[1] = @"Class";
  v15[0] = v5;
  v15[1] = @"No Class";
  v14[2] = @"Selector";
  v14[3] = @"Location";
  v15[2] = v6;
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end