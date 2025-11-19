@interface ZL27scoreFromSubtokenScoresProd
@end

@implementation ZL27scoreFromSubtokenScoresProd

float _ZL27scoreFromSubtokenScoresProd_block_invoke_6(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = [v9 shape];
  v11 = [v10 objectAtIndexedSubscript:2];
  v12 = [v11 intValue];

  if (a6 >= 1)
  {
    v13 = a6 + a5;
    v14 = 1.0;
    while (1)
    {
      if (a5 < v12)
      {
        v15 = [v9 shape];
        v16 = [v15 objectAtIndexedSubscript:1];
        if ([v16 intValue] <= a3)
        {
          goto LABEL_7;
        }

        v17 = [v9 shape];
        v18 = [v17 objectAtIndexedSubscript:3];
        v19 = [v18 intValue] > a4;

        if (v19)
        {
          break;
        }
      }

LABEL_8:
      a5 = (a5 + 1);
      if (a5 >= v13)
      {
        goto LABEL_11;
      }
    }

    v28[0] = &unk_2873DCE38;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v28[1] = v15;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:a5];
    v28[2] = v16;
    v20 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    v28[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    v22 = [v9 objectForKeyedSubscript:v21];
    [v22 floatValue];
    v24 = v23;

    v14 = v14 * v24;
LABEL_7:

    goto LABEL_8;
  }

  v14 = 1.0;
LABEL_11:

  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

@end