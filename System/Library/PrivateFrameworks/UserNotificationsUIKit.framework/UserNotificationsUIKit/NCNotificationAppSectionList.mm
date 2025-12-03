@interface NCNotificationAppSectionList
- (BOOL)_shouldShowContentForNotificationRequest:(id)request;
- (BOOL)_showSummarizedFooterView;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)isAttachmentImageFeaturedForNotificationGroupList:(id)list;
- (BOOL)removeNotificationRequest:(id)request;
- (NCNotificationAppSectionList)initWithTitle:(id)title sectionType:(unint64_t)type;
- (NSArray)groupListsForSmartOrdering;
- (double)footerViewHeightForNotificationList:(id)list withWidth:(double)width;
- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width;
- (id)_applicationIconRecipe;
- (id)_attachmentImageViewForSummaryForNotificationRequest:(id)request;
- (id)_extractFeaturedNotificationRequestsFromGroupLists:(id)lists;
- (id)_localizedDefaultHiddenPreviewsBodyPlaceholder;
- (id)_newAttachmentImageViewForImage:(id)image;
- (id)_newGroupListForNotificationRequest:(id)request;
- (id)_nonFeaturedGroupLists;
- (id)_notificationGroupsForInsertion;
- (id)_summarizedAttachmentImageViews;
- (id)_summarizedContentStrings;
- (id)_summarizedStringsForNotificationRequest:(id)request;
- (id)backgroundGroupNameBaseForAppSectionListSummarizedContentView:(id)view;
- (id)footerViewForNotificationList:(id)list;
- (id)headerViewForNotificationList:(id)list;
- (id)notificationGroupList:(id)list requestsContentProviderForNotificationRequest:(id)request;
- (id)requestCustomPlatterBackgroundViewForNotificationGroupList:(id)list;
- (int64_t)insertNotificationRequest:(id)request;
- (unint64_t)_insertionIndexForGroup:(id)group;
- (unint64_t)_summarizedCount;
- (unint64_t)notificationListViewNumberOfItems:(id)items;
- (void)_clearContentProviderForRequest:(id)request;
- (void)_configureFooterViewIfNecessary;
- (void)_configureHeaderViewIfNecessary;
- (void)_configureSectionListView:(id)view;
- (void)_mergeFeaturedGroupLists;
- (void)_removeFeaturedGroupListIfNecessary:(id)necessary;
- (void)_updateFeaturedGroupListsForFeaturedNotificationRequests:(id)requests;
- (void)_updateSummarizedFooterViewContent;
- (void)appSectionListHeaderView:(id)view didRequestPresentingOptionsMenuFromView:(id)fromView;
- (void)appSectionListSummarizedContentViewDidRecognizeTapGesture:(id)gesture;
- (void)clearAll;
- (void)modifyNotificationRequest:(id)request;
- (void)notificationListBaseComponentDidRemoveAll:(id)all;
- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request;
- (void)notificationListPresentableGroup:(id)group didReceivedHorizontalTranslation:(double)translation forCell:(id)cell;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)setExpanded:(BOOL)expanded;
- (void)setGroupListsForSmartOrdering:(id)ordering;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)unmergeNotificationGroupListsIfNecessary;
@end

@implementation NCNotificationAppSectionList

- (NCNotificationAppSectionList)initWithTitle:(id)title sectionType:(unint64_t)type
{
  v12.receiver = self;
  v12.super_class = NCNotificationAppSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v12 initWithTitle:title sectionType:type];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    featuredGroupLists = v4->_featuredGroupLists;
    v4->_featuredGroupLists = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    richContentProviders = v4->_richContentProviders;
    v4->_richContentProviders = v7;

    v4->_expanded = 0;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    [(NCNotificationAppSectionList *)v4 setPreferredContentSizeCategory:preferredContentSizeCategory];
  }

  return v4;
}

- (NSArray)groupListsForSmartOrdering
{
  [(NCNotificationAppSectionList *)self _mergeFeaturedGroupLists];
  [(NCNotificationAppSectionList *)self setMerged:1];
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v4 = [notificationGroups copy];

  return v4;
}

- (void)setGroupListsForSmartOrdering:(id)ordering
{
  v18 = *MEMORY[0x277D85DE8];
  orderingCopy = ordering;
  if ([orderingCopy count])
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      v14 = 138543618;
      v15 = logDescription;
      v16 = 2048;
      v17 = [orderingCopy count];
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting group lists for smart ordering with count %lu", &v14, 0x16u);
    }

    v8 = [(NCNotificationAppSectionList *)self _extractFeaturedNotificationRequestsFromGroupLists:orderingCopy];
    [(NCNotificationAppSectionList *)self _updateFeaturedGroupListsForFeaturedNotificationRequests:v8];
    v9 = [orderingCopy bs_filter:&__block_literal_global_7];
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
    v12 = [v10 initWithArray:featuredGroupLists];

    [v12 addObjectsFromArray:v9];
    [(NCNotificationStructuredSectionList *)self setNotificationGroups:v12];
    [(NCNotificationAppSectionList *)self setMerged:0];
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView invalidateData];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_expanded != expanded)
  {
    expandedCopy = expanded;
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543618;
      v26 = logDescription;
      v27 = 1024;
      v28 = expandedCopy;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting expanded = %{BOOL}d", buf, 0x12u);
    }

    self->_expanded = expandedCopy;
    v22 = expandedCopy;
    if (expandedCopy)
    {
      listView = [(NCNotificationStructuredSectionList *)self listView];
      [listView reloadFooterViewAnimated:1];

      v9 = [(NSMutableArray *)self->_featuredGroupLists count];
      _nonFeaturedGroupLists = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
      v11 = [_nonFeaturedGroupLists count];

      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          _nonFeaturedGroupLists2 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
          v14 = [_nonFeaturedGroupLists2 objectAtIndex:i];
          listView2 = [v14 listView];
          [listView2 setNeedsLayout];

          listView3 = [(NCNotificationStructuredSectionList *)self listView];
          [listView3 insertViewAtIndex:v9 + i animated:1];

          _nonFeaturedGroupLists3 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
          v18 = [_nonFeaturedGroupLists3 objectAtIndex:i];
          allNotificationRequests = [v18 allNotificationRequests];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __44__NCNotificationAppSectionList_setExpanded___block_invoke;
          v23[3] = &unk_278370958;
          v23[4] = self;
          v24 = i;
          [allNotificationRequests enumerateObjectsUsingBlock:v23];
        }
      }
    }

    listView4 = [(NCNotificationStructuredSectionList *)self listView];
    [listView4 setNeedsLayout];

    delegate = [(NCNotificationStructuredSectionList *)self delegate];
    [delegate notificationStructuredSectionList:self transitionedGroupedStateIsGrouped:!v22];
  }
}

void __44__NCNotificationAppSectionList_setExpanded___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 _nonFeaturedGroupLists];
  v5 = [v6 objectAtIndex:*(a1 + 40)];
  [v5 reloadNotificationViewForNotificationRequest:v4 animated:0];
}

- (void)unmergeNotificationGroupListsIfNecessary
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(NCNotificationAppSectionList *)self isMerged])
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      v7 = 138543362;
      v8 = logDescription;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ unmerging group lists", &v7, 0xCu);
    }

    allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
    [(NCNotificationAppSectionList *)self setGroupListsForSmartOrdering:allNotificationGroups];
  }
}

- (int64_t)insertNotificationRequest:(id)request
{
  requestCopy = request;
  [(NCNotificationAppSectionList *)self _clearContentProviderForRequest:requestCopy];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__NCNotificationAppSectionList_insertNotificationRequest___block_invoke;
  v11[3] = &unk_278370980;
  v6 = requestCopy;
  v12 = v6;
  selfCopy = self;
  v14 = &v16;
  v15 = &v20;
  [featuredGroupLists enumerateObjectsUsingBlock:v11];

  if ((v21[3] & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = NCNotificationAppSectionList;
    v7 = [(NCNotificationStructuredSectionList *)&v10 insertNotificationRequest:v6];
    v17[3] = v7;
  }

  [(NCNotificationAppSectionList *)self _updateSummarizedFooterViewContent];
  v8 = v17[3];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __58__NCNotificationAppSectionList_insertNotificationRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 containsNotificationRequest:*(a1 + 32)])
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 logDescription];
      v11 = [*(a1 + 32) notificationIdentifier];
      v12 = [v11 un_logDigest];
      v13 = [v6 logDescription];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting request %{public}@ in existing featured group list %{public}@", &v14, 0x20u);
    }

    *(*(*(a1 + 48) + 8) + 24) = [v6 insertNotificationRequest:*(a1 + 32)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)modifyNotificationRequest:(id)request
{
  requestCopy = request;
  [(NCNotificationAppSectionList *)self _clearContentProviderForRequest:requestCopy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__NCNotificationAppSectionList_modifyNotificationRequest___block_invoke;
  v9[3] = &unk_2783709A8;
  v6 = requestCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [featuredGroupLists enumerateObjectsUsingBlock:v9];

  if ((v14[3] & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = NCNotificationAppSectionList;
    [(NCNotificationStructuredSectionList *)&v8 modifyNotificationRequest:v6];
  }

  v7.receiver = self;
  v7.super_class = NCNotificationAppSectionList;
  [(NCNotificationStructuredSectionList *)&v7 modifyNotificationRequest:v6];
  [(NCNotificationAppSectionList *)self _updateSummarizedFooterViewContent];

  _Block_object_dispose(&v13, 8);
}

void __58__NCNotificationAppSectionList_modifyNotificationRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 containsNotificationRequest:*(a1 + 32)])
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 logDescription];
      v11 = [*(a1 + 32) notificationIdentifier];
      v12 = [v11 un_logDigest];
      v13 = [v6 logDescription];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying request %{public}@ in existing featured group list %{public}@", &v14, 0x20u);
    }

    [v6 modifyNotificationRequest:*(a1 + 32)];
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)removeNotificationRequest:(id)request
{
  requestCopy = request;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__NCNotificationAppSectionList_removeNotificationRequest___block_invoke;
  v11[3] = &unk_27836F7F8;
  v13 = &v14;
  v6 = requestCopy;
  v12 = v6;
  [featuredGroupLists enumerateObjectsUsingBlock:v11];

  v10.receiver = self;
  v10.super_class = NCNotificationAppSectionList;
  v7 = [(NCNotificationStructuredSectionList *)&v10 removeNotificationRequest:v6];
  [(NCNotificationAppSectionList *)self _updateSummarizedFooterViewContent];
  [(NCNotificationAppSectionList *)self _clearContentProviderForRequest:v6];
  if (*(v15 + 24) == 1)
  {
    featuredGroupLists2 = [(NCNotificationAppSectionList *)self featuredGroupLists];
    [featuredGroupLists2 enumerateObjectsUsingBlock:&__block_literal_global_12];
  }

  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __58__NCNotificationAppSectionList_removeNotificationRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsNotificationRequest:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void __58__NCNotificationAppSectionList_removeNotificationRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 leadingNotificationRequest];
  [v2 reloadNotificationRequest:v3];
}

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  v9.receiver = self;
  v9.super_class = NCNotificationAppSectionList;
  [(NCNotificationStructuredSectionList *)&v9 setDeviceAuthenticated:?];
  richContentProviders = [(NCNotificationAppSectionList *)self richContentProviders];
  allValues = [richContentProviders allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NCNotificationAppSectionList_setDeviceAuthenticated___block_invoke;
  v7[3] = &__block_descriptor_33_e57_v32__0__NCNotificationRequestRichContentProvider_8Q16_B24l;
  authenticatedCopy = authenticated;
  [allValues enumerateObjectsUsingBlock:v7];
}

- (void)clearAll
{
  v4.receiver = self;
  v4.super_class = NCNotificationAppSectionList;
  [(NCNotificationStructuredSectionList *)&v4 clearAll];
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponentDidRemoveAll:self];
}

- (unint64_t)notificationListViewNumberOfItems:(id)items
{
  itemsCopy = items;
  if ([(NCNotificationAppSectionList *)self _showSummarizedFooterView])
  {
    v5 = [(NSMutableArray *)self->_featuredGroupLists count];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NCNotificationAppSectionList;
    v5 = [(NCNotificationStructuredSectionList *)&v8 notificationListViewNumberOfItems:itemsCopy];
  }

  v6 = v5;

  return v6;
}

- (id)headerViewForNotificationList:(id)list
{
  [(NCNotificationAppSectionList *)self _configureHeaderViewIfNecessary];
  headerView = self->_headerView;

  return headerView;
}

- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width
{
  [(NCNotificationAppSectionList *)self _configureHeaderViewIfNecessary];
  isCombinedAppSectionList = [(NCNotificationAppSectionList *)self isCombinedAppSectionList];
  result = 10.0;
  if (!isCombinedAppSectionList)
  {
    [(NCNotificationAppSectionListHeaderView *)self->_headerView sizeThatFits:width, 0.0];
    return v8;
  }

  return result;
}

- (id)footerViewForNotificationList:(id)list
{
  if ([(NCNotificationAppSectionList *)self _showSummarizedFooterView])
  {
    [(NCNotificationAppSectionList *)self _configureFooterViewIfNecessary];
  }

  else
  {
    footerView = self->_footerView;
    if (footerView)
    {
      self->_footerView = 0;

      listView = [(NCNotificationStructuredSectionList *)self listView];
      [listView reloadFooterViewAnimated:1];
    }
  }

  v6 = self->_footerView;

  return v6;
}

- (double)footerViewHeightForNotificationList:(id)list withWidth:(double)width
{
  [(NCNotificationAppSectionList *)self _configureFooterViewIfNecessary];
  _showSummarizedFooterView = [(NCNotificationAppSectionList *)self _showSummarizedFooterView];
  result = 0.0;
  if (_showSummarizedFooterView)
  {
    [(NCNotificationAppSectionListSummarizedContentView *)self->_footerView sizeThatFits:width, 0.0];
    return v8;
  }

  return result;
}

- (BOOL)isAttachmentImageFeaturedForNotificationGroupList:(id)list
{
  listCopy = list;
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v6 = [allNotificationGroups indexOfObject:listCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NCNotificationAppSectionList *)self _isViewFeaturedAtIndex:v6];
}

- (void)notificationListBaseComponentDidRemoveAll:(id)all
{
  v6.receiver = self;
  v6.super_class = NCNotificationAppSectionList;
  allCopy = all;
  [(NCNotificationStructuredSectionList *)&v6 notificationListBaseComponentDidRemoveAll:allCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = allCopy;
  }

  else
  {
    v5 = 0;
  }

  [(NCNotificationAppSectionList *)self _removeFeaturedGroupListIfNecessary:v5, v6.receiver, v6.super_class];
}

- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request
{
  v8.receiver = self;
  v8.super_class = NCNotificationAppSectionList;
  componentCopy = component;
  [(NCNotificationStructuredSectionList *)&v8 notificationListComponent:componentCopy didRemoveNotificationRequest:request];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = componentCopy;
  }

  else
  {
    v7 = 0;
  }

  [(NCNotificationAppSectionList *)self _removeFeaturedGroupListIfNecessary:v7, v8.receiver, v8.super_class];
}

- (id)notificationGroupList:(id)list requestsContentProviderForNotificationRequest:(id)request
{
  requestCopy = request;
  v6 = [(NSMutableDictionary *)self->_richContentProviders objectForKey:requestCopy];
  if (!v6)
  {
    v6 = [(NCNotificationRequestCoalescingContentProvider *)[NCNotificationRequestRichContentProvider alloc] initWithNotificationRequest:requestCopy];
    [(NCNotificationRequestCoalescingContentProvider *)v6 setDeviceAuthenticated:[(NCNotificationStructuredSectionList *)self deviceAuthenticated]];
    [(NCNotificationRequestRichContentProvider *)v6 setIconVisible:[(NCNotificationAppSectionList *)self isCombinedAppSectionList]];
    [(NSMutableDictionary *)self->_richContentProviders bs_setSafeObject:v6 forKey:requestCopy];
  }

  return v6;
}

- (id)requestCustomPlatterBackgroundViewForNotificationGroupList:(id)list
{
  if ([(NCNotificationStructuredSectionList *)self sectionType]== 7)
  {
    v3 = objc_alloc_init(NCDigestPlatterBackgroundView);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)notificationListPresentableGroup:(id)group didReceivedHorizontalTranslation:(double)translation forCell:(id)cell
{
  groupCopy = group;
  if ([(NCNotificationAppSectionList *)self _shouldFeatureLeadingViews])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
      v8 = [featuredGroupLists indexOfObject:groupCopy];

      if (v8 == 1)
      {
        listView = [(NCNotificationStructuredSectionList *)self listView];
        [listView setFeaturedLeadingViewOcclusionTranslation:translation];
      }
    }
  }
}

- (void)appSectionListHeaderView:(id)view didRequestPresentingOptionsMenuFromView:(id)fromView
{
  fromViewCopy = fromView;
  allNotificationRequests = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
  firstObject = [allNotificationRequests firstObject];

  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__NCNotificationAppSectionList_appSectionListHeaderView_didRequestPresentingOptionsMenuFromView___block_invoke;
  v10[3] = &unk_2783709F0;
  v11 = fromViewCopy;
  v9 = fromViewCopy;
  [delegate notificationListComponent:self requestsPresentingOptionsMenuForNotificationRequest:firstObject presentingViewProvider:v10 optionsForSection:1 completion:0];
}

- (void)appSectionListSummarizedContentViewDidRecognizeTapGesture:(id)gesture
{
  v13 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
    v11 = 138543362;
    v12 = logDescription;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ is expanding on summarized view tap", &v11, 0xCu);
  }

  [(NCNotificationAppSectionList *)self setExpanded:1];
  _nonFeaturedGroupLists = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  if ([_nonFeaturedGroupLists count] == 1)
  {
    firstObject = [_nonFeaturedGroupLists firstObject];
    listView = [firstObject listView];
    [listView setGrouped:0];
  }
}

- (id)backgroundGroupNameBaseForAppSectionListSummarizedContentView:(id)view
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [delegate backgroundGroupNameBaseForNotificationListBaseComponent:self];

  return v5;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  if (self->_strokeVisualStylingProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(&self->_strokeVisualStylingProvider, provider);
    [(NCNotificationListBaseContentView *)self->_headerView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
    [(NCNotificationListBaseContentView *)self->_footerView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
    providerCopy = v7;
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v7.receiver = self;
  v7.super_class = NCNotificationAppSectionList;
  [(NCNotificationStructuredSectionList *)&v7 adjustForContentSizeCategoryChange];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  [(NCNotificationAppSectionList *)self setPreferredContentSizeCategory:preferredContentSizeCategory];

  [(NCNotificationAppSectionListHeaderView *)self->_headerView adjustForContentSizeCategoryChange];
  [(NCNotificationListBaseContentView *)self->_footerView adjustForContentSizeCategoryChange];
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView invalidateData];

  return 1;
}

- (id)_notificationGroupsForInsertion
{
  if ([(NCNotificationAppSectionList *)self isMerged])
  {
    [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  }

  else
  {
    [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  }
  v3 = ;

  return v3;
}

- (unint64_t)_insertionIndexForGroup:(id)group
{
  v8.receiver = self;
  v8.super_class = NCNotificationAppSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v8 _insertionIndexForGroup:group];
  v5 = v4;
  if (![(NCNotificationAppSectionList *)self isMerged])
  {
    featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
    v5 = [featuredGroupLists count];
  }

  return v4 + v5;
}

- (void)_configureSectionListView:(id)view
{
  v4.receiver = self;
  v4.super_class = NCNotificationAppSectionList;
  viewCopy = view;
  [(NCNotificationStructuredSectionList *)&v4 _configureSectionListView:viewCopy];
  [viewCopy setHorizontalInsetMargin:{14.0, v4.receiver, v4.super_class}];
  [viewCopy setNumberOfFeaturedLeadingViews:2];
  [viewCopy setFooterViewVerticalMargin:10.0];
  [viewCopy setGroupingAnimationStyle:1];
  [viewCopy setPreferredBottomTransitionTransformer:0];
}

- (id)_newGroupListForNotificationRequest:(id)request
{
  v7.receiver = self;
  v7.super_class = NCNotificationAppSectionList;
  v3 = [(NCNotificationStructuredSectionList *)&v7 _newGroupListForNotificationRequest:request];
  listView = [v3 listView];
  [listView setLeadingContentShouldFillList:1];

  listView2 = [v3 listView];
  [listView2 setPreferredBottomTransitionTransformer:0];

  return v3;
}

- (BOOL)_showSummarizedFooterView
{
  if ([(NCNotificationAppSectionList *)self isExpanded]|| [(NCNotificationAppSectionList *)self isMerged]|| [(NCNotificationAppSectionList *)self isCombinedAppSectionList])
  {
    return 0;
  }

  _nonFeaturedGroupLists = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  v6 = [_nonFeaturedGroupLists count];
  firstObject = [_nonFeaturedGroupLists firstObject];
  notificationCount = [firstObject notificationCount];

  v10 = v6 == 1 && notificationCount > 1;
  v3 = v6 > 1 || v10;

  return v3;
}

- (void)_clearContentProviderForRequest:(id)request
{
  requestCopy = request;
  allKeys = [(NSMutableDictionary *)self->_richContentProviders allKeys];
  v6 = [allKeys copy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__NCNotificationAppSectionList__clearContentProviderForRequest___block_invoke;
  v10[3] = &unk_278370180;
  v7 = requestCopy;
  v11 = v7;
  v8 = [v6 indexOfObjectPassingTest:v10];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 objectAtIndex:v8];
    [(NSMutableDictionary *)self->_richContentProviders removeObjectForKey:v9];
  }
}

- (void)_configureHeaderViewIfNecessary
{
  if (!self->_headerView && ![(NCNotificationAppSectionList *)self isCombinedAppSectionList])
  {
    v3 = objc_alloc_init(NCNotificationAppSectionListHeaderView);
    headerView = self->_headerView;
    self->_headerView = v3;

    [(NCNotificationAppSectionListHeaderView *)self->_headerView setDelegate:self];
    v5 = self->_headerView;
    title = [(NCNotificationStructuredSectionList *)self title];
    [(NCNotificationAppSectionListHeaderView *)v5 setTitle:title];

    objc_initWeak(&location, self);
    _applicationIconRecipe = [(NCNotificationAppSectionList *)self _applicationIconRecipe];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__NCNotificationAppSectionList__configureHeaderViewIfNecessary__block_invoke;
    v9[3] = &unk_278370A18;
    objc_copyWeak(&v11, &location);
    v8 = _applicationIconRecipe;
    v10 = v8;
    [v8 imageForPointSize:1 interfaceStyle:v9 completionOnMain:38.0];
    [(NCNotificationListBaseContentView *)self->_headerView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __63__NCNotificationAppSectionList__configureHeaderViewIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    if (WeakRetained)
    {
      v6 = [WeakRetained _applicationIconRecipe];
      v7 = [v6 isEqual:*(a1 + 32)];

      if (v7)
      {
        v8 = v5[21];
        v10[0] = v3;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
        [v8 setIcons:v9];
      }
    }
  }
}

- (id)_applicationIconRecipe
{
  allNotificationRequests = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
  firstObject = [allNotificationRequests firstObject];
  subordinateIconRecipe = [firstObject subordinateIconRecipe];
  v6 = subordinateIconRecipe;
  if (subordinateIconRecipe)
  {
    iconRecipe = subordinateIconRecipe;
  }

  else
  {
    allNotificationRequests2 = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
    firstObject2 = [allNotificationRequests2 firstObject];
    iconRecipe = [firstObject2 iconRecipe];
  }

  return iconRecipe;
}

- (void)_configureFooterViewIfNecessary
{
  if ([(NCNotificationAppSectionList *)self _showSummarizedFooterView]&& !self->_footerView)
  {
    v3 = objc_alloc_init(NCNotificationAppSectionListSummarizedContentView);
    footerView = self->_footerView;
    self->_footerView = v3;

    [(NCNotificationAppSectionListSummarizedContentView *)self->_footerView setDelegate:self];
    [(NCNotificationListBaseContentView *)self->_footerView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];

    [(NCNotificationAppSectionList *)self _updateSummarizedFooterViewContent];
  }
}

- (void)_removeFeaturedGroupListIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    v12 = necessaryCopy;
    necessaryCopy = [necessaryCopy count];
    if (!necessaryCopy)
    {
      featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
      v6 = [featuredGroupLists containsObject:v12];

      if (v6)
      {
        featuredGroupLists2 = [(NCNotificationAppSectionList *)self featuredGroupLists];
        [featuredGroupLists2 removeObject:v12];
      }

      featuredGroupLists3 = [(NCNotificationAppSectionList *)self featuredGroupLists];
      v9 = [featuredGroupLists3 count];

      if (v9)
      {
        featuredGroupLists4 = [(NCNotificationAppSectionList *)self featuredGroupLists];
        [featuredGroupLists4 enumerateObjectsUsingBlock:&__block_literal_global_43];

        listView = [(NCNotificationStructuredSectionList *)self listView];
        [listView setNeedsLayout];
      }
    }
  }

  MEMORY[0x2821F96F8](necessaryCopy);
}

void __68__NCNotificationAppSectionList__removeFeaturedGroupListIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 leadingNotificationRequest];
  [v2 reloadNotificationRequest:v3];
}

- (id)_extractFeaturedNotificationRequestsFromGroupLists:(id)lists
{
  v4 = MEMORY[0x277CBEB18];
  listsCopy = lists;
  v6 = objc_alloc_init(v4);
  if ([listsCopy count] == 1)
  {
    v7 = [listsCopy objectAtIndex:0];

    allNotificationRequests = [v7 allNotificationRequests];
    v9 = [allNotificationRequests copy];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__NCNotificationAppSectionList__extractFeaturedNotificationRequestsFromGroupLists___block_invoke;
    v15[3] = &unk_2783708E0;
    v16 = v6;
    v17 = v7;
    selfCopy = self;
    v10 = v7;
    [v9 enumerateObjectsUsingBlock:v15];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__NCNotificationAppSectionList__extractFeaturedNotificationRequestsFromGroupLists___block_invoke_2;
    v12[3] = &unk_278370628;
    v13 = v6;
    selfCopy2 = self;
    [listsCopy enumerateObjectsUsingBlock:v12];

    v9 = v13;
  }

  return v6;
}

void __83__NCNotificationAppSectionList__extractFeaturedNotificationRequestsFromGroupLists___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (a3 > 1)
  {
    *a4 = 1;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a2;
    [v6 addObject:v7];
    [*(a1 + 40) removeNotificationRequest:v7];
    v8 = [*(a1 + 48) notificationListCache];
    [v8 clearCacheForNotificationRequest:v7];
  }
}

uint64_t __83__NCNotificationAppSectionList__extractFeaturedNotificationRequestsFromGroupLists___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (a3 <= 1 && (v11 = v7, (v7 = [v7 notificationCount]) != 0))
  {
    v8 = [v11 leadingNotificationRequest];
    [*(a1 + 32) addObject:v8];
    [v11 removeNotificationRequest:v8];
    v9 = [*(a1 + 40) notificationListCache];
    [v9 clearCacheForNotificationRequest:v8];
  }

  else
  {
    *a4 = 1;
  }

  return MEMORY[0x2821F96F8](v7);
}

- (void)_updateFeaturedGroupListsForFeaturedNotificationRequests:(id)requests
{
  v4 = MEMORY[0x277CBEB18];
  requestsCopy = requests;
  v6 = objc_alloc_init(v4);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__NCNotificationAppSectionList__updateFeaturedGroupListsForFeaturedNotificationRequests___block_invoke;
  v16[3] = &unk_2783705B0;
  v16[4] = self;
  v7 = v6;
  v17 = v7;
  [requestsCopy enumerateObjectsUsingBlock:v16];

  featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __89__NCNotificationAppSectionList__updateFeaturedGroupListsForFeaturedNotificationRequests___block_invoke_3;
  v13 = &unk_278370628;
  v14 = v7;
  selfCopy = self;
  v9 = v7;
  [featuredGroupLists enumerateObjectsUsingBlock:&v10];

  [(NCNotificationAppSectionList *)self setFeaturedGroupLists:v9, v10, v11, v12, v13];
}

void __89__NCNotificationAppSectionList__updateFeaturedGroupListsForFeaturedNotificationRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) featuredGroupLists];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__NCNotificationAppSectionList__updateFeaturedGroupListsForFeaturedNotificationRequests___block_invoke_2;
  v10[3] = &unk_278370600;
  v11 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v10];

  v7 = *(a1 + 32);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v7 _newGroupListForNotificationRequest:v5];
    [v8 insertNotificationRequest:v5];
  }

  else
  {
    v9 = [v7 featuredGroupLists];
    v8 = [v9 objectAtIndex:v6];
  }

  [*(a1 + 40) addObject:v8];
}

BOOL __89__NCNotificationAppSectionList__updateFeaturedGroupListsForFeaturedNotificationRequests___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 leadingNotificationRequest];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __89__NCNotificationAppSectionList__updateFeaturedGroupListsForFeaturedNotificationRequests___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [*(a1 + 40) notificationListCache];
    v4 = [v6 leadingNotificationRequest];
    [v3 clearCacheForNotificationRequest:v4];

    v5 = [v6 listView];
    [v5 recycleVisibleViews];
  }
}

- (void)_mergeFeaturedGroupLists
{
  v15 = *MEMORY[0x277D85DE8];
  featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v4 = [featuredGroupLists count];

  if (v4)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543362;
      v14 = logDescription;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ merging featured group lists", buf, 0xCu);
    }

    featuredGroupLists2 = [(NCNotificationAppSectionList *)self featuredGroupLists];
    v9 = [featuredGroupLists2 copy];

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    featuredGroupLists = self->_featuredGroupLists;
    self->_featuredGroupLists = v10;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__NCNotificationAppSectionList__mergeFeaturedGroupLists__block_invoke;
    v12[3] = &unk_278370360;
    v12[4] = self;
    [v9 enumerateObjectsUsingBlock:v12];
  }
}

void __56__NCNotificationAppSectionList__mergeFeaturedGroupLists__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _removeNotificationGroupList:v4 animated:0];
  v5 = [*(a1 + 32) notificationListCache];
  v6 = [v4 leadingNotificationRequest];
  [v5 clearCacheForNotificationRequest:v6];

  v7 = [v4 allNotificationRequests];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NCNotificationAppSectionList__mergeFeaturedGroupLists__block_invoke_2;
  v8[3] = &unk_27836F610;
  v8[4] = *(a1 + 32);
  [v7 enumerateObjectsUsingBlock:v8];
}

- (id)_nonFeaturedGroupLists
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v5 = [v3 initWithArray:allNotificationGroups];

  featuredGroupLists = [(NCNotificationAppSectionList *)self featuredGroupLists];
  [v5 removeObjectsInArray:featuredGroupLists];

  return v5;
}

- (BOOL)_shouldShowContentForNotificationRequest:(id)request
{
  options = [request options];
  contentPreviewSetting = [options contentPreviewSetting];

  if (!contentPreviewSetting)
  {
    return 1;
  }

  if (contentPreviewSetting != 1)
  {
    return 0;
  }

  return [(NCNotificationStructuredSectionList *)self deviceAuthenticated];
}

- (void)_updateSummarizedFooterViewContent
{
  footerView = self->_footerView;
  if (footerView)
  {
    [(NCNotificationAppSectionListSummarizedContentView *)footerView setCount:[(NCNotificationAppSectionList *)self _summarizedCount]];
    v4 = self->_footerView;
    v5 = NCUserNotificationsUIKitFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"NOTIFICATION_SUMMARY_APP_TITLE" value:&stru_282FE84F8 table:0];
    [(NCNotificationAppSectionListSummarizedContentView *)v4 setTitle:v6];

    v7 = self->_footerView;
    _summarizedContentStrings = [(NCNotificationAppSectionList *)self _summarizedContentStrings];
    [(NCNotificationAppSectionListSummarizedContentView *)v7 setTitleAndContentStrings:_summarizedContentStrings];

    v9 = self->_footerView;
    _summarizedAttachmentImageViews = [(NCNotificationAppSectionList *)self _summarizedAttachmentImageViews];
    [(NCNotificationAppSectionListSummarizedContentView *)v9 setAttachmentImageViews:_summarizedAttachmentImageViews];

    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView setNeedsLayout];
  }
}

- (unint64_t)_summarizedCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _nonFeaturedGroupLists = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__NCNotificationAppSectionList__summarizedCount__block_invoke;
  v5[3] = &unk_278370650;
  v5[4] = &v6;
  [_nonFeaturedGroupLists enumerateObjectsUsingBlock:v5];
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__NCNotificationAppSectionList__summarizedCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 notificationCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (id)_summarizedStringsForNotificationRequest:(id)request
{
  v24[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [(NCNotificationAppSectionList *)self _shouldShowContentForNotificationRequest:requestCopy];
  content = [requestCopy content];
  v7 = content;
  if (v5)
  {
    title = [content title];
  }

  else
  {
    content2 = [requestCopy content];
    title = [content2 defaultHeader];
  }

  if (title)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = NCUserNotificationsUIKitFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"NOTIFICATION_SUMMARY_APP_SECTION_TITLE_FORMAT" value:&stru_282FE84F8 table:0];
    v13 = [v10 stringWithFormat:v12, title];

    if (v5)
    {
LABEL_6:
      message = [v7 message];
      v15 = [message copy];
      goto LABEL_12;
    }
  }

  else
  {
    v13 = &stru_282FE84F8;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  message = [requestCopy content];
  hiddenPreviewsBodyPlaceholder = [message hiddenPreviewsBodyPlaceholder];
  v17 = hiddenPreviewsBodyPlaceholder;
  if (hiddenPreviewsBodyPlaceholder)
  {
    _localizedDefaultHiddenPreviewsBodyPlaceholder = hiddenPreviewsBodyPlaceholder;
  }

  else
  {
    _localizedDefaultHiddenPreviewsBodyPlaceholder = [(NCNotificationAppSectionList *)self _localizedDefaultHiddenPreviewsBodyPlaceholder];
  }

  v15 = _localizedDefaultHiddenPreviewsBodyPlaceholder;

LABEL_12:
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = &stru_282FE84F8;
  }

  v24[0] = v13;
  v24[1] = v19;
  v20 = MEMORY[0x277CBEA60];
  v21 = v19;
  v22 = [v20 arrayWithObjects:v24 count:2];

  return v22;
}

- (id)_summarizedContentStrings
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _nonFeaturedGroupLists = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  if ([_nonFeaturedGroupLists count] == 1)
  {
    v5 = [_nonFeaturedGroupLists objectAtIndex:0];
    allNotificationRequests = [v5 allNotificationRequests];
    v7 = [allNotificationRequests copy];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__NCNotificationAppSectionList__summarizedContentStrings__block_invoke;
    v11[3] = &unk_2783705B0;
    v11[4] = self;
    v12 = v3;
    [v7 enumerateObjectsUsingBlock:v11];
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__NCNotificationAppSectionList__summarizedContentStrings__block_invoke_2;
    v9[3] = &unk_278370628;
    v9[4] = self;
    v10 = v3;
    [_nonFeaturedGroupLists enumerateObjectsUsingBlock:v9];
  }

  return v3;
}

void __57__NCNotificationAppSectionList__summarizedContentStrings__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (a3 > 2)
  {
    *a4 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) _summarizedStringsForNotificationRequest:a2];
    [*(a1 + 40) addObject:v6];
  }
}

void __57__NCNotificationAppSectionList__summarizedContentStrings__block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (a3 > 2)
  {
    *a4 = 1;
  }

  else
  {
    v6 = [a2 allNotificationRequests];
    v8 = [v6 firstObject];

    v7 = [*(a1 + 32) _summarizedStringsForNotificationRequest:v8];
    [*(a1 + 40) addObject:v7];
  }
}

- (id)_localizedDefaultHiddenPreviewsBodyPlaceholder
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"DEFAULT_HIDDEN_PREVIEW_PLACEHOLDER" value:&stru_282FE84F8 table:0];
  v5 = [v2 localizedStringWithFormat:v4, 1, 0];

  return v5;
}

- (id)_attachmentImageViewForSummaryForNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [(NSMutableDictionary *)self->_richContentProviders objectForKey:requestCopy];
  if (!v5)
  {
    v5 = [(NCNotificationRequestCoalescingContentProvider *)[NCNotificationRequestRichContentProvider alloc] initWithNotificationRequest:requestCopy];
    [(NCNotificationRequestCoalescingContentProvider *)v5 setDeviceAuthenticated:[(NCNotificationStructuredSectionList *)self deviceAuthenticated]];
    [(NSMutableDictionary *)self->_richContentProviders bs_setSafeObject:v5 forKey:requestCopy];
  }

  notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)v5 notificationRequest];
  content = [notificationRequest content];
  communicationContext = [content communicationContext];

  if (!communicationContext || (v9 = [NCAvatarView alloc], -[NCNotificationRequestCoalescingContentProvider notificationRequest](v5, "notificationRequest"), v10 = objc_claimAutoreleasedReturnValue(), [v10 topLevelSectionIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[NCAvatarView initWithBundleIdentifier:communicationContext:pointSize:](v9, "initWithBundleIdentifier:communicationContext:pointSize:", v11, communicationContext, 38.0), v11, v10, !v12))
  {
    content2 = [requestCopy content];
    attachmentImage = [content2 attachmentImage];

    if (attachmentImage)
    {
      if ([(NCNotificationRequestRichContentProvider *)v5 hasLoadedRichAttachmentImage])
      {
        thumbnail = [(NCNotificationRequestRichContentProvider *)v5 thumbnail];

        attachmentImage = thumbnail;
      }

      else
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __85__NCNotificationAppSectionList__attachmentImageViewForSummaryForNotificationRequest___block_invoke;
        v17[3] = &unk_278370A40;
        v17[4] = self;
        [(NCNotificationRequestRichContentProvider *)v5 fetchRichAttachmentImageIsFeatured:0 withCompletion:v17];
      }

      v12 = [(NCNotificationAppSectionList *)self _newAttachmentImageViewForImage:attachmentImage];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

uint64_t __85__NCNotificationAppSectionList__attachmentImageViewForSummaryForNotificationRequest___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [*(result + 32) _updateSummarizedFooterViewContent];
  }

  return result;
}

- (id)_newAttachmentImageViewForImage:(id)image
{
  v3 = MEMORY[0x277D75D18];
  imageCopy = image;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v6 setContentMode:2];
  [v6 _setContinuousCornerRadius:10.0];
  [v6 setClipsToBounds:1];
  [v6 setImage:imageCopy];

  [v5 addSubview:v6];
  [v6 setAutoresizingMask:18];

  return v5;
}

- (id)_summarizedAttachmentImageViews
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _nonFeaturedGroupLists = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  if ([_nonFeaturedGroupLists count] == 1)
  {
    v5 = [_nonFeaturedGroupLists objectAtIndex:0];
    allNotificationRequests = [v5 allNotificationRequests];
    v7 = [allNotificationRequests copy];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__NCNotificationAppSectionList__summarizedAttachmentImageViews__block_invoke;
    v12[3] = &unk_2783705B0;
    v13 = v3;
    selfCopy = self;
    [v7 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__NCNotificationAppSectionList__summarizedAttachmentImageViews__block_invoke_2;
    v9[3] = &unk_278370628;
    v10 = v3;
    selfCopy2 = self;
    [_nonFeaturedGroupLists enumerateObjectsUsingBlock:v9];
    v5 = v10;
  }

  return v3;
}

void __63__NCNotificationAppSectionList__summarizedAttachmentImageViews__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) count] > 1)
  {
    *a4 = 1;
  }

  else
  {
    v6 = [*(a1 + 40) _attachmentImageViewForSummaryForNotificationRequest:v7];
    if (v6)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

void __63__NCNotificationAppSectionList__summarizedAttachmentImageViews__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([*(a1 + 32) count] > 1)
  {
    *a4 = 1;
  }

  else
  {
    v6 = [v9 allNotificationRequests];
    v7 = [v6 firstObject];

    if (v7)
    {
      v8 = [*(a1 + 40) _attachmentImageViewForSummaryForNotificationRequest:v7];
      if (v8)
      {
        [*(a1 + 32) addObject:v8];
      }
    }
  }
}

@end