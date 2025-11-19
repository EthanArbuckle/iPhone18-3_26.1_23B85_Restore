@interface SUCrawlView
@end

@implementation SUCrawlView

id ___SUCrawlView_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2 == 2)
  {
    v3 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v4 = ___SUCrawlView_block_invoke_4;
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_6;
    }

    v3 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v4 = ___SUCrawlView_block_invoke_3;
  }

  v3[2] = v4;
  v3[3] = &unk_27844A280;
  v5 = a1[4];
  v3[5] = a1[5];
  v3[4] = v5;
  v1 = _Block_copy(v3);

LABEL_6:

  return v1;
}

void ___SUCrawlView_block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  ++*(*(*(a1 + 40) + 8) + 24);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v8 subviews];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ((*a4 & 1) == 0)
        {
          (*(*(a1 + 32) + 16))();
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  --*(*(*(a1 + 40) + 8) + 24);
  if ((*a4 & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v8;
    v14 = [v8 subviews];
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * v18);
          v20 = _Block_copy(v7);
          (*(v7 + 2))(v7, v20, v19, a4);

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    --*(*(*(a1 + 40) + 8) + 24);
    v8 = v21;
  }
}

void ___SUCrawlView_block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  ++*(*(*(a1 + 40) + 8) + 24);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [a3 subviews];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ((*a4 & 1) == 0)
        {
          v13 = *(*(&v15 + 1) + 8 * v12);
          (*(*(a1 + 32) + 16))();
          if ((*a4 & 1) == 0)
          {
            v14 = _Block_copy(v7);
            (*(v7 + 2))(v7, v14, v13, a4);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  --*(*(*(a1 + 40) + 8) + 24);
}

@end