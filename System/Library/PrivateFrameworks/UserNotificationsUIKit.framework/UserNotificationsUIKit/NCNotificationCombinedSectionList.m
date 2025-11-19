@interface NCNotificationCombinedSectionList
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)containsNotificationRequest:(id)a3;
- (BOOL)containsSectionList:(id)a3;
- (BOOL)hasVisibleContentToReveal;
- (BOOL)regroupNotificationGroups;
- (NCNotificationCombinedSectionList)initWithTitle:(id)a3 sectionType:(unint64_t)a4;
- (double)footerViewHeightForNotificationList:(id)a3 withWidth:(double)a4;
- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7;
- (id)_allSectionLists;
- (id)allNotificationRequests;
- (id)footerViewForNotificationList:(id)a3;
- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4;
- (id)orderedNotificationListComponents;
- (id)sectionListAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)itemCountWithExpandedGroup;
- (unint64_t)notificationCount;
- (void)_invalidateSectionListViewForChronologicalSectionsIfNecessary;
- (void)_performOperationOnAllSectionLists:(id)a3;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)clearAll;
- (void)collapseGroupForNotificationRequest:(id)a3 withCompletion:(id)a4;
- (void)expandGroupForNotificationRequest:(id)a3 withCompletion:(id)a4;
- (void)insertNotificationSectionList:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)insertNotificationSectionListChronologically:(id)a3 animated:(BOOL)a4;
- (void)mergeNotificationGroups:(id)a3 reorderGroupNotifications:(BOOL)a4;
- (void)notificationListBaseComponentDidRemoveAll:(id)a3;
- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4;
- (void)notificationsLoadedForSectionIdentifier:(id)a3;
- (void)reloadNotificationRequest:(id)a3;
- (void)removeNotificationSectionList:(id)a3 animated:(BOOL)a4;
- (void)setDeviceAuthenticated:(BOOL)a3;
- (void)sortNotificationGroupListsIfNecessary;
- (void)toggleFilteringForSectionIdentifier:(id)a3 shouldFilter:(BOOL)a4;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
@end

@implementation NCNotificationCombinedSectionList

- (void)sortNotificationGroupListsIfNecessary
{
  v3 = [(NCNotificationStructuredSectionList *)self groupListsToSort];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(NCNotificationStructuredSectionList *)self groupListsToSort];
    [v5 enumerateObjectsUsingBlock:&__block_literal_global_11];

    v6.receiver = self;
    v6.super_class = NCNotificationCombinedSectionList;
    [(NCNotificationStructuredSectionList *)&v6 sortNotificationGroupListsIfNecessary];
    [(NCNotificationCombinedSectionList *)self _invalidateSectionListViewForChronologicalSectionsIfNecessary];
  }
}

- (id)_allSectionLists
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(NCNotificationCombinedSectionList *)self sectionLists];
  v5 = [v3 initWithArray:v4];

  v6 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
    [v5 addObjectsFromArray:v8];
  }

  return v5;
}

- (unint64_t)notificationCount
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = NCNotificationCombinedSectionList;
  v3 = [(NCNotificationStructuredSectionList *)&v14 notificationCount];
  v4 = [(NCNotificationCombinedSectionList *)self _allSectionLists];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 += [*(*(&v10 + 1) + 8 * v8++) notificationCount];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allNotificationRequests
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NCNotificationCombinedSectionList;
  v3 = [(NCNotificationStructuredSectionList *)&v16 allNotificationRequests];
  v4 = [(NCNotificationCombinedSectionList *)self _allSectionLists];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * v8) allNotificationRequests];
        v3 = [v9 arrayByAddingObjectsFromArray:v10];

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)orderedNotificationListComponents
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v5 = [v3 initWithArray:v4];

  v6 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__NCNotificationCombinedSectionList_orderedNotificationListComponents__block_invoke;
  v12[3] = &unk_27836F768;
  v13 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v12];

  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = [(NCNotificationCombinedSectionList *)self sectionLists];
  v10 = [v8 initWithArray:v9];

  [v10 addObjectsFromArray:v7];

  return v10;
}

- (unint64_t)count
{
  v3 = [(NCNotificationCombinedSectionList *)self sectionLists];
  v4 = [v3 count];
  v5 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
  v6 = [v5 count] + v4;
  v9.receiver = self;
  v9.super_class = NCNotificationCombinedSectionList;
  v7 = [(NCNotificationStructuredSectionList *)&v9 count];

  return v7 + v6;
}

- (NCNotificationCombinedSectionList)initWithTitle:(id)a3 sectionType:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = NCNotificationCombinedSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v9 initWithTitle:a3 sectionType:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sectionLists = v4->_sectionLists;
    v4->_sectionLists = v5;

    footerView = v4->_footerView;
    v4->_footerView = 0;
  }

  return v4;
}

- (void)insertNotificationSectionList:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v16 = a3;
  v8 = [(NCNotificationCombinedSectionList *)self sectionLists];
  v9 = [v8 count];

  if (v9 >= a4)
  {
    v10 = [(NCNotificationCombinedSectionList *)self count];
    v11 = [(NCNotificationCombinedSectionList *)self sectionLists];
    [v11 insertObject:v16 atIndex:a4];

    [(NCNotificationStructuredSectionList *)self _insertViewToListAtIndex:a4 animated:v5];
    v12 = [v16 listView];
    [v12 setRevealPercentage:1.0];

    v13 = [v16 listView];
    [v13 setRevealed:1];

    v14 = [(NCNotificationCombinedSectionList *)self count];
    if (!v10)
    {
      if (v14)
      {
        v15 = [(NCNotificationStructuredSectionList *)self listView];
        [v15 reloadHeaderView];
      }
    }
  }
}

- (void)insertNotificationSectionListChronologically:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  if (![(NCNotificationCombinedSectionList *)self containsSectionList:?])
  {
    v6 = [(NCNotificationCombinedSectionList *)self count];
    chronologicalSectionLists = self->_chronologicalSectionLists;
    if (!chronologicalSectionLists)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->_chronologicalSectionLists;
      self->_chronologicalSectionLists = v8;

      chronologicalSectionLists = self->_chronologicalSectionLists;
    }

    [(NSMutableArray *)chronologicalSectionLists addObject:v12];
    [(NCNotificationStructuredSectionList *)self _insertViewToListAtIndex:[(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:v12] animated:v4];
    v10 = [(NCNotificationCombinedSectionList *)self count];
    if (!v6 && v10)
    {
      v11 = [(NCNotificationStructuredSectionList *)self listView];
      [v11 reloadHeaderView];
    }
  }
}

- (void)removeNotificationSectionList:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v18 = a3;
  v6 = [(NCNotificationCombinedSectionList *)self count];
  v7 = [(NCNotificationCombinedSectionList *)self sectionLists];
  v8 = [v7 containsObject:v18];

  if (v8)
  {
    v9 = [(NCNotificationCombinedSectionList *)self sectionLists];
    v10 = [v9 indexOfObject:v18];

    v11 = [(NCNotificationCombinedSectionList *)self sectionLists];
    [v11 removeObject:v18];

    -[NCNotificationStructuredSectionList _removeViewFromListAtIndex:animated:isHorizontallyDisplaced:](self, "_removeViewFromListAtIndex:animated:isHorizontallyDisplaced:", v10, v4, [v18 isHorizontallyDisplaced]);
  }

  else
  {
    v12 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
    v13 = [v12 containsObject:v18];

    if (v13)
    {
      v14 = [(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:v18];
      v15 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
      [v15 removeObject:v18];

      -[NCNotificationStructuredSectionList _removeViewFromListAtIndex:animated:isHorizontallyDisplaced:](self, "_removeViewFromListAtIndex:animated:isHorizontallyDisplaced:", v14, v4, [v18 isHorizontallyDisplaced]);
      if (![(NSMutableArray *)self->_chronologicalSectionLists count])
      {
        chronologicalSectionLists = self->_chronologicalSectionLists;
        self->_chronologicalSectionLists = 0;
      }
    }
  }

  if (v6 && ![(NCNotificationCombinedSectionList *)self count])
  {
    v17 = [(NCNotificationStructuredSectionList *)self listView];
    [v17 reloadHeaderView];
  }
}

- (id)sectionListAtIndex:(unint64_t)a3
{
  v4 = [(NCNotificationCombinedSectionList *)self orderedNotificationListComponents];
  if ([v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:a3];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)containsSectionList:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationCombinedSectionList *)self sectionLists];
  if ([v5 containsObject:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
    v6 = [v7 containsObject:v4];
  }

  return v6;
}

- (void)clearAll
{
  v3.receiver = self;
  v3.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v3 clearAll];
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:&__block_literal_global_33];
}

- (BOOL)hasVisibleContentToReveal
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v7.receiver = self;
  v7.super_class = NCNotificationCombinedSectionList;
  v11 = [(NCNotificationStructuredSectionList *)&v7 hasVisibleContentToReveal];
  if (v9[3])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(NCNotificationCombinedSectionList *)self _allSectionLists];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__NCNotificationCombinedSectionList_hasVisibleContentToReveal__block_invoke;
    v6[3] = &unk_278370158;
    v6[4] = &v8;
    [v4 enumerateObjectsUsingBlock:v6];

    v3 = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);
  return v3 & 1;
}

uint64_t __62__NCNotificationCombinedSectionList_hasVisibleContentToReveal__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasVisibleContentToReveal];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (void)mergeNotificationGroups:(id)a3 reorderGroupNotifications:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = NCNotificationCombinedSectionList;
  v6 = a3;
  [(NCNotificationStructuredSectionList *)&v8 mergeNotificationGroups:v6 reorderGroupNotifications:v4];
  v7 = [v6 count];

  if (v7)
  {
    if (v4)
    {
      [(NCNotificationCombinedSectionList *)self _invalidateSectionListViewForChronologicalSectionsIfNecessary];
    }
  }
}

- (unint64_t)itemCountWithExpandedGroup
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(NCNotificationCombinedSectionList *)self _allSectionLists];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__NCNotificationCombinedSectionList_itemCountWithExpandedGroup__block_invoke;
  v8[3] = &unk_278370158;
  v8[4] = &v9;
  [v3 enumerateObjectsUsingBlock:v8];

  v4 = v10[3];
  v7.receiver = self;
  v7.super_class = NCNotificationCombinedSectionList;
  v5 = [(NCNotificationStructuredSectionList *)&v7 itemCountWithExpandedGroup];
  _Block_object_dispose(&v9, 8);
  return v5 + v4;
}

void __63__NCNotificationCombinedSectionList_itemCountWithExpandedGroup__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 listView];
  v4 = [v3 isGrouped];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v6 itemCountWithExpandedGroup];
  }

  *(*(*(a1 + 32) + 8) + 24) += v5;
}

- (void)setDeviceAuthenticated:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v7 setDeviceAuthenticated:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__NCNotificationCombinedSectionList_setDeviceAuthenticated___block_invoke;
  v5[3] = &__block_descriptor_33_e45_v16__0__NCNotificationStructuredSectionList_8l;
  v6 = a3;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v5];
}

- (void)reloadNotificationRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v8 reloadNotificationRequest:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__NCNotificationCombinedSectionList_reloadNotificationRequest___block_invoke;
  v6[3] = &unk_2783721F0;
  v7 = v4;
  v5 = v4;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v6];
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v13 updateNotificationSectionSettings:v6 previousSectionSettings:v7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__NCNotificationCombinedSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke;
  v10[3] = &unk_278372218;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v10];
}

- (void)notificationsLoadedForSectionIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v8 notificationsLoadedForSectionIdentifier:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__NCNotificationCombinedSectionList_notificationsLoadedForSectionIdentifier___block_invoke;
  v6[3] = &unk_2783721F0;
  v7 = v4;
  v5 = v4;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v6];
}

- (void)toggleFilteringForSectionIdentifier:(id)a3 shouldFilter:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v11 toggleFilteringForSectionIdentifier:v6 shouldFilter:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__NCNotificationCombinedSectionList_toggleFilteringForSectionIdentifier_shouldFilter___block_invoke;
  v8[3] = &unk_278372240;
  v9 = v6;
  v10 = v4;
  v7 = v6;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v8];
}

- (void)expandGroupForNotificationRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v13 expandGroupForNotificationRequest:v6 withCompletion:v7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__NCNotificationCombinedSectionList_expandGroupForNotificationRequest_withCompletion___block_invoke;
  v10[3] = &unk_278372268;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v10];
}

- (void)collapseGroupForNotificationRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v13 collapseGroupForNotificationRequest:v6 withCompletion:v7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__NCNotificationCombinedSectionList_collapseGroupForNotificationRequest_withCompletion___block_invoke;
  v10[3] = &unk_278372268;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v10];
}

- (BOOL)containsNotificationRequest:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v11.receiver = self;
  v11.super_class = NCNotificationCombinedSectionList;
  v15 = [(NCNotificationStructuredSectionList *)&v11 containsNotificationRequest:v4];
  if (v13[3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NCNotificationCombinedSectionList *)self _allSectionLists];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__NCNotificationCombinedSectionList_containsNotificationRequest___block_invoke;
    v8[3] = &unk_278370240;
    v9 = v4;
    v10 = &v12;
    [v6 enumerateObjectsUsingBlock:v8];

    v5 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);

  return v5 & 1;
}

uint64_t __65__NCNotificationCombinedSectionList_containsNotificationRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsNotificationRequest:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)regroupNotificationGroups
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = NCNotificationCombinedSectionList;
  v3 = [(NCNotificationStructuredSectionList *)&v15 regroupNotificationGroups];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NCNotificationCombinedSectionList *)self _allSectionLists];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 |= [v9 collapseSummarizedSectionList];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return v3 & 1;
}

- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NCNotificationCombinedSectionList *)self orderedNotificationListComponents];
  if ([v7 count] <= a4)
  {
    v10 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:a4];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v8 listView];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = NCNotificationCombinedSectionList;
      v9 = [(NCNotificationStructuredSectionList *)&v12 notificationListView:v6 viewForItemAtIndex:a4];
    }

    v10 = v9;
  }

  return v10;
}

- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = [(NCNotificationCombinedSectionList *)self orderedNotificationListComponents];
  v14 = 0.0;
  if ([v13 count] > a4)
  {
    v15 = [v13 objectAtIndex:a4];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [v15 listView];
      [v16 calculateSizeForGrouped:objc_msgSend(v16 ignoreFeaturedLeadingView:"isGrouped") ignoreExpandedGroupStack:0 inDisplayListAsStackMode:v7 dynamicGroupedOverlapHeightMultiple:{v8, 0}];
      v14 = v17;
    }

    else
    {
      v20.receiver = self;
      v20.super_class = NCNotificationCombinedSectionList;
      [(NCNotificationStructuredSectionList *)&v20 notificationListView:v12 heightForItemAtIndex:a4 withWidth:v8 inDisplayListAsStackMode:v7 ignoreExpandedGroupStack:a5];
      v14 = v18;
    }
  }

  return v14;
}

- (id)footerViewForNotificationList:(id)a3
{
  if ([(NCNotificationStructuredSectionList *)self sectionType])
  {
    v4 = 0;
  }

  else
  {
    footerView = self->_footerView;
    if (!footerView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75D18]);
      v7 = self->_footerView;
      self->_footerView = v6;

      footerView = self->_footerView;
    }

    v4 = footerView;
  }

  return v4;
}

- (double)footerViewHeightForNotificationList:(id)a3 withWidth:(double)a4
{
  result = 1.0;
  if (!self->_footerView)
  {
    return 0.0;
  }

  return result;
}

- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4
{
  v6.receiver = self;
  v6.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v6 notificationListComponent:a3 didRemoveNotificationRequest:a4];
  if (![(NCNotificationCombinedSectionList *)self count])
  {
    v5 = [(NCNotificationStructuredSectionList *)self listView];
    [v5 reloadHeaderView];
  }
}

- (void)notificationListBaseComponentDidRemoveAll:(id)a3
{
  v5.receiver = self;
  v5.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v5 notificationListBaseComponentDidRemoveAll:a3];
  if (![(NCNotificationCombinedSectionList *)self count])
  {
    v4 = [(NCNotificationStructuredSectionList *)self listView];
    [v4 reloadHeaderView];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v4.receiver = self;
  v4.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v4 adjustForContentSizeCategoryChange];
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:&__block_literal_global_53_0];
  return 1;
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v8 adjustForLegibilitySettingsChange:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__NCNotificationCombinedSectionList_adjustForLegibilitySettingsChange___block_invoke;
  v6[3] = &unk_2783721F0;
  v7 = v4;
  v5 = v4;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v6];
}

void __70__NCNotificationCombinedSectionList_orderedNotificationListComponents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__NCNotificationCombinedSectionList_orderedNotificationListComponents__block_invoke_2;
  v8[3] = &unk_278372290;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8];
  v7 = *(a1 + 32);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 addObject:v5];
  }

  else
  {
    [v7 insertObject:v5 atIndex:?];
  }
}

BOOL __70__NCNotificationCombinedSectionList_orderedNotificationListComponents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 comparisonDate];
  v4 = [*(a1 + 32) comparisonDate];
  v5 = [v3 compare:v4] == -1;

  return v5;
}

- (void)_performOperationOnAllSectionLists:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(NCNotificationCombinedSectionList *)self _allSectionLists];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_invalidateSectionListViewForChronologicalSectionsIfNecessary
{
  v3 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(NCNotificationStructuredSectionList *)self listView];
    [v5 invalidateData];
  }
}

@end