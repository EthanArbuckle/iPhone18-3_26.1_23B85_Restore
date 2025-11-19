@interface TSKAggregateSearchTargetProvider
- (TSKAggregateSearchTargetProvider)initWithSearchTargetProviders:(id)a3;
- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5 inDirection:(unint64_t)a6;
- (unint64_t)p_firstTargetIndexForProvider:(id)a3;
- (unint64_t)rootSearchTargetCountThroughIndex:(unint64_t)a3;
- (void)dealloc;
- (void)p_enumerateTargetProvidersFromTargetIndex:(unint64_t)a3 direction:(unint64_t)a4 action:(id)a5;
- (void)withRootSearchTargetAtIndex:(unint64_t)a3 executeBlock:(id)a4;
@end

@implementation TSKAggregateSearchTargetProvider

- (TSKAggregateSearchTargetProvider)initWithSearchTargetProviders:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSKAggregateSearchTargetProvider;
  v4 = [(TSKAggregateSearchTargetProvider *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TSKAggregateSearchTargetProvider *)v4 setSearchTargetProviders:a3];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKAggregateSearchTargetProvider;
  [(TSKAggregateSearchTargetProvider *)&v3 dealloc];
}

- (unint64_t)rootSearchTargetCountThroughIndex:(unint64_t)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAggregateSearchTargetProvider rootSearchTargetCountThroughIndex:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAggregateSearchTargetProvider.m"), 44, @"no implementation because it's not currently used outside TSKDocumentRoot"}];
  return 0;
}

- (void)withRootSearchTargetAtIndex:(unint64_t)a3 executeBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  searchTargetProviders = self->_searchTargetProviders;
  v7 = [(NSArray *)searchTargetProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      v11 = a3;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(searchTargetProviders);
        }

        v12 = *(*(&v14 + 1) + 8 * v10);
        v13 = [v12 rootSearchTargetCountThroughIndex:v11];
        a3 = v11 - v13;
        if (v11 < v13)
        {
          [v12 withRootSearchTargetAtIndex:v11 executeBlock:a4];
          return;
        }

        ++v10;
        v11 -= v13;
      }

      while (v8 != v10);
      v8 = [(NSArray *)searchTargetProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }
}

- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5 inDirection:(unint64_t)a6
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__TSKAggregateSearchTargetProvider_nextRootSearchTargetIndexFromIndex_forString_options_inDirection___block_invoke;
  v8[3] = &unk_279D47E00;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = self;
  v8[6] = &v9;
  v8[4] = a4;
  [(TSKAggregateSearchTargetProvider *)self p_enumerateTargetProvidersFromTargetIndex:a3 direction:a6 action:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

BOOL __101__TSKAggregateSearchTargetProvider_nextRootSearchTargetIndexFromIndex_forString_options_inDirection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 nextRootSearchTargetIndexFromIndex:a3 forString:*(a1 + 32) options:*(a1 + 56) inDirection:*(a1 + 64)];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) p_firstTargetIndexForProvider:a2] + v5;
  }

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

- (void)p_enumerateTargetProvidersFromTargetIndex:(unint64_t)a3 direction:(unint64_t)a4 action:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  searchTargetProviders = self->_searchTargetProviders;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || (v8 = a3, (v10 = [(NSArray *)self->_searchTargetProviders count]) == 0))
  {
LABEL_6:
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = v10;
  v12 = 0;
  while (1)
  {
    v13 = [(NSArray *)self->_searchTargetProviders objectAtIndex:v12];
    v14 = [v13 rootSearchTargetCountThroughIndex:v8];
    if (v8 < v14)
    {
      break;
    }

    ++v12;
    v8 -= v14;
    if (v11 == v12)
    {
      goto LABEL_6;
    }
  }

  if ((*(a5 + 2))(a5, v13, v8))
  {
    v20 = self->_searchTargetProviders;
    if (!a4)
    {
      v21 = [(NSArray *)self->_searchTargetProviders count];
      if (v12 >= v21)
      {
        v22 = v12 + 1;
      }

      else
      {
        v22 = v21;
      }

      if (v12 < v21)
      {
        v23 = v12 + 1;
      }

      else
      {
        v23 = v21;
      }

      v15 = [(NSArray *)v20 subarrayWithRange:v23, v22 - v23];
      goto LABEL_8;
    }

    searchTargetProviders = [(NSArray *)self->_searchTargetProviders subarrayWithRange:0, v12];
LABEL_7:
    v15 = [(NSArray *)searchTargetProviders reverseObjectEnumerator];
LABEL_8:
    searchTargetProviders = v15;
    goto LABEL_9;
  }

  searchTargetProviders = 0;
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [(NSArray *)searchTargetProviders countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
LABEL_11:
    v19 = 0;
    while (1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(searchTargetProviders);
      }

      if (!(*(a5 + 2))(a5, *(*(&v24 + 1) + 8 * v19), 0x7FFFFFFFFFFFFFFFLL))
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [(NSArray *)searchTargetProviders countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v17)
        {
          goto LABEL_11;
        }

        return;
      }
    }
  }
}

- (unint64_t)p_firstTargetIndexForProvider:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  searchTargetProviders = self->_searchTargetProviders;
  v5 = [(NSArray *)searchTargetProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(searchTargetProviders);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if (v10 == a3)
    {
      return v7;
    }

    v7 += [v10 rootSearchTargetCountThroughIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v6 == ++v9)
    {
      v6 = [(NSArray *)searchTargetProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return v7;
    }
  }
}

@end