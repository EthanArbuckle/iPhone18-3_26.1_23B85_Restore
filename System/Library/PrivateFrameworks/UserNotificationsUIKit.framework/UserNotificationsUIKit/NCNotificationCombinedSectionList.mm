@interface NCNotificationCombinedSectionList
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)containsNotificationRequest:(id)request;
- (BOOL)containsSectionList:(id)list;
- (BOOL)hasVisibleContentToReveal;
- (BOOL)regroupNotificationGroups;
- (NCNotificationCombinedSectionList)initWithTitle:(id)title sectionType:(unint64_t)type;
- (double)footerViewHeightForNotificationList:(id)list withWidth:(double)width;
- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack;
- (id)_allSectionLists;
- (id)allNotificationRequests;
- (id)footerViewForNotificationList:(id)list;
- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index;
- (id)orderedNotificationListComponents;
- (id)sectionListAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)itemCountWithExpandedGroup;
- (unint64_t)notificationCount;
- (void)_invalidateSectionListViewForChronologicalSectionsIfNecessary;
- (void)_performOperationOnAllSectionLists:(id)lists;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)clearAll;
- (void)collapseGroupForNotificationRequest:(id)request withCompletion:(id)completion;
- (void)expandGroupForNotificationRequest:(id)request withCompletion:(id)completion;
- (void)insertNotificationSectionList:(id)list atIndex:(unint64_t)index animated:(BOOL)animated;
- (void)insertNotificationSectionListChronologically:(id)chronologically animated:(BOOL)animated;
- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications;
- (void)notificationListBaseComponentDidRemoveAll:(id)all;
- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request;
- (void)notificationsLoadedForSectionIdentifier:(id)identifier;
- (void)reloadNotificationRequest:(id)request;
- (void)removeNotificationSectionList:(id)list animated:(BOOL)animated;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)sortNotificationGroupListsIfNecessary;
- (void)toggleFilteringForSectionIdentifier:(id)identifier shouldFilter:(BOOL)filter;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
@end

@implementation NCNotificationCombinedSectionList

- (void)sortNotificationGroupListsIfNecessary
{
  groupListsToSort = [(NCNotificationStructuredSectionList *)self groupListsToSort];
  v4 = [groupListsToSort count];

  if (v4)
  {
    groupListsToSort2 = [(NCNotificationStructuredSectionList *)self groupListsToSort];
    [groupListsToSort2 enumerateObjectsUsingBlock:&__block_literal_global_11];

    v6.receiver = self;
    v6.super_class = NCNotificationCombinedSectionList;
    [(NCNotificationStructuredSectionList *)&v6 sortNotificationGroupListsIfNecessary];
    [(NCNotificationCombinedSectionList *)self _invalidateSectionListViewForChronologicalSectionsIfNecessary];
  }
}

- (id)_allSectionLists
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  v5 = [v3 initWithArray:sectionLists];

  chronologicalSectionLists = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
  v7 = [chronologicalSectionLists count];

  if (v7)
  {
    chronologicalSectionLists2 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
    [v5 addObjectsFromArray:chronologicalSectionLists2];
  }

  return v5;
}

- (unint64_t)notificationCount
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = NCNotificationCombinedSectionList;
  notificationCount = [(NCNotificationStructuredSectionList *)&v14 notificationCount];
  _allSectionLists = [(NCNotificationCombinedSectionList *)self _allSectionLists];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [_allSectionLists countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(_allSectionLists);
        }

        notificationCount += [*(*(&v10 + 1) + 8 * v8++) notificationCount];
      }

      while (v6 != v8);
      v6 = [_allSectionLists countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return notificationCount;
}

- (id)allNotificationRequests
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NCNotificationCombinedSectionList;
  allNotificationRequests = [(NCNotificationStructuredSectionList *)&v16 allNotificationRequests];
  _allSectionLists = [(NCNotificationCombinedSectionList *)self _allSectionLists];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [_allSectionLists countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = allNotificationRequests;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(_allSectionLists);
        }

        allNotificationRequests2 = [*(*(&v12 + 1) + 8 * v8) allNotificationRequests];
        allNotificationRequests = [v9 arrayByAddingObjectsFromArray:allNotificationRequests2];

        ++v8;
        v9 = allNotificationRequests;
      }

      while (v6 != v8);
      v6 = [_allSectionLists countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  return allNotificationRequests;
}

- (id)orderedNotificationListComponents
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v5 = [v3 initWithArray:notificationGroups];

  chronologicalSectionLists = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__NCNotificationCombinedSectionList_orderedNotificationListComponents__block_invoke;
  v12[3] = &unk_27836F768;
  v13 = v5;
  v7 = v5;
  [chronologicalSectionLists enumerateObjectsUsingBlock:v12];

  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  v10 = [v8 initWithArray:sectionLists];

  [v10 addObjectsFromArray:v7];

  return v10;
}

- (unint64_t)count
{
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  v4 = [sectionLists count];
  chronologicalSectionLists = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
  v6 = [chronologicalSectionLists count] + v4;
  v9.receiver = self;
  v9.super_class = NCNotificationCombinedSectionList;
  v7 = [(NCNotificationStructuredSectionList *)&v9 count];

  return v7 + v6;
}

- (NCNotificationCombinedSectionList)initWithTitle:(id)title sectionType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = NCNotificationCombinedSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v9 initWithTitle:title sectionType:type];
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

- (void)insertNotificationSectionList:(id)list atIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  listCopy = list;
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  v9 = [sectionLists count];

  if (v9 >= index)
  {
    v10 = [(NCNotificationCombinedSectionList *)self count];
    sectionLists2 = [(NCNotificationCombinedSectionList *)self sectionLists];
    [sectionLists2 insertObject:listCopy atIndex:index];

    [(NCNotificationStructuredSectionList *)self _insertViewToListAtIndex:index animated:animatedCopy];
    listView = [listCopy listView];
    [listView setRevealPercentage:1.0];

    listView2 = [listCopy listView];
    [listView2 setRevealed:1];

    v14 = [(NCNotificationCombinedSectionList *)self count];
    if (!v10)
    {
      if (v14)
      {
        listView3 = [(NCNotificationStructuredSectionList *)self listView];
        [listView3 reloadHeaderView];
      }
    }
  }
}

- (void)insertNotificationSectionListChronologically:(id)chronologically animated:(BOOL)animated
{
  animatedCopy = animated;
  chronologicallyCopy = chronologically;
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

    [(NSMutableArray *)chronologicalSectionLists addObject:chronologicallyCopy];
    [(NCNotificationStructuredSectionList *)self _insertViewToListAtIndex:[(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:chronologicallyCopy] animated:animatedCopy];
    v10 = [(NCNotificationCombinedSectionList *)self count];
    if (!v6 && v10)
    {
      listView = [(NCNotificationStructuredSectionList *)self listView];
      [listView reloadHeaderView];
    }
  }
}

- (void)removeNotificationSectionList:(id)list animated:(BOOL)animated
{
  animatedCopy = animated;
  listCopy = list;
  v6 = [(NCNotificationCombinedSectionList *)self count];
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  v8 = [sectionLists containsObject:listCopy];

  if (v8)
  {
    sectionLists2 = [(NCNotificationCombinedSectionList *)self sectionLists];
    v10 = [sectionLists2 indexOfObject:listCopy];

    sectionLists3 = [(NCNotificationCombinedSectionList *)self sectionLists];
    [sectionLists3 removeObject:listCopy];

    -[NCNotificationStructuredSectionList _removeViewFromListAtIndex:animated:isHorizontallyDisplaced:](self, "_removeViewFromListAtIndex:animated:isHorizontallyDisplaced:", v10, animatedCopy, [listCopy isHorizontallyDisplaced]);
  }

  else
  {
    chronologicalSectionLists = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
    v13 = [chronologicalSectionLists containsObject:listCopy];

    if (v13)
    {
      v14 = [(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:listCopy];
      chronologicalSectionLists2 = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
      [chronologicalSectionLists2 removeObject:listCopy];

      -[NCNotificationStructuredSectionList _removeViewFromListAtIndex:animated:isHorizontallyDisplaced:](self, "_removeViewFromListAtIndex:animated:isHorizontallyDisplaced:", v14, animatedCopy, [listCopy isHorizontallyDisplaced]);
      if (![(NSMutableArray *)self->_chronologicalSectionLists count])
      {
        chronologicalSectionLists = self->_chronologicalSectionLists;
        self->_chronologicalSectionLists = 0;
      }
    }
  }

  if (v6 && ![(NCNotificationCombinedSectionList *)self count])
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView reloadHeaderView];
  }
}

- (id)sectionListAtIndex:(unint64_t)index
{
  orderedNotificationListComponents = [(NCNotificationCombinedSectionList *)self orderedNotificationListComponents];
  if ([orderedNotificationListComponents count] <= index)
  {
    v6 = 0;
  }

  else
  {
    v5 = [orderedNotificationListComponents objectAtIndex:index];
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

- (BOOL)containsSectionList:(id)list
{
  listCopy = list;
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  if ([sectionLists containsObject:listCopy])
  {
    v6 = 1;
  }

  else
  {
    chronologicalSectionLists = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
    v6 = [chronologicalSectionLists containsObject:listCopy];
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
  hasVisibleContentToReveal = [(NCNotificationStructuredSectionList *)&v7 hasVisibleContentToReveal];
  if (v9[3])
  {
    v3 = 1;
  }

  else
  {
    _allSectionLists = [(NCNotificationCombinedSectionList *)self _allSectionLists];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__NCNotificationCombinedSectionList_hasVisibleContentToReveal__block_invoke;
    v6[3] = &unk_278370158;
    v6[4] = &v8;
    [_allSectionLists enumerateObjectsUsingBlock:v6];

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

- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v8.receiver = self;
  v8.super_class = NCNotificationCombinedSectionList;
  groupsCopy = groups;
  [(NCNotificationStructuredSectionList *)&v8 mergeNotificationGroups:groupsCopy reorderGroupNotifications:notificationsCopy];
  v7 = [groupsCopy count];

  if (v7)
  {
    if (notificationsCopy)
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
  _allSectionLists = [(NCNotificationCombinedSectionList *)self _allSectionLists];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__NCNotificationCombinedSectionList_itemCountWithExpandedGroup__block_invoke;
  v8[3] = &unk_278370158;
  v8[4] = &v9;
  [_allSectionLists enumerateObjectsUsingBlock:v8];

  v4 = v10[3];
  v7.receiver = self;
  v7.super_class = NCNotificationCombinedSectionList;
  itemCountWithExpandedGroup = [(NCNotificationStructuredSectionList *)&v7 itemCountWithExpandedGroup];
  _Block_object_dispose(&v9, 8);
  return itemCountWithExpandedGroup + v4;
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

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  v7.receiver = self;
  v7.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v7 setDeviceAuthenticated:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__NCNotificationCombinedSectionList_setDeviceAuthenticated___block_invoke;
  v5[3] = &__block_descriptor_33_e45_v16__0__NCNotificationStructuredSectionList_8l;
  authenticatedCopy = authenticated;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v5];
}

- (void)reloadNotificationRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v8 reloadNotificationRequest:requestCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__NCNotificationCombinedSectionList_reloadNotificationRequest___block_invoke;
  v6[3] = &unk_2783721F0;
  v7 = requestCopy;
  v5 = requestCopy;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v6];
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  settingsCopy = settings;
  sectionSettingsCopy = sectionSettings;
  v13.receiver = self;
  v13.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v13 updateNotificationSectionSettings:settingsCopy previousSectionSettings:sectionSettingsCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__NCNotificationCombinedSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke;
  v10[3] = &unk_278372218;
  v11 = settingsCopy;
  v12 = sectionSettingsCopy;
  v8 = sectionSettingsCopy;
  v9 = settingsCopy;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v10];
}

- (void)notificationsLoadedForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v8 notificationsLoadedForSectionIdentifier:identifierCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__NCNotificationCombinedSectionList_notificationsLoadedForSectionIdentifier___block_invoke;
  v6[3] = &unk_2783721F0;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v6];
}

- (void)toggleFilteringForSectionIdentifier:(id)identifier shouldFilter:(BOOL)filter
{
  filterCopy = filter;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v11 toggleFilteringForSectionIdentifier:identifierCopy shouldFilter:filterCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__NCNotificationCombinedSectionList_toggleFilteringForSectionIdentifier_shouldFilter___block_invoke;
  v8[3] = &unk_278372240;
  v9 = identifierCopy;
  v10 = filterCopy;
  v7 = identifierCopy;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v8];
}

- (void)expandGroupForNotificationRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v13.receiver = self;
  v13.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v13 expandGroupForNotificationRequest:requestCopy withCompletion:completionCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__NCNotificationCombinedSectionList_expandGroupForNotificationRequest_withCompletion___block_invoke;
  v10[3] = &unk_278372268;
  v11 = requestCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = requestCopy;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v10];
}

- (void)collapseGroupForNotificationRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v13.receiver = self;
  v13.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v13 collapseGroupForNotificationRequest:requestCopy withCompletion:completionCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__NCNotificationCombinedSectionList_collapseGroupForNotificationRequest_withCompletion___block_invoke;
  v10[3] = &unk_278372268;
  v11 = requestCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = requestCopy;
  [(NCNotificationCombinedSectionList *)self _performOperationOnAllSectionLists:v10];
}

- (BOOL)containsNotificationRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v11.receiver = self;
  v11.super_class = NCNotificationCombinedSectionList;
  v15 = [(NCNotificationStructuredSectionList *)&v11 containsNotificationRequest:requestCopy];
  if (v13[3])
  {
    v5 = 1;
  }

  else
  {
    _allSectionLists = [(NCNotificationCombinedSectionList *)self _allSectionLists];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__NCNotificationCombinedSectionList_containsNotificationRequest___block_invoke;
    v8[3] = &unk_278370240;
    v9 = requestCopy;
    v10 = &v12;
    [_allSectionLists enumerateObjectsUsingBlock:v8];

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
  regroupNotificationGroups = [(NCNotificationStructuredSectionList *)&v15 regroupNotificationGroups];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _allSectionLists = [(NCNotificationCombinedSectionList *)self _allSectionLists];
  v5 = [_allSectionLists countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(_allSectionLists);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          regroupNotificationGroups |= [v9 collapseSummarizedSectionList];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [_allSectionLists countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return regroupNotificationGroups & 1;
}

- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index
{
  viewCopy = view;
  orderedNotificationListComponents = [(NCNotificationCombinedSectionList *)self orderedNotificationListComponents];
  if ([orderedNotificationListComponents count] <= index)
  {
    v10 = 0;
  }

  else
  {
    v8 = [orderedNotificationListComponents objectAtIndex:index];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      listView = [v8 listView];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = NCNotificationCombinedSectionList;
      listView = [(NCNotificationStructuredSectionList *)&v12 notificationListView:viewCopy viewForItemAtIndex:index];
    }

    v10 = listView;
  }

  return v10;
}

- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack
{
  stackCopy = stack;
  modeCopy = mode;
  viewCopy = view;
  orderedNotificationListComponents = [(NCNotificationCombinedSectionList *)self orderedNotificationListComponents];
  v14 = 0.0;
  if ([orderedNotificationListComponents count] > index)
  {
    v15 = [orderedNotificationListComponents objectAtIndex:index];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      listView = [v15 listView];
      [listView calculateSizeForGrouped:objc_msgSend(listView ignoreFeaturedLeadingView:"isGrouped") ignoreExpandedGroupStack:0 inDisplayListAsStackMode:stackCopy dynamicGroupedOverlapHeightMultiple:{modeCopy, 0}];
      v14 = v17;
    }

    else
    {
      v20.receiver = self;
      v20.super_class = NCNotificationCombinedSectionList;
      [(NCNotificationStructuredSectionList *)&v20 notificationListView:viewCopy heightForItemAtIndex:index withWidth:modeCopy inDisplayListAsStackMode:stackCopy ignoreExpandedGroupStack:width];
      v14 = v18;
    }
  }

  return v14;
}

- (id)footerViewForNotificationList:(id)list
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

- (double)footerViewHeightForNotificationList:(id)list withWidth:(double)width
{
  result = 1.0;
  if (!self->_footerView)
  {
    return 0.0;
  }

  return result;
}

- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v6 notificationListComponent:component didRemoveNotificationRequest:request];
  if (![(NCNotificationCombinedSectionList *)self count])
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView reloadHeaderView];
  }
}

- (void)notificationListBaseComponentDidRemoveAll:(id)all
{
  v5.receiver = self;
  v5.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v5 notificationListBaseComponentDidRemoveAll:all];
  if (![(NCNotificationCombinedSectionList *)self count])
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView reloadHeaderView];
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

- (void)adjustForLegibilitySettingsChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = NCNotificationCombinedSectionList;
  [(NCNotificationStructuredSectionList *)&v8 adjustForLegibilitySettingsChange:changeCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__NCNotificationCombinedSectionList_adjustForLegibilitySettingsChange___block_invoke;
  v6[3] = &unk_2783721F0;
  v7 = changeCopy;
  v5 = changeCopy;
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

- (void)_performOperationOnAllSectionLists:(id)lists
{
  v15 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  if (listsCopy)
  {
    _allSectionLists = [(NCNotificationCombinedSectionList *)self _allSectionLists];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [_allSectionLists countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(_allSectionLists);
          }

          listsCopy[2](listsCopy, *(*(&v10 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [_allSectionLists countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_invalidateSectionListViewForChronologicalSectionsIfNecessary
{
  chronologicalSectionLists = [(NCNotificationCombinedSectionList *)self chronologicalSectionLists];
  v4 = [chronologicalSectionLists count];

  if (v4)
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView invalidateData];
  }
}

@end