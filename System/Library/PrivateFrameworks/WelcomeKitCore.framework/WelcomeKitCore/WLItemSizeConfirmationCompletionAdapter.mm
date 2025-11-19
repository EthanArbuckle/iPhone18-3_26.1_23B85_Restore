@interface WLItemSizeConfirmationCompletionAdapter
- (WLItemSizeConfirmationCompletionAdapter)initWithUnconfirmedItemSize:(unint64_t)a3 segmentSize:(unint64_t)a4 originalSegmentCompletion:(id)a5 originalCompletion:(id)a6;
@end

@implementation WLItemSizeConfirmationCompletionAdapter

- (WLItemSizeConfirmationCompletionAdapter)initWithUnconfirmedItemSize:(unint64_t)a3 segmentSize:(unint64_t)a4 originalSegmentCompletion:(id)a5 originalCompletion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v31.receiver = self;
  v31.super_class = WLItemSizeConfirmationCompletionAdapter;
  v12 = [(WLItemSizeConfirmationCompletionAdapter *)&v31 init];
  if (v12)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __128__WLItemSizeConfirmationCompletionAdapter_initWithUnconfirmedItemSize_segmentSize_originalSegmentCompletion_originalCompletion___block_invoke;
    v25[3] = &unk_279EB5738;
    v27 = v30;
    v28 = a3;
    v29 = a4;
    v13 = v10;
    v26 = v13;
    v14 = MEMORY[0x2743DF630](v25);
    segmentCompletion = v12->_segmentCompletion;
    v12->_segmentCompletion = v14;

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __128__WLItemSizeConfirmationCompletionAdapter_initWithUnconfirmedItemSize_segmentSize_originalSegmentCompletion_originalCompletion___block_invoke_2;
    v19[3] = &unk_279EB5760;
    v22 = v30;
    v23 = a3;
    v24 = a4;
    v20 = v13;
    v21 = v11;
    v16 = MEMORY[0x2743DF630](v19);
    completion = v12->_completion;
    v12->_completion = v16;

    _Block_object_dispose(v30, 8);
  }

  return v12;
}

uint64_t __128__WLItemSizeConfirmationCompletionAdapter_initWithUnconfirmedItemSize_segmentSize_originalSegmentCompletion_originalCompletion___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(*(result + 40) + 8);
  v3 = *(v2 + 24);
  if (v1 > v3)
  {
    v4 = result;
    if (*(result + 56) + v3 <= v1)
    {
      v5 = *(result + 56);
    }

    else
    {
      v5 = v1 - v3;
    }

    result = *(result + 32);
    if (result)
    {
      result = (*(result + 16))(result, v5);
      v2 = *(*(v4 + 40) + 8);
      v3 = *(v2 + 24);
    }

    *(v2 + 24) = v3 + v5;
  }

  return result;
}

uint64_t __128__WLItemSizeConfirmationCompletionAdapter_initWithUnconfirmedItemSize_segmentSize_originalSegmentCompletion_originalCompletion___block_invoke_2(void *a1, void *a2)
{
  v12 = a2;
  if (!v12)
  {
    v4 = a1[6];
    v5 = a1[7];
    while (1)
    {
      v6 = *(*(v4 + 8) + 24);
      if (v6 >= v5)
      {
        break;
      }

      v7 = a1[8] + v6;
      v8 = v5 - v6;
      if (v7 <= v5)
      {
        v9 = a1[8];
      }

      else
      {
        v9 = v8;
      }

      v10 = a1[4];
      if (v10)
      {
        (*(v10 + 16))(v10, v9);
        v4 = a1[6];
        v5 = a1[7];
      }

      *(*(v4 + 8) + 24) += v9;
      v4 = a1[6];
    }
  }

  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))(v3, v12);
  }

  return MEMORY[0x2821F96F8]();
}

@end