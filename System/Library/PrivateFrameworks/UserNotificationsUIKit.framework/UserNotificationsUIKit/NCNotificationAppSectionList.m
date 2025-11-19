@interface NCNotificationAppSectionList
- (BOOL)_shouldShowContentForNotificationRequest:(id)a3;
- (BOOL)_showSummarizedFooterView;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)isAttachmentImageFeaturedForNotificationGroupList:(id)a3;
- (BOOL)removeNotificationRequest:(id)a3;
- (NCNotificationAppSectionList)initWithTitle:(id)a3 sectionType:(unint64_t)a4;
- (NSArray)groupListsForSmartOrdering;
- (double)footerViewHeightForNotificationList:(id)a3 withWidth:(double)a4;
- (double)headerViewHeightForNotificationList:(id)a3 withWidth:(double)a4;
- (id)_applicationIconRecipe;
- (id)_attachmentImageViewForSummaryForNotificationRequest:(id)a3;
- (id)_extractFeaturedNotificationRequestsFromGroupLists:(id)a3;
- (id)_localizedDefaultHiddenPreviewsBodyPlaceholder;
- (id)_newAttachmentImageViewForImage:(id)a3;
- (id)_newGroupListForNotificationRequest:(id)a3;
- (id)_nonFeaturedGroupLists;
- (id)_notificationGroupsForInsertion;
- (id)_summarizedAttachmentImageViews;
- (id)_summarizedContentStrings;
- (id)_summarizedStringsForNotificationRequest:(id)a3;
- (id)backgroundGroupNameBaseForAppSectionListSummarizedContentView:(id)a3;
- (id)footerViewForNotificationList:(id)a3;
- (id)headerViewForNotificationList:(id)a3;
- (id)notificationGroupList:(id)a3 requestsContentProviderForNotificationRequest:(id)a4;
- (id)requestCustomPlatterBackgroundViewForNotificationGroupList:(id)a3;
- (int64_t)insertNotificationRequest:(id)a3;
- (unint64_t)_insertionIndexForGroup:(id)a3;
- (unint64_t)_summarizedCount;
- (unint64_t)notificationListViewNumberOfItems:(id)a3;
- (void)_clearContentProviderForRequest:(id)a3;
- (void)_configureFooterViewIfNecessary;
- (void)_configureHeaderViewIfNecessary;
- (void)_configureSectionListView:(id)a3;
- (void)_mergeFeaturedGroupLists;
- (void)_removeFeaturedGroupListIfNecessary:(id)a3;
- (void)_updateFeaturedGroupListsForFeaturedNotificationRequests:(id)a3;
- (void)_updateSummarizedFooterViewContent;
- (void)appSectionListHeaderView:(id)a3 didRequestPresentingOptionsMenuFromView:(id)a4;
- (void)appSectionListSummarizedContentViewDidRecognizeTapGesture:(id)a3;
- (void)clearAll;
- (void)modifyNotificationRequest:(id)a3;
- (void)notificationListBaseComponentDidRemoveAll:(id)a3;
- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4;
- (void)notificationListPresentableGroup:(id)a3 didReceivedHorizontalTranslation:(double)a4 forCell:(id)a5;
- (void)setDeviceAuthenticated:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setGroupListsForSmartOrdering:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)unmergeNotificationGroupListsIfNecessary;
@end

@implementation NCNotificationAppSectionList

- (NCNotificationAppSectionList)initWithTitle:(id)a3 sectionType:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = NCNotificationAppSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v12 initWithTitle:a3 sectionType:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    featuredGroupLists = v4->_featuredGroupLists;
    v4->_featuredGroupLists = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    richContentProviders = v4->_richContentProviders;
    v4->_richContentProviders = v7;

    v4->_expanded = 0;
    v9 = [MEMORY[0x277D75128] sharedApplication];
    v10 = [v9 preferredContentSizeCategory];
    [(NCNotificationAppSectionList *)v4 setPreferredContentSizeCategory:v10];
  }

  return v4;
}

- (NSArray)groupListsForSmartOrdering
{
  [(NCNotificationAppSectionList *)self _mergeFeaturedGroupLists];
  [(NCNotificationAppSectionList *)self setMerged:1];
  v3 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v4 = [v3 copy];

  return v4;
}

- (void)setGroupListsForSmartOrdering:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationStructuredSectionList *)self logDescription];
      v14 = 138543618;
      v15 = v7;
      v16 = 2048;
      v17 = [v4 count];
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting group lists for smart ordering with count %lu", &v14, 0x16u);
    }

    v8 = [(NCNotificationAppSectionList *)self _extractFeaturedNotificationRequestsFromGroupLists:v4];
    [(NCNotificationAppSectionList *)self _updateFeaturedGroupListsForFeaturedNotificationRequests:v8];
    v9 = [v4 bs_filter:&__block_literal_global_7];
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = [(NCNotificationAppSectionList *)self featuredGroupLists];
    v12 = [v10 initWithArray:v11];

    [v12 addObjectsFromArray:v9];
    [(NCNotificationStructuredSectionList *)self setNotificationGroups:v12];
    [(NCNotificationAppSectionList *)self setMerged:0];
    v13 = [(NCNotificationStructuredSectionList *)self listView];
    [v13 invalidateData];
  }
}

- (void)setExpanded:(BOOL)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_expanded != a3)
  {
    v3 = a3;
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543618;
      v26 = v7;
      v27 = 1024;
      v28 = v3;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting expanded = %{BOOL}d", buf, 0x12u);
    }

    self->_expanded = v3;
    v22 = v3;
    if (v3)
    {
      v8 = [(NCNotificationStructuredSectionList *)self listView];
      [v8 reloadFooterViewAnimated:1];

      v9 = [(NSMutableArray *)self->_featuredGroupLists count];
      v10 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
      v11 = [v10 count];

      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
          v14 = [v13 objectAtIndex:i];
          v15 = [v14 listView];
          [v15 setNeedsLayout];

          v16 = [(NCNotificationStructuredSectionList *)self listView];
          [v16 insertViewAtIndex:v9 + i animated:1];

          v17 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
          v18 = [v17 objectAtIndex:i];
          v19 = [v18 allNotificationRequests];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __44__NCNotificationAppSectionList_setExpanded___block_invoke;
          v23[3] = &unk_278370958;
          v23[4] = self;
          v24 = i;
          [v19 enumerateObjectsUsingBlock:v23];
        }
      }
    }

    v20 = [(NCNotificationStructuredSectionList *)self listView];
    [v20 setNeedsLayout];

    v21 = [(NCNotificationStructuredSectionList *)self delegate];
    [v21 notificationStructuredSectionList:self transitionedGroupedStateIsGrouped:!v22];
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
      v5 = [(NCNotificationStructuredSectionList *)self logDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ unmerging group lists", &v7, 0xCu);
    }

    v6 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
    [(NCNotificationAppSectionList *)self setGroupListsForSmartOrdering:v6];
  }
}

- (int64_t)insertNotificationRequest:(id)a3
{
  v4 = a3;
  [(NCNotificationAppSectionList *)self _clearContentProviderForRequest:v4];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__NCNotificationAppSectionList_insertNotificationRequest___block_invoke;
  v11[3] = &unk_278370980;
  v6 = v4;
  v12 = v6;
  v13 = self;
  v14 = &v16;
  v15 = &v20;
  [v5 enumerateObjectsUsingBlock:v11];

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

- (void)modifyNotificationRequest:(id)a3
{
  v4 = a3;
  [(NCNotificationAppSectionList *)self _clearContentProviderForRequest:v4];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__NCNotificationAppSectionList_modifyNotificationRequest___block_invoke;
  v9[3] = &unk_2783709A8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  [v5 enumerateObjectsUsingBlock:v9];

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

- (BOOL)removeNotificationRequest:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__NCNotificationAppSectionList_removeNotificationRequest___block_invoke;
  v11[3] = &unk_27836F7F8;
  v13 = &v14;
  v6 = v4;
  v12 = v6;
  [v5 enumerateObjectsUsingBlock:v11];

  v10.receiver = self;
  v10.super_class = NCNotificationAppSectionList;
  v7 = [(NCNotificationStructuredSectionList *)&v10 removeNotificationRequest:v6];
  [(NCNotificationAppSectionList *)self _updateSummarizedFooterViewContent];
  [(NCNotificationAppSectionList *)self _clearContentProviderForRequest:v6];
  if (*(v15 + 24) == 1)
  {
    v8 = [(NCNotificationAppSectionList *)self featuredGroupLists];
    [v8 enumerateObjectsUsingBlock:&__block_literal_global_12];
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

- (void)setDeviceAuthenticated:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = NCNotificationAppSectionList;
  [(NCNotificationStructuredSectionList *)&v9 setDeviceAuthenticated:?];
  v5 = [(NCNotificationAppSectionList *)self richContentProviders];
  v6 = [v5 allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NCNotificationAppSectionList_setDeviceAuthenticated___block_invoke;
  v7[3] = &__block_descriptor_33_e57_v32__0__NCNotificationRequestRichContentProvider_8Q16_B24l;
  v8 = a3;
  [v6 enumerateObjectsUsingBlock:v7];
}

- (void)clearAll
{
  v4.receiver = self;
  v4.super_class = NCNotificationAppSectionList;
  [(NCNotificationStructuredSectionList *)&v4 clearAll];
  v3 = [(NCNotificationStructuredSectionList *)self delegate];
  [v3 notificationListBaseComponentDidRemoveAll:self];
}

- (unint64_t)notificationListViewNumberOfItems:(id)a3
{
  v4 = a3;
  if ([(NCNotificationAppSectionList *)self _showSummarizedFooterView])
  {
    v5 = [(NSMutableArray *)self->_featuredGroupLists count];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NCNotificationAppSectionList;
    v5 = [(NCNotificationStructuredSectionList *)&v8 notificationListViewNumberOfItems:v4];
  }

  v6 = v5;

  return v6;
}

- (id)headerViewForNotificationList:(id)a3
{
  [(NCNotificationAppSectionList *)self _configureHeaderViewIfNecessary];
  headerView = self->_headerView;

  return headerView;
}

- (double)headerViewHeightForNotificationList:(id)a3 withWidth:(double)a4
{
  [(NCNotificationAppSectionList *)self _configureHeaderViewIfNecessary];
  v6 = [(NCNotificationAppSectionList *)self isCombinedAppSectionList];
  result = 10.0;
  if (!v6)
  {
    [(NCNotificationAppSectionListHeaderView *)self->_headerView sizeThatFits:a4, 0.0];
    return v8;
  }

  return result;
}

- (id)footerViewForNotificationList:(id)a3
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

      v5 = [(NCNotificationStructuredSectionList *)self listView];
      [v5 reloadFooterViewAnimated:1];
    }
  }

  v6 = self->_footerView;

  return v6;
}

- (double)footerViewHeightForNotificationList:(id)a3 withWidth:(double)a4
{
  [(NCNotificationAppSectionList *)self _configureFooterViewIfNecessary];
  v6 = [(NCNotificationAppSectionList *)self _showSummarizedFooterView];
  result = 0.0;
  if (v6)
  {
    [(NCNotificationAppSectionListSummarizedContentView *)self->_footerView sizeThatFits:a4, 0.0];
    return v8;
  }

  return result;
}

- (BOOL)isAttachmentImageFeaturedForNotificationGroupList:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NCNotificationAppSectionList *)self _isViewFeaturedAtIndex:v6];
}

- (void)notificationListBaseComponentDidRemoveAll:(id)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationAppSectionList;
  v4 = a3;
  [(NCNotificationStructuredSectionList *)&v6 notificationListBaseComponentDidRemoveAll:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [(NCNotificationAppSectionList *)self _removeFeaturedGroupListIfNecessary:v5, v6.receiver, v6.super_class];
}

- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4
{
  v8.receiver = self;
  v8.super_class = NCNotificationAppSectionList;
  v6 = a3;
  [(NCNotificationStructuredSectionList *)&v8 notificationListComponent:v6 didRemoveNotificationRequest:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(NCNotificationAppSectionList *)self _removeFeaturedGroupListIfNecessary:v7, v8.receiver, v8.super_class];
}

- (id)notificationGroupList:(id)a3 requestsContentProviderForNotificationRequest:(id)a4
{
  v5 = a4;
  v6 = [(NSMutableDictionary *)self->_richContentProviders objectForKey:v5];
  if (!v6)
  {
    v6 = [(NCNotificationRequestCoalescingContentProvider *)[NCNotificationRequestRichContentProvider alloc] initWithNotificationRequest:v5];
    [(NCNotificationRequestCoalescingContentProvider *)v6 setDeviceAuthenticated:[(NCNotificationStructuredSectionList *)self deviceAuthenticated]];
    [(NCNotificationRequestRichContentProvider *)v6 setIconVisible:[(NCNotificationAppSectionList *)self isCombinedAppSectionList]];
    [(NSMutableDictionary *)self->_richContentProviders bs_setSafeObject:v6 forKey:v5];
  }

  return v6;
}

- (id)requestCustomPlatterBackgroundViewForNotificationGroupList:(id)a3
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

- (void)notificationListPresentableGroup:(id)a3 didReceivedHorizontalTranslation:(double)a4 forCell:(id)a5
{
  v10 = a3;
  if ([(NCNotificationAppSectionList *)self _shouldFeatureLeadingViews])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(NCNotificationAppSectionList *)self featuredGroupLists];
      v8 = [v7 indexOfObject:v10];

      if (v8 == 1)
      {
        v9 = [(NCNotificationStructuredSectionList *)self listView];
        [v9 setFeaturedLeadingViewOcclusionTranslation:a4];
      }
    }
  }
}

- (void)appSectionListHeaderView:(id)a3 didRequestPresentingOptionsMenuFromView:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
  v7 = [v6 firstObject];

  v8 = [(NCNotificationStructuredSectionList *)self delegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__NCNotificationAppSectionList_appSectionListHeaderView_didRequestPresentingOptionsMenuFromView___block_invoke;
  v10[3] = &unk_2783709F0;
  v11 = v5;
  v9 = v5;
  [v8 notificationListComponent:self requestsPresentingOptionsMenuForNotificationRequest:v7 presentingViewProvider:v10 optionsForSection:1 completion:0];
}

- (void)appSectionListSummarizedContentViewDidRecognizeTapGesture:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationStructuredSectionList *)self logDescription];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ is expanding on summarized view tap", &v11, 0xCu);
  }

  [(NCNotificationAppSectionList *)self setExpanded:1];
  v8 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  if ([v8 count] == 1)
  {
    v9 = [v8 firstObject];
    v10 = [v9 listView];
    [v10 setGrouped:0];
  }
}

- (id)backgroundGroupNameBaseForAppSectionListSummarizedContentView:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [v4 backgroundGroupNameBaseForNotificationListBaseComponent:self];

  return v5;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  if (self->_strokeVisualStylingProvider != v6)
  {
    v7 = v6;
    objc_storeStrong(&self->_strokeVisualStylingProvider, a3);
    [(NCNotificationListBaseContentView *)self->_headerView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
    [(NCNotificationListBaseContentView *)self->_footerView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
    v6 = v7;
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v7.receiver = self;
  v7.super_class = NCNotificationAppSectionList;
  [(NCNotificationStructuredSectionList *)&v7 adjustForContentSizeCategoryChange];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  [(NCNotificationAppSectionList *)self setPreferredContentSizeCategory:v4];

  [(NCNotificationAppSectionListHeaderView *)self->_headerView adjustForContentSizeCategoryChange];
  [(NCNotificationListBaseContentView *)self->_footerView adjustForContentSizeCategoryChange];
  v5 = [(NCNotificationStructuredSectionList *)self listView];
  [v5 invalidateData];

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

- (unint64_t)_insertionIndexForGroup:(id)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationAppSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v8 _insertionIndexForGroup:a3];
  v5 = v4;
  if (![(NCNotificationAppSectionList *)self isMerged])
  {
    v6 = [(NCNotificationAppSectionList *)self featuredGroupLists];
    v5 = [v6 count];
  }

  return v4 + v5;
}

- (void)_configureSectionListView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationAppSectionList;
  v3 = a3;
  [(NCNotificationStructuredSectionList *)&v4 _configureSectionListView:v3];
  [v3 setHorizontalInsetMargin:{14.0, v4.receiver, v4.super_class}];
  [v3 setNumberOfFeaturedLeadingViews:2];
  [v3 setFooterViewVerticalMargin:10.0];
  [v3 setGroupingAnimationStyle:1];
  [v3 setPreferredBottomTransitionTransformer:0];
}

- (id)_newGroupListForNotificationRequest:(id)a3
{
  v7.receiver = self;
  v7.super_class = NCNotificationAppSectionList;
  v3 = [(NCNotificationStructuredSectionList *)&v7 _newGroupListForNotificationRequest:a3];
  v4 = [v3 listView];
  [v4 setLeadingContentShouldFillList:1];

  v5 = [v3 listView];
  [v5 setPreferredBottomTransitionTransformer:0];

  return v3;
}

- (BOOL)_showSummarizedFooterView
{
  if ([(NCNotificationAppSectionList *)self isExpanded]|| [(NCNotificationAppSectionList *)self isMerged]|| [(NCNotificationAppSectionList *)self isCombinedAppSectionList])
  {
    return 0;
  }

  v5 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  v6 = [v5 count];
  v7 = [v5 firstObject];
  v8 = [v7 notificationCount];

  v10 = v6 == 1 && v8 > 1;
  v3 = v6 > 1 || v10;

  return v3;
}

- (void)_clearContentProviderForRequest:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_richContentProviders allKeys];
  v6 = [v5 copy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__NCNotificationAppSectionList__clearContentProviderForRequest___block_invoke;
  v10[3] = &unk_278370180;
  v7 = v4;
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
    v6 = [(NCNotificationStructuredSectionList *)self title];
    [(NCNotificationAppSectionListHeaderView *)v5 setTitle:v6];

    objc_initWeak(&location, self);
    v7 = [(NCNotificationAppSectionList *)self _applicationIconRecipe];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__NCNotificationAppSectionList__configureHeaderViewIfNecessary__block_invoke;
    v9[3] = &unk_278370A18;
    objc_copyWeak(&v11, &location);
    v8 = v7;
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
  v3 = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
  v4 = [v3 firstObject];
  v5 = [v4 subordinateIconRecipe];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
    v9 = [v8 firstObject];
    v7 = [v9 iconRecipe];
  }

  return v7;
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

- (void)_removeFeaturedGroupListIfNecessary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v4 = [v4 count];
    if (!v4)
    {
      v5 = [(NCNotificationAppSectionList *)self featuredGroupLists];
      v6 = [v5 containsObject:v12];

      if (v6)
      {
        v7 = [(NCNotificationAppSectionList *)self featuredGroupLists];
        [v7 removeObject:v12];
      }

      v8 = [(NCNotificationAppSectionList *)self featuredGroupLists];
      v9 = [v8 count];

      if (v9)
      {
        v10 = [(NCNotificationAppSectionList *)self featuredGroupLists];
        [v10 enumerateObjectsUsingBlock:&__block_literal_global_43];

        v11 = [(NCNotificationStructuredSectionList *)self listView];
        [v11 setNeedsLayout];
      }
    }
  }

  MEMORY[0x2821F96F8](v4);
}

void __68__NCNotificationAppSectionList__removeFeaturedGroupListIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 leadingNotificationRequest];
  [v2 reloadNotificationRequest:v3];
}

- (id)_extractFeaturedNotificationRequestsFromGroupLists:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  if ([v5 count] == 1)
  {
    v7 = [v5 objectAtIndex:0];

    v8 = [v7 allNotificationRequests];
    v9 = [v8 copy];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__NCNotificationAppSectionList__extractFeaturedNotificationRequestsFromGroupLists___block_invoke;
    v15[3] = &unk_2783708E0;
    v16 = v6;
    v17 = v7;
    v18 = self;
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
    v14 = self;
    [v5 enumerateObjectsUsingBlock:v12];

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

- (void)_updateFeaturedGroupListsForFeaturedNotificationRequests:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__NCNotificationAppSectionList__updateFeaturedGroupListsForFeaturedNotificationRequests___block_invoke;
  v16[3] = &unk_2783705B0;
  v16[4] = self;
  v7 = v6;
  v17 = v7;
  [v5 enumerateObjectsUsingBlock:v16];

  v8 = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __89__NCNotificationAppSectionList__updateFeaturedGroupListsForFeaturedNotificationRequests___block_invoke_3;
  v13 = &unk_278370628;
  v14 = v7;
  v15 = self;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:&v10];

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
  v3 = [(NCNotificationAppSectionList *)self featuredGroupLists];
  v4 = [v3 count];

  if (v4)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ merging featured group lists", buf, 0xCu);
    }

    v8 = [(NCNotificationAppSectionList *)self featuredGroupLists];
    v9 = [v8 copy];

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
  v4 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v5 = [v3 initWithArray:v4];

  v6 = [(NCNotificationAppSectionList *)self featuredGroupLists];
  [v5 removeObjectsInArray:v6];

  return v5;
}

- (BOOL)_shouldShowContentForNotificationRequest:(id)a3
{
  v4 = [a3 options];
  v5 = [v4 contentPreviewSetting];

  if (!v5)
  {
    return 1;
  }

  if (v5 != 1)
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
    v8 = [(NCNotificationAppSectionList *)self _summarizedContentStrings];
    [(NCNotificationAppSectionListSummarizedContentView *)v7 setTitleAndContentStrings:v8];

    v9 = self->_footerView;
    v10 = [(NCNotificationAppSectionList *)self _summarizedAttachmentImageViews];
    [(NCNotificationAppSectionListSummarizedContentView *)v9 setAttachmentImageViews:v10];

    v11 = [(NCNotificationStructuredSectionList *)self listView];
    [v11 setNeedsLayout];
  }
}

- (unint64_t)_summarizedCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__NCNotificationAppSectionList__summarizedCount__block_invoke;
  v5[3] = &unk_278370650;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
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

- (id)_summarizedStringsForNotificationRequest:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationAppSectionList *)self _shouldShowContentForNotificationRequest:v4];
  v6 = [v4 content];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 title];
  }

  else
  {
    v9 = [v4 content];
    v8 = [v9 defaultHeader];
  }

  if (v8)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = NCUserNotificationsUIKitFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"NOTIFICATION_SUMMARY_APP_SECTION_TITLE_FORMAT" value:&stru_282FE84F8 table:0];
    v13 = [v10 stringWithFormat:v12, v8];

    if (v5)
    {
LABEL_6:
      v14 = [v7 message];
      v15 = [v14 copy];
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

  v14 = [v4 content];
  v16 = [v14 hiddenPreviewsBodyPlaceholder];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [(NCNotificationAppSectionList *)self _localizedDefaultHiddenPreviewsBodyPlaceholder];
  }

  v15 = v18;

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
  v4 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 allNotificationRequests];
    v7 = [v6 copy];

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
    [v4 enumerateObjectsUsingBlock:v9];
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

- (id)_attachmentImageViewForSummaryForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_richContentProviders objectForKey:v4];
  if (!v5)
  {
    v5 = [(NCNotificationRequestCoalescingContentProvider *)[NCNotificationRequestRichContentProvider alloc] initWithNotificationRequest:v4];
    [(NCNotificationRequestCoalescingContentProvider *)v5 setDeviceAuthenticated:[(NCNotificationStructuredSectionList *)self deviceAuthenticated]];
    [(NSMutableDictionary *)self->_richContentProviders bs_setSafeObject:v5 forKey:v4];
  }

  v6 = [(NCNotificationRequestCoalescingContentProvider *)v5 notificationRequest];
  v7 = [v6 content];
  v8 = [v7 communicationContext];

  if (!v8 || (v9 = [NCAvatarView alloc], -[NCNotificationRequestCoalescingContentProvider notificationRequest](v5, "notificationRequest"), v10 = objc_claimAutoreleasedReturnValue(), [v10 topLevelSectionIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[NCAvatarView initWithBundleIdentifier:communicationContext:pointSize:](v9, "initWithBundleIdentifier:communicationContext:pointSize:", v11, v8, 38.0), v11, v10, !v12))
  {
    v13 = [v4 content];
    v14 = [v13 attachmentImage];

    if (v14)
    {
      if ([(NCNotificationRequestRichContentProvider *)v5 hasLoadedRichAttachmentImage])
      {
        v15 = [(NCNotificationRequestRichContentProvider *)v5 thumbnail];

        v14 = v15;
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

      v12 = [(NCNotificationAppSectionList *)self _newAttachmentImageViewForImage:v14];
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

- (id)_newAttachmentImageViewForImage:(id)a3
{
  v3 = MEMORY[0x277D75D18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v6 setContentMode:2];
  [v6 _setContinuousCornerRadius:10.0];
  [v6 setClipsToBounds:1];
  [v6 setImage:v4];

  [v5 addSubview:v6];
  [v6 setAutoresizingMask:18];

  return v5;
}

- (id)_summarizedAttachmentImageViews
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(NCNotificationAppSectionList *)self _nonFeaturedGroupLists];
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 allNotificationRequests];
    v7 = [v6 copy];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__NCNotificationAppSectionList__summarizedAttachmentImageViews__block_invoke;
    v12[3] = &unk_2783705B0;
    v13 = v3;
    v14 = self;
    [v7 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__NCNotificationAppSectionList__summarizedAttachmentImageViews__block_invoke_2;
    v9[3] = &unk_278370628;
    v10 = v3;
    v11 = self;
    [v4 enumerateObjectsUsingBlock:v9];
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