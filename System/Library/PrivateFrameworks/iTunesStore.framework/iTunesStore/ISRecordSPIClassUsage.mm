@interface ISRecordSPIClassUsage
@end

@implementation ISRecordSPIClassUsage

id ____ISRecordSPIClassUsage_block_invoke(uint64_t a1)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  v6 = @"No Class";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = __ISCurrentProcessName();
  v9 = v8;
  v10 = @"No Client";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = NSStringFromSelector(*(a1 + 40));
  v13 = v12;
  v14 = @"No Selector";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  if (*(a1 + 48))
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    v18 = [v17 lastPathComponent];
    v19 = [v16 stringWithFormat:@"%@:%i", v18, *(a1 + 56)];
  }

  else
  {
    v19 = @"No Location";
  }

  v23[0] = @"Client";
  v23[1] = @"Class";
  v24[0] = v11;
  v24[1] = v7;
  v23[2] = @"Selector";
  v23[3] = @"Location";
  v24[2] = v15;
  v24[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end