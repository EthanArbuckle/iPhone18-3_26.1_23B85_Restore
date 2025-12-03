@interface TVPInterstitialCollection
- (TVPInterstitialCollection)initWithInterstitials:(id)interstitials;
- (double)timeAdjustedByIncludingInterstitials:(double)interstitials;
- (double)timeAdjustedByRemovingInterstitials:(double)interstitials;
- (id)interstitialForTime:(double)time;
- (id)mergedInterstitialForTime:(double)time;
@end

@implementation TVPInterstitialCollection

- (TVPInterstitialCollection)initWithInterstitials:(id)interstitials
{
  interstitialsCopy = interstitials;
  v25.receiver = self;
  v25.super_class = TVPInterstitialCollection;
  v5 = [(TVPInterstitialCollection *)&v25 init];
  if (v5)
  {
    v6 = [interstitialsCopy sortedArrayUsingComparator:&__block_literal_global_0];
    objc_storeStrong(&v5->_interstitials, v6);
    array = [MEMORY[0x277CBEB18] array];
    v8 = [(NSArray *)v5->_interstitials count];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    interstitials = v5->_interstitials;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __51__TVPInterstitialCollection_initWithInterstitials___block_invoke_2;
    v19 = &unk_279D7B8F0;
    v23 = v8;
    v10 = v5;
    v20 = v10;
    v22 = v24;
    v11 = array;
    v21 = v11;
    [(NSArray *)interstitials enumerateObjectsUsingBlock:&v16];
    v12 = objc_alloc(MEMORY[0x277CBEA60]);
    v13 = [v12 initWithArray:{v11, v16, v17, v18, v19}];
    interstitialsWithAdjacentsMerged = v10->_interstitialsWithAdjacentsMerged;
    v10->_interstitialsWithAdjacentsMerged = v13;

    _Block_object_dispose(v24, 8);
  }

  return v5;
}

uint64_t __51__TVPInterstitialCollection_initWithInterstitials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 timeRange];
  [v5 startTime];
  v7 = v6;

  v8 = [v4 timeRange];

  [v8 startTime];
  v10 = v9;

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

void __51__TVPInterstitialCollection_initWithInterstitials___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v22 = a2;
  if (*(a1 + 56) - 1 <= a3)
  {
    v5 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = [*(*(a1 + 32) + 8) objectAtIndex:a3 + 1];
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_7:
  v6 = [v22 timeRange];
  [v6 startTime];
  *(*(*(a1 + 48) + 8) + 24) = v7;

  if (!v5)
  {
LABEL_9:
    v14 = objc_alloc_init(TVPMutableInterstitial);
    v15 = [TVPTimeRange alloc];
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v17 = [v22 timeRange];
    [v17 endTime];
    v19 = [(TVPTimeRange *)v15 initWithStartTime:v16 endTime:v18];

    [(TVPInterstitial *)v14 setTimeRange:v19];
    [*(a1 + 40) addObject:v14];
    if (v5)
    {
      v20 = [v5 timeRange];
      [v20 startTime];
      *(*(*(a1 + 48) + 8) + 24) = v21;
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    goto LABEL_13;
  }

LABEL_8:
  v8 = [v5 timeRange];
  [v8 startTime];
  v10 = v9;
  v11 = [v22 timeRange];
  [v11 endTime];
  v13 = v12;

  if (v10 != v13)
  {
    goto LABEL_9;
  }

LABEL_13:
}

- (double)timeAdjustedByRemovingInterstitials:(double)interstitials
{
  v31 = *MEMORY[0x277D85DE8];
  interstitials = self->_interstitials;
  if (interstitials)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    interstitialsCopy = interstitials;
    v6 = [(NSArray *)interstitialsCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      v9 = 0.0;
      v10 = 0.0;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(interstitialsCopy);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        timeRange = [v12 timeRange];
        [timeRange startTime];
        v15 = v14 - v9;

        if (interstitials <= v15)
        {
          break;
        }

        timeRange2 = [v12 timeRange];
        [timeRange2 endTime];
        v18 = v17;
        timeRange3 = [v12 timeRange];
        [timeRange3 startTime];
        v21 = interstitials - (v18 - v20);

        if (v21 - v15 >= 0.0)
        {
          interstitials = v21 - v15;
        }

        else
        {
          interstitials = 0.0;
        }

        v10 = v10 + v15;
        timeRange4 = [v12 timeRange];
        [timeRange4 endTime];
        v9 = v23;

        if (v7 == ++v11)
        {
          v7 = [(NSArray *)interstitialsCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v10 = 0.0;
    }

    interstitials = interstitials + v10;
  }

  v24 = *MEMORY[0x277D85DE8];
  return interstitials;
}

- (double)timeAdjustedByIncludingInterstitials:(double)interstitials
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_interstitials;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = 0.0;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      timeRange = [v10 timeRange];
      [timeRange startTime];
      v13 = v12;

      if (v8 + interstitials <= v13)
      {
        break;
      }

      timeRange2 = [v10 timeRange];
      [timeRange2 startTime];
      interstitials = interstitials - (v15 - v8);

      timeRange3 = [v10 timeRange];
      [timeRange3 endTime];
      v8 = v17;

      if (v6 == ++v9)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0.0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8 + interstitials;
}

- (id)interstitialForTime:(double)time
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  interstitials = [(TVPInterstitialCollection *)self interstitials];
  v5 = [interstitials countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(interstitials);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        timeRange = [v8 timeRange];
        v10 = [timeRange containsTime:time];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [interstitials countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)mergedInterstitialForTime:(double)time
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  interstitialsWithAdjacentsMerged = [(TVPInterstitialCollection *)self interstitialsWithAdjacentsMerged];
  v5 = [interstitialsWithAdjacentsMerged countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(interstitialsWithAdjacentsMerged);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        timeRange = [v8 timeRange];
        v10 = [timeRange containsTime:time];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [interstitialsWithAdjacentsMerged countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

@end