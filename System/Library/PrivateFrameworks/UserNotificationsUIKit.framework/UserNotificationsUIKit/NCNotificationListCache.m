@interface NCNotificationListCache
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)invalidateCachedHeightIfNecessaryForNotificationRequest:(id)a3 updatedHeight:(double)a4 isContentRevealed:(BOOL)a5 traits:(id)a6;
- (BOOL)recycleNotificationListCell:(id)a3;
- (NCNotificationListCache)init;
- (NCNotificationListCacheDelegate)delegate;
- (double)heightForNotificationRequest:(id)a3 contentProvider:(id)a4 withFrameWidth:(double)a5 isContentRevealed:(BOOL)a6 shouldCalculateHeight:(BOOL)a7 traits:(id)a8;
- (id)_cachedHeaderCellWithTitle:(id)a3;
- (id)_cachedNotificationListCellForRequest:(id)a3 viewControllerDelegate:(id)a4 shouldConfigure:(BOOL)a5;
- (id)_cachedRequestMatchingRequest:(id)a3;
- (id)_newCellForNotificationRequest:(id)a3 viewControllerDelegate:(id)a4;
- (id)coalescingControlsCellWithWidth:(double)a3;
- (id)coalescingHeaderCellWithTitle:(id)a3 clearAllText:(id)a4 width:(double)a5;
- (id)contentConfigurationForContentProvider:(id)a3 isContentRevealed:(BOOL)a4 traits:(id)a5;
- (id)contentConfigurationForListCell:(id)a3 isContentRevealed:(BOOL)a4;
- (id)listCellForNotificationRequest:(id)a3 viewControllerDelegate:(id)a4 createNewIfNecessary:(BOOL)a5 shouldConfigure:(BOOL)a6;
- (unint64_t)currentCellHeightCacheCount;
- (void)_clearAllHeightCaches;
- (void)clearCacheForNotificationRequest:(id)a3;
- (void)clearCachedHeightsForNotificationRequest:(id)a3;
- (void)recycleNotificationListCoalescingControlsCell:(id)a3;
- (void)recycleNotificationListCoalescingHeaderCell:(id)a3;
- (void)removeNotificationRequest:(id)a3;
- (void)updateNotificationRequest:(id)a3;
@end

@implementation NCNotificationListCache

- (NCNotificationListCache)init
{
  v14.receiver = self;
  v14.super_class = NCNotificationListCache;
  v2 = [(NCNotificationListCache *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NCNotificationCellHeightDictionary);
    cellHeightCache = v2->_cellHeightCache;
    v2->_cellHeightCache = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    notificationListCellCache = v2->_notificationListCellCache;
    v2->_notificationListCellCache = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    notificationListCoalescingHeaderCache = v2->_notificationListCoalescingHeaderCache;
    v2->_notificationListCoalescingHeaderCache = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    notificationListCoalescingControlsCache = v2->_notificationListCoalescingControlsCache;
    v2->_notificationListCoalescingControlsCache = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    notificationListCellsForRequests = v2->_notificationListCellsForRequests;
    v2->_notificationListCellsForRequests = v11;
  }

  return v2;
}

- (void)clearCacheForNotificationRequest:(id)a3
{
  v4 = [(NCNotificationListCache *)self _cachedRequestMatchingRequest:a3];
  if (v4)
  {
    v6 = v4;
    [(NCNotificationListCache *)self clearCachedHeightsForNotificationRequest:v4];
    v5 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [v5 removeObjectForKey:v6];
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)clearCachedHeightsForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListCache *)self cellHeightCache];
  [v5 removeAllHeightsForRequest:v4];
}

- (void)removeNotificationRequest:(id)a3
{
  v4 = [(NCNotificationListCache *)self _cachedRequestMatchingRequest:a3];
  if (v4)
  {
    v8 = v4;
    [(NCNotificationListCache *)self clearCacheForNotificationRequest:v4];
    v5 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    v6 = [v5 objectForKey:v8];

    v7 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [v7 removeObjectForKey:v8];

    [(NCNotificationListCache *)self recycleNotificationListCell:v6];
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)updateNotificationRequest:(id)a3
{
  v9 = a3;
  v4 = [(NCNotificationListCache *)self _cachedRequestMatchingRequest:?];
  if (v4)
  {
    v5 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    v6 = [v5 objectForKey:v4];

    [(NCNotificationListCache *)self clearCachedHeightsForNotificationRequest:v4];
    v7 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [v7 removeObjectForKey:v4];

    v8 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [v8 setObject:v6 forKey:v9];
  }
}

- (id)contentConfigurationForListCell:(id)a3 isContentRevealed:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 notificationViewController];
  v7 = objc_opt_new();
  [v7 setRevealed:v4];
  [v7 setHighlighted:{objc_msgSend(v6, "isHighlighted")}];
  [v7 setDateHidden:{objc_msgSend(v5, "hideDate")}];
  v8 = [v5 currentTraits];

  LOBYTE(v5) = [v8 alignContentToBottom];
  v9 = [v6 staticContentProvider];
  v10 = v9;
  if (v5)
  {
    [v9 secondaryTextCompact];
  }

  else
  {
    [v9 secondaryText];
  }
  v11 = ;

  [v7 setBodyContentType:{objc_msgSend(v11, "nc_contentType")}];
  [v7 setTraits:v8];

  return v7;
}

- (id)contentConfigurationForContentProvider:(id)a3 isContentRevealed:(BOOL)a4 traits:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setRevealed:v5];
  [v9 setHighlighted:{objc_msgSend(v8, "isHighlighted")}];
  v10 = [v8 date];
  [v9 setDateHidden:v10 != 0];

  if ([v7 alignContentToBottom])
  {
    [v8 secondaryTextCompact];
  }

  else
  {
    [v8 secondaryText];
  }
  v11 = ;

  [v9 setBodyContentType:{objc_msgSend(v11, "nc_contentType")}];
  [v9 setTraits:v7];

  return v9;
}

- (double)heightForNotificationRequest:(id)a3 contentProvider:(id)a4 withFrameWidth:(double)a5 isContentRevealed:(BOOL)a6 shouldCalculateHeight:(BOOL)a7 traits:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = [(NCNotificationListCache *)self listCellForNotificationRequest:v14 viewControllerDelegate:0 createNewIfNecessary:0 shouldConfigure:0];
  v18 = [v17 notificationViewController];
  v19 = [v17 notificationViewController];
  v20 = [v19 staticContentProvider];

  if (!v20)
  {
    [v18 _setupStaticContentProvider];
  }

  v21 = [v18 staticContentProvider];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v15;
  }

  v24 = v23;

  v25 = [(NCNotificationListCache *)self contentConfigurationForContentProvider:v24 isContentRevealed:v10 traits:v16];

  [v25 setTraits:v16];
  v26 = [(NCNotificationListCache *)self cellHeightCache];
  v27 = [v26 heightForRequest:v14 withContentConfiguration:v25];

  if (!v27)
  {
    v27 = &unk_2830158A0;
    if (v17)
    {
      if (v9)
      {
        if (v18)
        {
          v31 = [v18 notificationRequest];
          v32 = [v31 matchesRequest:v14];

          v27 = &unk_2830158A0;
          if (a5 > 0.0)
          {
            if (v32)
            {
              [v18 setHasUpdatedContent];
              [v18 updateContent];
              [v17 sizeThatFits:v16 withTraits:{a5, 1.79769313e308}];
              v34 = v33;
              v27 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
              v35 = [(NCNotificationListCache *)self cellHeightCache];
              [v35 setHeight:v14 forRequest:v25 withContentConfiguration:v34];
            }
          }
        }
      }
    }
  }

  [v27 floatValue];
  v29 = v28;

  return v29;
}

- (BOOL)invalidateCachedHeightIfNecessaryForNotificationRequest:(id)a3 updatedHeight:(double)a4 isContentRevealed:(BOOL)a5 traits:(id)a6
{
  v7 = a5;
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [(NCNotificationListCache *)self listCellForNotificationRequest:v10 viewControllerDelegate:0 createNewIfNecessary:0 shouldConfigure:0];
  v13 = [(NCNotificationListCache *)self contentConfigurationForListCell:v12 isContentRevealed:v7];
  [v13 setTraits:v11];

  v14 = [(NCNotificationListCache *)self cellHeightCache];
  v15 = [v14 heightForRequest:v10 withContentConfiguration:v13];

  if (v15 && ([v15 floatValue], (BSFloatApproximatelyEqualToFloat() & 1) == 0))
  {
    v17 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEBUG))
    {
      v33 = v17;
      v34 = [v10 notificationIdentifier];
      v35 = [v34 un_logDigest];
      [v15 floatValue];
      *buf = 138544130;
      v44 = v35;
      v45 = 2048;
      v46 = v36;
      v47 = 2048;
      v48 = a4;
      v49 = 2112;
      v50 = v13;
      _os_log_debug_impl(&dword_21E77E000, v33, OS_LOG_TYPE_DEBUG, "Notification list invalidating cached height for request %{public}@ [cachedHeight=%.2f, updatedHeight=%.2f, cellContentConfiguration=%@]", buf, 0x2Au);
    }

    v18 = [v12 notificationViewController];
    v19 = [v18 staticContentProvider];

    v20 = [(NCNotificationListCache *)self cellHeightCache];
    v21 = v20;
    if (v19)
    {
      [v20 removeHeightForContentConfiguration:v13 forRequest:v10];
    }

    else
    {
      [v20 removeAllHeightsForRequest:v10];
    }

    v22 = [v12 notificationViewController];
    v23 = [v22 staticContentProvider];

    if (v23)
    {
      v24 = [(NCNotificationListCache *)self cellHeightCache];
      v25 = [v24 cellHeightDictionary];
      v26 = [v10 identifiersString];
      v27 = [v25 objectForKey:v26];

      if (v27)
      {
        v28 = [v27 cellHeightForConfigurationDictionary];
        v29 = [v28 allKeys];
        v30 = [v29 copy];

        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = __122__NCNotificationListCache_invalidateCachedHeightIfNecessaryForNotificationRequest_updatedHeight_isContentRevealed_traits___block_invoke;
        v40 = &unk_278372328;
        v42 = v7;
        v41 = v27;
        [v30 enumerateObjectsUsingBlock:&v37];
        if (![v30 count])
        {
          v31 = [(NCNotificationListCache *)self cellHeightCache];
          [v31 removeAllHeightsForRequest:v10];
        }
      }
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __122__NCNotificationListCache_invalidateCachedHeightIfNecessaryForNotificationRequest_updatedHeight_isContentRevealed_traits___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6 = v3;
  if (v4 == [v3 isRevealed])
  {
    v5 = [*(a1 + 32) cellHeightForConfigurationDictionary];
    [v5 removeObjectForKey:v6];
  }
}

- (id)listCellForNotificationRequest:(id)a3 viewControllerDelegate:(id)a4 createNewIfNecessary:(BOOL)a5 shouldConfigure:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(NCNotificationListCache *)self notificationListCellsForRequests];
  v13 = [v12 objectForKey:v10];

  if (!v13 && v7)
  {
    v13 = [(NCNotificationListCache *)self _cachedNotificationListCellForRequest:v10 viewControllerDelegate:v11 shouldConfigure:v6];
    if (!v13)
    {
      v13 = [(NCNotificationListCache *)self _newCellForNotificationRequest:v10 viewControllerDelegate:v11];
    }

    v14 = *(MEMORY[0x277CBF2C0] + 16);
    v17[0] = *MEMORY[0x277CBF2C0];
    v17[1] = v14;
    v17[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v13 setTransform:v17];
    [v13 setAlpha:1.0];
    v15 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [v15 setObject:v13 forKey:v10];
  }

  return v13;
}

- (BOOL)recycleNotificationListCell:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  v5 = [(NCNotificationListCache *)self notificationListCellsForRequests];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __55__NCNotificationListCache_recycleNotificationListCell___block_invoke;
  v17 = &unk_278372350;
  v6 = v4;
  v18 = v6;
  v19 = &v20;
  [v5 enumerateKeysAndObjectsUsingBlock:&v14];

  if (v21[5])
  {
    v7 = [(NCNotificationListCache *)self notificationListCellsForRequests:v14];
    [v7 removeObjectForKey:v21[5]];
  }

  v8 = [(NCNotificationListCache *)self notificationListCellCache:v14];
  v9 = [v8 count];
  if (v6)
  {
    v10 = v9 >= 0x14;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;

  if (v11)
  {
    [v6 prepareForReuse];
    v12 = [(NCNotificationListCache *)self notificationListCellCache];
    [v12 addObject:v6];
  }

  _Block_object_dispose(&v20, 8);
  return v11;
}

void __55__NCNotificationListCache_recycleNotificationListCell___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (id)coalescingHeaderCellWithTitle:(id)a3 clearAllText:(id)a4 width:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(NCNotificationListCache *)self _cachedHeaderCellWithTitle:v9];
  if (!v10)
  {
    v11 = [NCNotificationListCoalescingHeaderCell alloc];
    v10 = [(NCNotificationListCoalescingHeaderCell *)v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  [NCNotificationListCoalescingHeaderCell coalescingHeaderCellHeightForWidth:v9 title:a5];
  [(NCNotificationListCoalescingHeaderCell *)v10 setFrame:0.0, 0.0, a5, v12];
  [(NCNotificationListCoalescingHeaderCell *)v10 setTitle:v9];

  [(NCNotificationListCoalescingHeaderCell *)v10 setClearAllText:v8];
  [(NCNotificationListCoalescingHeaderCell *)v10 resetClearButtonStateAnimated:0];
  [(NCNotificationListCoalescingHeaderCell *)v10 setAdjustsFontForContentSizeCategory:1];
  [(NCNotificationListCoalescingHeaderCell *)v10 setNeedsLayout];

  return v10;
}

- (void)recycleNotificationListCoalescingHeaderCell:(id)a3
{
  v7 = a3;
  v4 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
  v5 = [v4 count];

  if (v5 <= 0x13)
  {
    v6 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
    [v6 addObject:v7];
  }
}

- (id)coalescingControlsCellWithWidth:(double)a3
{
  v5 = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
  v6 = [v5 anyObject];

  if (v6)
  {
    v7 = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
    [v7 removeObject:v6];
  }

  else
  {
    v8 = [NCNotificationListCoalescingControlsCell alloc];
    v6 = [(NCNotificationListCoalescingControlsCell *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  [NCNotificationListCoalescingControlsCell coalescingControlsCellHeightShowingCoalescingControls:1];
  [(NCNotificationListCoalescingControlsCell *)v6 setFrame:0.0, 0.0, a3, v9];
  [(NCNotificationListCoalescingControlsCell *)v6 setAdjustsFontForContentSizeCategory:1];

  return v6;
}

- (void)recycleNotificationListCoalescingControlsCell:(id)a3
{
  v7 = a3;
  v4 = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
  v5 = [v4 count];

  if (v5 <= 0x13)
  {
    v6 = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
    [v6 addObject:v7];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  [(NCNotificationListCache *)self _clearAllHeightCaches];
  v3 = [(NCNotificationListCache *)self notificationListCellsForRequests];
  v4 = [v3 allValues];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_34];

  v5 = [(NCNotificationListCache *)self notificationListCellCache];
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_106];

  v6 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
  [v6 enumerateObjectsUsingBlock:&__block_literal_global_109];

  v7 = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_112_0];

  return 1;
}

void __61__NCNotificationListCache_adjustForContentSizeCategoryChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 notificationViewController];
  [v2 adjustForContentSizeCategoryChange];
}

void __61__NCNotificationListCache_adjustForContentSizeCategoryChange__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 notificationViewController];
  [v2 adjustForContentSizeCategoryChange];
}

- (id)_newCellForNotificationRequest:(id)a3 viewControllerDelegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = [WeakRetained notificationListCacheNotificationViewControllerClass:self];
    if (v10)
    {
      v8 = v10;
    }
  }

  v11 = [[v8 alloc] initWithNotificationRequest:v7];

  [v11 setDelegate:v6];
  v12 = [NCNotificationListCell alloc];
  v13 = [(NCNotificationListCell *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NCNotificationListCell *)v13 setContentViewController:v11];
  [v11 setAssociatedView:v13];

  return v13;
}

- (id)_cachedHeaderCellWithTitle:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__NCNotificationListCache__cachedHeaderCellWithTitle___block_invoke;
    v14[3] = &unk_2783723F8;
    v15 = v4;
    v8 = [v7 objectsPassingTest:v14];
    v9 = [v8 anyObject];

    if (!v9)
    {
      v10 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
      v9 = [v10 anyObject];

      v11 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
      [v11 removeObject:v9];
    }

    v12 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
    [v12 removeObject:v9];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __54__NCNotificationListCache__cachedHeaderCellWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_cachedNotificationListCellForRequest:(id)a3 viewControllerDelegate:(id)a4 shouldConfigure:(BOOL)a5
{
  v5 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NCNotificationListCache *)self notificationListCellCache];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(NCNotificationListCache *)self notificationListCellCache];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __104__NCNotificationListCache__cachedNotificationListCellForRequest_viewControllerDelegate_shouldConfigure___block_invoke;
    v34[3] = &unk_278372420;
    v13 = v8;
    v35 = v13;
    v14 = [v12 objectsPassingTest:v34];
    v15 = [v14 anyObject];

    if (v15)
    {
      v16 = [(NCNotificationListCache *)self notificationListCellCache];
      [v16 removeObject:v15];

      v17 = [v15 notificationViewController];
      v18 = v17;
      if (v5)
      {
        v19 = [v17 delegate];

        if (v19 == v9)
        {
          [v18 invalidateContentProviders];
        }

        else
        {
          [v18 setDelegate:v9];
        }
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = [(NCNotificationListCache *)self notificationListCellCache];
      v15 = [v18 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v15)
      {
        v28 = v13;
        v29 = v5;
        v20 = *v31;
LABEL_9:
        v21 = 0;
        while (1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v30 + 1) + 8 * v21);
          v23 = [v22 notificationViewController];
          v24 = [v23 hasCommittedToPresentingCustomContentProvidingViewController];

          if (!v24)
          {
            break;
          }

          if (v15 == ++v21)
          {
            v15 = [v18 countByEnumeratingWithState:&v30 objects:v36 count:16];
            if (v15)
            {
              goto LABEL_9;
            }

            goto LABEL_21;
          }
        }

        v15 = v22;

        if (!v15)
        {
          goto LABEL_22;
        }

        v25 = [(NCNotificationListCache *)self notificationListCellCache];
        [v25 removeObject:v15];

        v26 = [v15 notificationViewController];
        v18 = v26;
        if (v29)
        {
          [v26 setDelegate:v9];
          [v18 setNotificationContentViewHidden:0];
          [v18 setNotificationRequest:v28];
        }

        else
        {
          [v26 setNotificationContentViewHidden:1];
        }
      }
    }

LABEL_21:

LABEL_22:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

BOOL __104__NCNotificationListCache__cachedNotificationListCellForRequest_viewControllerDelegate_shouldConfigure___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 notificationViewController];
  v4 = [v3 notificationRequest];
  v5 = v4 == *(a1 + 32);

  return v5;
}

- (void)_clearAllHeightCaches
{
  v3 = [(NCNotificationListCache *)self cellHeightCache];
  v2 = [v3 cellHeightDictionary];
  [v2 removeAllObjects];
}

- (id)_cachedRequestMatchingRequest:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v5 = [(NCNotificationListCache *)self notificationListCellsForRequests];
  v6 = [v5 allKeys];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NCNotificationListCache__cachedRequestMatchingRequest___block_invoke;
  v10[3] = &unk_278372448;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __57__NCNotificationListCache__cachedRequestMatchingRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 matchesRequest:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (NCNotificationListCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)currentCellHeightCacheCount
{
  v2 = [(NCNotificationCellHeightDictionary *)self->_cellHeightCache cellHeightDictionary];
  v3 = [v2 count];

  return v3;
}

@end