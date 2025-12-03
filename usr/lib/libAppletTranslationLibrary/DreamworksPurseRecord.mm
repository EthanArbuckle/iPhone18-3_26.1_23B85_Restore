@interface DreamworksPurseRecord
+ (void)adjustRecords:(id)records;
@end

@implementation DreamworksPurseRecord

+ (void)adjustRecords:(id)records
{
  recordsCopy = records;
  v4 = [recordsCopy count];
  if (v4 >= 2)
  {
    v5 = v4;
    v6 = MEMORY[0x277D85DD0];
    for (i = 1; i != v5; ++i)
    {
      v15[0] = v6;
      v15[1] = 3221225472;
      v15[2] = __39__DreamworksPurseRecord_adjustRecords___block_invoke;
      v15[3] = &__block_descriptor_40_e31_B16__0__DreamworksPurseRecord_8l;
      v15[4] = i;
      v8 = [recordsCopy firstWhere:v15];
      if ([v8 trt] != 1 && objc_msgSend(v8, "trt") != 64)
      {
        seqnum = [v8 seqnum];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __39__DreamworksPurseRecord_adjustRecords___block_invoke_2;
        v12[3] = &unk_278874C50;
        v13 = v8;
        v14 = seqnum;
        v10 = [recordsCopy firstWhere:v12];
        v11 = v10;
        if (v10)
        {
          [v10 setSeqnum:(seqnum - 1)];
        }
      }
    }
  }
}

BOOL __39__DreamworksPurseRecord_adjustRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 number];
  v5 = [*(a1 + 32) number] + 1 == v4 && objc_msgSend(v3, "seqnum") == *(a1 + 40);

  return v5;
}

@end