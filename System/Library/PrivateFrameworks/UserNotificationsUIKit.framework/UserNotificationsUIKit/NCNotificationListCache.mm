@interface NCNotificationListCache
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)invalidateCachedHeightIfNecessaryForNotificationRequest:(id)request updatedHeight:(double)height isContentRevealed:(BOOL)revealed traits:(id)traits;
- (BOOL)recycleNotificationListCell:(id)cell;
- (NCNotificationListCache)init;
- (NCNotificationListCacheDelegate)delegate;
- (double)heightForNotificationRequest:(id)request contentProvider:(id)provider withFrameWidth:(double)width isContentRevealed:(BOOL)revealed shouldCalculateHeight:(BOOL)height traits:(id)traits;
- (id)_cachedHeaderCellWithTitle:(id)title;
- (id)_cachedNotificationListCellForRequest:(id)request viewControllerDelegate:(id)delegate shouldConfigure:(BOOL)configure;
- (id)_cachedRequestMatchingRequest:(id)request;
- (id)_newCellForNotificationRequest:(id)request viewControllerDelegate:(id)delegate;
- (id)coalescingControlsCellWithWidth:(double)width;
- (id)coalescingHeaderCellWithTitle:(id)title clearAllText:(id)text width:(double)width;
- (id)contentConfigurationForContentProvider:(id)provider isContentRevealed:(BOOL)revealed traits:(id)traits;
- (id)contentConfigurationForListCell:(id)cell isContentRevealed:(BOOL)revealed;
- (id)listCellForNotificationRequest:(id)request viewControllerDelegate:(id)delegate createNewIfNecessary:(BOOL)necessary shouldConfigure:(BOOL)configure;
- (unint64_t)currentCellHeightCacheCount;
- (void)_clearAllHeightCaches;
- (void)clearCacheForNotificationRequest:(id)request;
- (void)clearCachedHeightsForNotificationRequest:(id)request;
- (void)recycleNotificationListCoalescingControlsCell:(id)cell;
- (void)recycleNotificationListCoalescingHeaderCell:(id)cell;
- (void)removeNotificationRequest:(id)request;
- (void)updateNotificationRequest:(id)request;
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

- (void)clearCacheForNotificationRequest:(id)request
{
  v4 = [(NCNotificationListCache *)self _cachedRequestMatchingRequest:request];
  if (v4)
  {
    v6 = v4;
    [(NCNotificationListCache *)self clearCachedHeightsForNotificationRequest:v4];
    notificationListCellsForRequests = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [notificationListCellsForRequests removeObjectForKey:v6];
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)clearCachedHeightsForNotificationRequest:(id)request
{
  requestCopy = request;
  cellHeightCache = [(NCNotificationListCache *)self cellHeightCache];
  [cellHeightCache removeAllHeightsForRequest:requestCopy];
}

- (void)removeNotificationRequest:(id)request
{
  v4 = [(NCNotificationListCache *)self _cachedRequestMatchingRequest:request];
  if (v4)
  {
    v8 = v4;
    [(NCNotificationListCache *)self clearCacheForNotificationRequest:v4];
    notificationListCellsForRequests = [(NCNotificationListCache *)self notificationListCellsForRequests];
    v6 = [notificationListCellsForRequests objectForKey:v8];

    notificationListCellsForRequests2 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [notificationListCellsForRequests2 removeObjectForKey:v8];

    [(NCNotificationListCache *)self recycleNotificationListCell:v6];
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)updateNotificationRequest:(id)request
{
  requestCopy = request;
  v4 = [(NCNotificationListCache *)self _cachedRequestMatchingRequest:?];
  if (v4)
  {
    notificationListCellsForRequests = [(NCNotificationListCache *)self notificationListCellsForRequests];
    v6 = [notificationListCellsForRequests objectForKey:v4];

    [(NCNotificationListCache *)self clearCachedHeightsForNotificationRequest:v4];
    notificationListCellsForRequests2 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [notificationListCellsForRequests2 removeObjectForKey:v4];

    notificationListCellsForRequests3 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [notificationListCellsForRequests3 setObject:v6 forKey:requestCopy];
  }
}

- (id)contentConfigurationForListCell:(id)cell isContentRevealed:(BOOL)revealed
{
  revealedCopy = revealed;
  cellCopy = cell;
  notificationViewController = [cellCopy notificationViewController];
  v7 = objc_opt_new();
  [v7 setRevealed:revealedCopy];
  [v7 setHighlighted:{objc_msgSend(notificationViewController, "isHighlighted")}];
  [v7 setDateHidden:{objc_msgSend(cellCopy, "hideDate")}];
  currentTraits = [cellCopy currentTraits];

  LOBYTE(cellCopy) = [currentTraits alignContentToBottom];
  staticContentProvider = [notificationViewController staticContentProvider];
  v10 = staticContentProvider;
  if (cellCopy)
  {
    [staticContentProvider secondaryTextCompact];
  }

  else
  {
    [staticContentProvider secondaryText];
  }
  v11 = ;

  [v7 setBodyContentType:{objc_msgSend(v11, "nc_contentType")}];
  [v7 setTraits:currentTraits];

  return v7;
}

- (id)contentConfigurationForContentProvider:(id)provider isContentRevealed:(BOOL)revealed traits:(id)traits
{
  revealedCopy = revealed;
  traitsCopy = traits;
  providerCopy = provider;
  v9 = objc_opt_new();
  [v9 setRevealed:revealedCopy];
  [v9 setHighlighted:{objc_msgSend(providerCopy, "isHighlighted")}];
  date = [providerCopy date];
  [v9 setDateHidden:date != 0];

  if ([traitsCopy alignContentToBottom])
  {
    [providerCopy secondaryTextCompact];
  }

  else
  {
    [providerCopy secondaryText];
  }
  v11 = ;

  [v9 setBodyContentType:{objc_msgSend(v11, "nc_contentType")}];
  [v9 setTraits:traitsCopy];

  return v9;
}

- (double)heightForNotificationRequest:(id)request contentProvider:(id)provider withFrameWidth:(double)width isContentRevealed:(BOOL)revealed shouldCalculateHeight:(BOOL)height traits:(id)traits
{
  heightCopy = height;
  revealedCopy = revealed;
  requestCopy = request;
  providerCopy = provider;
  traitsCopy = traits;
  v17 = [(NCNotificationListCache *)self listCellForNotificationRequest:requestCopy viewControllerDelegate:0 createNewIfNecessary:0 shouldConfigure:0];
  notificationViewController = [v17 notificationViewController];
  notificationViewController2 = [v17 notificationViewController];
  staticContentProvider = [notificationViewController2 staticContentProvider];

  if (!staticContentProvider)
  {
    [notificationViewController _setupStaticContentProvider];
  }

  staticContentProvider2 = [notificationViewController staticContentProvider];
  v22 = staticContentProvider2;
  if (staticContentProvider2)
  {
    v23 = staticContentProvider2;
  }

  else
  {
    v23 = providerCopy;
  }

  v24 = v23;

  v25 = [(NCNotificationListCache *)self contentConfigurationForContentProvider:v24 isContentRevealed:revealedCopy traits:traitsCopy];

  [v25 setTraits:traitsCopy];
  cellHeightCache = [(NCNotificationListCache *)self cellHeightCache];
  v27 = [cellHeightCache heightForRequest:requestCopy withContentConfiguration:v25];

  if (!v27)
  {
    v27 = &unk_2830158A0;
    if (v17)
    {
      if (heightCopy)
      {
        if (notificationViewController)
        {
          notificationRequest = [notificationViewController notificationRequest];
          v32 = [notificationRequest matchesRequest:requestCopy];

          v27 = &unk_2830158A0;
          if (width > 0.0)
          {
            if (v32)
            {
              [notificationViewController setHasUpdatedContent];
              [notificationViewController updateContent];
              [v17 sizeThatFits:traitsCopy withTraits:{width, 1.79769313e308}];
              v34 = v33;
              v27 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
              cellHeightCache2 = [(NCNotificationListCache *)self cellHeightCache];
              [cellHeightCache2 setHeight:requestCopy forRequest:v25 withContentConfiguration:v34];
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

- (BOOL)invalidateCachedHeightIfNecessaryForNotificationRequest:(id)request updatedHeight:(double)height isContentRevealed:(BOOL)revealed traits:(id)traits
{
  revealedCopy = revealed;
  v51 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  traitsCopy = traits;
  v12 = [(NCNotificationListCache *)self listCellForNotificationRequest:requestCopy viewControllerDelegate:0 createNewIfNecessary:0 shouldConfigure:0];
  v13 = [(NCNotificationListCache *)self contentConfigurationForListCell:v12 isContentRevealed:revealedCopy];
  [v13 setTraits:traitsCopy];

  cellHeightCache = [(NCNotificationListCache *)self cellHeightCache];
  v15 = [cellHeightCache heightForRequest:requestCopy withContentConfiguration:v13];

  if (v15 && ([v15 floatValue], (BSFloatApproximatelyEqualToFloat() & 1) == 0))
  {
    v17 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEBUG))
    {
      v33 = v17;
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      [v15 floatValue];
      *buf = 138544130;
      v44 = un_logDigest;
      v45 = 2048;
      v46 = v36;
      v47 = 2048;
      heightCopy = height;
      v49 = 2112;
      v50 = v13;
      _os_log_debug_impl(&dword_21E77E000, v33, OS_LOG_TYPE_DEBUG, "Notification list invalidating cached height for request %{public}@ [cachedHeight=%.2f, updatedHeight=%.2f, cellContentConfiguration=%@]", buf, 0x2Au);
    }

    notificationViewController = [v12 notificationViewController];
    staticContentProvider = [notificationViewController staticContentProvider];

    cellHeightCache2 = [(NCNotificationListCache *)self cellHeightCache];
    v21 = cellHeightCache2;
    if (staticContentProvider)
    {
      [cellHeightCache2 removeHeightForContentConfiguration:v13 forRequest:requestCopy];
    }

    else
    {
      [cellHeightCache2 removeAllHeightsForRequest:requestCopy];
    }

    notificationViewController2 = [v12 notificationViewController];
    staticContentProvider2 = [notificationViewController2 staticContentProvider];

    if (staticContentProvider2)
    {
      cellHeightCache3 = [(NCNotificationListCache *)self cellHeightCache];
      cellHeightDictionary = [cellHeightCache3 cellHeightDictionary];
      identifiersString = [requestCopy identifiersString];
      v27 = [cellHeightDictionary objectForKey:identifiersString];

      if (v27)
      {
        cellHeightForConfigurationDictionary = [v27 cellHeightForConfigurationDictionary];
        allKeys = [cellHeightForConfigurationDictionary allKeys];
        v30 = [allKeys copy];

        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = __122__NCNotificationListCache_invalidateCachedHeightIfNecessaryForNotificationRequest_updatedHeight_isContentRevealed_traits___block_invoke;
        v40 = &unk_278372328;
        v42 = revealedCopy;
        v41 = v27;
        [v30 enumerateObjectsUsingBlock:&v37];
        if (![v30 count])
        {
          cellHeightCache4 = [(NCNotificationListCache *)self cellHeightCache];
          [cellHeightCache4 removeAllHeightsForRequest:requestCopy];
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

- (id)listCellForNotificationRequest:(id)request viewControllerDelegate:(id)delegate createNewIfNecessary:(BOOL)necessary shouldConfigure:(BOOL)configure
{
  configureCopy = configure;
  necessaryCopy = necessary;
  requestCopy = request;
  delegateCopy = delegate;
  notificationListCellsForRequests = [(NCNotificationListCache *)self notificationListCellsForRequests];
  v13 = [notificationListCellsForRequests objectForKey:requestCopy];

  if (!v13 && necessaryCopy)
  {
    v13 = [(NCNotificationListCache *)self _cachedNotificationListCellForRequest:requestCopy viewControllerDelegate:delegateCopy shouldConfigure:configureCopy];
    if (!v13)
    {
      v13 = [(NCNotificationListCache *)self _newCellForNotificationRequest:requestCopy viewControllerDelegate:delegateCopy];
    }

    v14 = *(MEMORY[0x277CBF2C0] + 16);
    v17[0] = *MEMORY[0x277CBF2C0];
    v17[1] = v14;
    v17[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v13 setTransform:v17];
    [v13 setAlpha:1.0];
    notificationListCellsForRequests2 = [(NCNotificationListCache *)self notificationListCellsForRequests];
    [notificationListCellsForRequests2 setObject:v13 forKey:requestCopy];
  }

  return v13;
}

- (BOOL)recycleNotificationListCell:(id)cell
{
  cellCopy = cell;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  notificationListCellsForRequests = [(NCNotificationListCache *)self notificationListCellsForRequests];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __55__NCNotificationListCache_recycleNotificationListCell___block_invoke;
  v17 = &unk_278372350;
  v6 = cellCopy;
  v18 = v6;
  v19 = &v20;
  [notificationListCellsForRequests enumerateKeysAndObjectsUsingBlock:&v14];

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
    notificationListCellCache = [(NCNotificationListCache *)self notificationListCellCache];
    [notificationListCellCache addObject:v6];
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

- (id)coalescingHeaderCellWithTitle:(id)title clearAllText:(id)text width:(double)width
{
  textCopy = text;
  titleCopy = title;
  v10 = [(NCNotificationListCache *)self _cachedHeaderCellWithTitle:titleCopy];
  if (!v10)
  {
    v11 = [NCNotificationListCoalescingHeaderCell alloc];
    v10 = [(NCNotificationListCoalescingHeaderCell *)v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  [NCNotificationListCoalescingHeaderCell coalescingHeaderCellHeightForWidth:titleCopy title:width];
  [(NCNotificationListCoalescingHeaderCell *)v10 setFrame:0.0, 0.0, width, v12];
  [(NCNotificationListCoalescingHeaderCell *)v10 setTitle:titleCopy];

  [(NCNotificationListCoalescingHeaderCell *)v10 setClearAllText:textCopy];
  [(NCNotificationListCoalescingHeaderCell *)v10 resetClearButtonStateAnimated:0];
  [(NCNotificationListCoalescingHeaderCell *)v10 setAdjustsFontForContentSizeCategory:1];
  [(NCNotificationListCoalescingHeaderCell *)v10 setNeedsLayout];

  return v10;
}

- (void)recycleNotificationListCoalescingHeaderCell:(id)cell
{
  cellCopy = cell;
  notificationListCoalescingHeaderCache = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
  v5 = [notificationListCoalescingHeaderCache count];

  if (v5 <= 0x13)
  {
    notificationListCoalescingHeaderCache2 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
    [notificationListCoalescingHeaderCache2 addObject:cellCopy];
  }
}

- (id)coalescingControlsCellWithWidth:(double)width
{
  notificationListCoalescingControlsCache = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
  anyObject = [notificationListCoalescingControlsCache anyObject];

  if (anyObject)
  {
    notificationListCoalescingControlsCache2 = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
    [notificationListCoalescingControlsCache2 removeObject:anyObject];
  }

  else
  {
    v8 = [NCNotificationListCoalescingControlsCell alloc];
    anyObject = [(NCNotificationListCoalescingControlsCell *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  [NCNotificationListCoalescingControlsCell coalescingControlsCellHeightShowingCoalescingControls:1];
  [(NCNotificationListCoalescingControlsCell *)anyObject setFrame:0.0, 0.0, width, v9];
  [(NCNotificationListCoalescingControlsCell *)anyObject setAdjustsFontForContentSizeCategory:1];

  return anyObject;
}

- (void)recycleNotificationListCoalescingControlsCell:(id)cell
{
  cellCopy = cell;
  notificationListCoalescingControlsCache = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
  v5 = [notificationListCoalescingControlsCache count];

  if (v5 <= 0x13)
  {
    notificationListCoalescingControlsCache2 = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
    [notificationListCoalescingControlsCache2 addObject:cellCopy];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  [(NCNotificationListCache *)self _clearAllHeightCaches];
  notificationListCellsForRequests = [(NCNotificationListCache *)self notificationListCellsForRequests];
  allValues = [notificationListCellsForRequests allValues];
  [allValues enumerateObjectsUsingBlock:&__block_literal_global_34];

  notificationListCellCache = [(NCNotificationListCache *)self notificationListCellCache];
  [notificationListCellCache enumerateObjectsUsingBlock:&__block_literal_global_106];

  notificationListCoalescingHeaderCache = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
  [notificationListCoalescingHeaderCache enumerateObjectsUsingBlock:&__block_literal_global_109];

  notificationListCoalescingControlsCache = [(NCNotificationListCache *)self notificationListCoalescingControlsCache];
  [notificationListCoalescingControlsCache enumerateObjectsUsingBlock:&__block_literal_global_112_0];

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

- (id)_newCellForNotificationRequest:(id)request viewControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  requestCopy = request;
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

  v11 = [[v8 alloc] initWithNotificationRequest:requestCopy];

  [v11 setDelegate:delegateCopy];
  v12 = [NCNotificationListCell alloc];
  v13 = [(NCNotificationListCell *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NCNotificationListCell *)v13 setContentViewController:v11];
  [v11 setAssociatedView:v13];

  return v13;
}

- (id)_cachedHeaderCellWithTitle:(id)title
{
  titleCopy = title;
  notificationListCoalescingHeaderCache = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
  v6 = [notificationListCoalescingHeaderCache count];

  if (v6)
  {
    notificationListCoalescingHeaderCache2 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__NCNotificationListCache__cachedHeaderCellWithTitle___block_invoke;
    v14[3] = &unk_2783723F8;
    v15 = titleCopy;
    v8 = [notificationListCoalescingHeaderCache2 objectsPassingTest:v14];
    anyObject = [v8 anyObject];

    if (!anyObject)
    {
      notificationListCoalescingHeaderCache3 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
      anyObject = [notificationListCoalescingHeaderCache3 anyObject];

      notificationListCoalescingHeaderCache4 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
      [notificationListCoalescingHeaderCache4 removeObject:anyObject];
    }

    notificationListCoalescingHeaderCache5 = [(NCNotificationListCache *)self notificationListCoalescingHeaderCache];
    [notificationListCoalescingHeaderCache5 removeObject:anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

uint64_t __54__NCNotificationListCache__cachedHeaderCellWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_cachedNotificationListCellForRequest:(id)request viewControllerDelegate:(id)delegate shouldConfigure:(BOOL)configure
{
  configureCopy = configure;
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  delegateCopy = delegate;
  notificationListCellCache = [(NCNotificationListCache *)self notificationListCellCache];
  v11 = [notificationListCellCache count];

  if (v11)
  {
    notificationListCellCache2 = [(NCNotificationListCache *)self notificationListCellCache];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __104__NCNotificationListCache__cachedNotificationListCellForRequest_viewControllerDelegate_shouldConfigure___block_invoke;
    v34[3] = &unk_278372420;
    v13 = requestCopy;
    v35 = v13;
    v14 = [notificationListCellCache2 objectsPassingTest:v34];
    anyObject = [v14 anyObject];

    if (anyObject)
    {
      notificationListCellCache3 = [(NCNotificationListCache *)self notificationListCellCache];
      [notificationListCellCache3 removeObject:anyObject];

      notificationViewController = [anyObject notificationViewController];
      notificationListCellCache4 = notificationViewController;
      if (configureCopy)
      {
        delegate = [notificationViewController delegate];

        if (delegate == delegateCopy)
        {
          [notificationListCellCache4 invalidateContentProviders];
        }

        else
        {
          [notificationListCellCache4 setDelegate:delegateCopy];
        }
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      notificationListCellCache4 = [(NCNotificationListCache *)self notificationListCellCache];
      anyObject = [notificationListCellCache4 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (anyObject)
      {
        v28 = v13;
        v29 = configureCopy;
        v20 = *v31;
LABEL_9:
        v21 = 0;
        while (1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(notificationListCellCache4);
          }

          v22 = *(*(&v30 + 1) + 8 * v21);
          notificationViewController2 = [v22 notificationViewController];
          hasCommittedToPresentingCustomContentProvidingViewController = [notificationViewController2 hasCommittedToPresentingCustomContentProvidingViewController];

          if (!hasCommittedToPresentingCustomContentProvidingViewController)
          {
            break;
          }

          if (anyObject == ++v21)
          {
            anyObject = [notificationListCellCache4 countByEnumeratingWithState:&v30 objects:v36 count:16];
            if (anyObject)
            {
              goto LABEL_9;
            }

            goto LABEL_21;
          }
        }

        anyObject = v22;

        if (!anyObject)
        {
          goto LABEL_22;
        }

        notificationListCellCache5 = [(NCNotificationListCache *)self notificationListCellCache];
        [notificationListCellCache5 removeObject:anyObject];

        notificationViewController3 = [anyObject notificationViewController];
        notificationListCellCache4 = notificationViewController3;
        if (v29)
        {
          [notificationViewController3 setDelegate:delegateCopy];
          [notificationListCellCache4 setNotificationContentViewHidden:0];
          [notificationListCellCache4 setNotificationRequest:v28];
        }

        else
        {
          [notificationViewController3 setNotificationContentViewHidden:1];
        }
      }
    }

LABEL_21:

LABEL_22:
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
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
  cellHeightCache = [(NCNotificationListCache *)self cellHeightCache];
  cellHeightDictionary = [cellHeightCache cellHeightDictionary];
  [cellHeightDictionary removeAllObjects];
}

- (id)_cachedRequestMatchingRequest:(id)request
{
  requestCopy = request;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  notificationListCellsForRequests = [(NCNotificationListCache *)self notificationListCellsForRequests];
  allKeys = [notificationListCellsForRequests allKeys];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NCNotificationListCache__cachedRequestMatchingRequest___block_invoke;
  v10[3] = &unk_278372448;
  v7 = requestCopy;
  v11 = v7;
  v12 = &v13;
  [allKeys enumerateObjectsUsingBlock:v10];

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
  cellHeightDictionary = [(NCNotificationCellHeightDictionary *)self->_cellHeightCache cellHeightDictionary];
  v3 = [cellHeightDictionary count];

  return v3;
}

@end