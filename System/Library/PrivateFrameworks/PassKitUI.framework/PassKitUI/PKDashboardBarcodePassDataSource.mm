@interface PKDashboardBarcodePassDataSource
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexPath:(SEL)path;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexSection:(SEL)section;
- (BOOL)hasContent;
- (PKDashboardBarcodePassDataSource)initWithGroupView:(id)view context:(id)context;
- (PKDashboardPassGroupViewController)viewController;
- (id)_createDescriptorForPass:(id)pass passState:(id)state;
- (id)_messageForIssuerBinding;
- (id)_relevancyPresentmentMessages;
- (id)footerTextItemForSection:(unint64_t)section;
- (id)itemAtIndexPath:(id)path;
- (id)titleForSection:(unint64_t)section;
- (unint64_t)firstSectionIndexForSectionIdentifier:(unint64_t)identifier;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (void)_reloadMessagesWithReason:(id)reason;
- (void)_reloadTiles:(id)tiles descriptorIdentifier:(id)identifier;
- (void)_reloadUpcomingPassInformationSections;
- (void)_sendAnalyticsForIssuerBindingDidTapButton:(id)button;
- (void)_sendAnalyticsForIssuerBindingMessageType:(id)type;
- (void)_setPassStateProvider:(id)provider;
- (void)_updateWithTiles:(id)tiles;
- (void)_updateWithUpcomingPassInformationSections:(id)sections;
- (void)dealloc;
- (void)executeAfterContentIsLoaded:(id)loaded;
- (void)freezeContentLoaded;
- (void)groupView:(id)view didUpdatePassView:(id)passView;
- (void)groupView:(id)view frontmostPassViewDidChange:(id)change withContext:(id)context;
- (void)passStateProvider:(id)provider didUpdatePassState:(id)state;
- (void)reloadData;
- (void)reloadFrontmostPass;
- (void)reloadMessagesWithReason:(id)reason;
- (void)reloadTiles;
- (void)reloadUpcomingPassInformationSections;
- (void)sendContentIsLoadedIfNecessary;
- (void)setDataSourceDelegate:(id)delegate;
- (void)tileFactory:(id)factory didUpdateTiles:(id)tiles forContext:(int64_t)context descriptorIdentifier:(id)identifier;
- (void)updateContentIsLoaded;
- (void)updateWithBlock:(id)block andDiff:(id)diff;
@end

@implementation PKDashboardBarcodePassDataSource

- (PKDashboardBarcodePassDataSource)initWithGroupView:(id)view context:(id)context
{
  viewCopy = view;
  v21.receiver = self;
  v21.super_class = PKDashboardBarcodePassDataSource;
  v7 = [(PKDashboardBarcodePassDataSource *)&v21 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_groupView, view);
    [viewCopy addPassGroupViewObserver:v8];
    frontmostPassView = [viewCopy frontmostPassView];
    [(PKDashboardBarcodePassDataSource *)v8 _setPassStateProvider:frontmostPassView];

    group = [viewCopy group];
    group = v8->_group;
    v8->_group = group;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    executionBlocksContentIsLoaded = v8->_executionBlocksContentIsLoaded;
    v8->_executionBlocksContentIsLoaded = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    messages = v8->_messages;
    v8->_messages = v14;

    v16 = objc_alloc_init(PKPassSemanticTileFactory);
    tileFactory = v8->_tileFactory;
    v8->_tileFactory = v16;

    [(PKPassSemanticTileFactory *)v8->_tileFactory addObserver:v8];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dynamicSections = v8->_dynamicSections;
    v8->_dynamicSections = v18;

    [(NSMutableDictionary *)v8->_dynamicSections setObject:&unk_1F3CC6F98 forKeyedSubscript:&unk_1F3CC6FB0];
    [(NSMutableDictionary *)v8->_dynamicSections setObject:&unk_1F3CC6F98 forKeyedSubscript:&unk_1F3CC6FC8];
    [(PKDashboardBarcodePassDataSource *)v8 reloadFrontmostPass];
    [(PKDashboardBarcodePassDataSource *)v8 reloadData];
  }

  return v8;
}

- (void)dealloc
{
  [(PKPassGroupView *)self->_groupView removePassGroupViewObserver:self];
  [(PKPassDynamicStateProviding *)self->_passStateProvider removePassStateObserver:self];
  [(PKPassSemanticTileFactory *)self->_tileFactory removeObserver:self];
  v3.receiver = self;
  v3.super_class = PKDashboardBarcodePassDataSource;
  [(PKDashboardBarcodePassDataSource *)&v3 dealloc];
}

- (void)sendContentIsLoadedIfNecessary
{
  if (self->_group)
  {
    [(PKDashboardBarcodePassDataSource *)self updateContentIsLoaded];
  }
}

- (void)reloadFrontmostPass
{
  v3 = [(PKGroup *)self->_group passAtIndex:[(PKGroup *)self->_group frontmostPassIndex]];
  if (self->_pass == v3)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Skipping reload of pass...", v8, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_pass, v3);
    passState = [(PKPassDynamicStateProviding *)self->_passStateProvider passState];
    v5 = [(PKDashboardBarcodePassDataSource *)self _createDescriptorForPass:v3 passState:passState];
    tileDescriptor = self->_tileDescriptor;
    self->_tileDescriptor = v5;
  }
}

- (void)reloadData
{
  [(PKDashboardBarcodePassDataSource *)self reloadMessagesWithReason:@"Pass reload"];
  [(PKDashboardBarcodePassDataSource *)self reloadTiles];

  [(PKDashboardBarcodePassDataSource *)self reloadUpcomingPassInformationSections];
}

- (void)groupView:(id)view didUpdatePassView:(id)passView
{
  pass = [passView pass];
  uniqueID = [pass uniqueID];

  [(PKPassSemanticTileFactory *)self->_tileFactory clearCacheOfDescriptorsWithPassUniqueIdentifier:uniqueID];
  frontmostPassView = [(PKPassGroupView *)self->_groupView frontmostPassView];
  pass2 = [frontmostPassView pass];
  uniqueID2 = [pass2 uniqueID];

  v10 = uniqueID2;
  v11 = uniqueID;
  v13 = v11;
  if (v10 == v11)
  {

    goto LABEL_7;
  }

  if (!v11 || !v10)
  {

    goto LABEL_9;
  }

  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
LABEL_7:
    [(PKDashboardBarcodePassDataSource *)self reloadFrontmostPass];
    [(PKDashboardBarcodePassDataSource *)self reloadData];
  }

LABEL_9:
}

- (void)groupView:(id)view frontmostPassViewDidChange:(id)change withContext:(id)context
{
  [(PKDashboardBarcodePassDataSource *)self _setPassStateProvider:change];
  [(PKDashboardBarcodePassDataSource *)self reloadFrontmostPass];

  [(PKDashboardBarcodePassDataSource *)self reloadData];
}

- (void)_setPassStateProvider:(id)provider
{
  providerCopy = provider;
  passStateProvider = self->_passStateProvider;
  if (passStateProvider != providerCopy)
  {
    v7 = providerCopy;
    [(PKPassDynamicStateProviding *)passStateProvider removePassStateObserver:self];
    objc_storeStrong(&self->_passStateProvider, provider);
    [(PKPassDynamicStateProviding *)self->_passStateProvider addPassStateObserver:self];
    providerCopy = v7;
  }
}

- (void)passStateProvider:(id)provider didUpdatePassState:(id)state
{
  stateCopy = state;
  pass = [provider pass];
  pass = self->_pass;

  if (pass == pass)
  {
    v8 = [(PKDashboardBarcodePassDataSource *)self _createDescriptorForPass:self->_pass passState:stateCopy];
    tileDescriptor = self->_tileDescriptor;
    self->_tileDescriptor = v8;

    v10 = [(PKDashboardBarcodePassDataSource *)self firstSectionIndexForSectionIdentifier:2];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([(NSArray *)self->_tileGroups count])
    {
      v12 = 0;
      do
      {
        v13 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v10 + v12];
        v14 = [(PKDashboardBarcodePassDataSource *)self itemAtIndexPath:v13];
        [WeakRetained itemChanged:v14 atIndexPath:v13];

        ++v12;
      }

      while (v12 < [(NSArray *)self->_tileGroups count]);
    }
  }

  MEMORY[0x1EEE66C30]();
}

- (unint64_t)firstSectionIndexForSectionIdentifier:(unint64_t)identifier
{
  if (!identifier)
  {
    return 0;
  }

  v5 = 0;
  for (i = 0; i != identifier; ++i)
  {
    dynamicSections = self->_dynamicSections;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v9 = [(NSMutableDictionary *)dynamicSections objectForKeyedSubscript:v8];
    v10 = v9;
    if (!v9)
    {
      v9 = &unk_1F3CC6FE0;
    }

    unsignedIntegerValue = [v9 unsignedIntegerValue];

    v5 += unsignedIntegerValue;
  }

  return v5;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexSection:(SEL)section
{
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:-1 inSection:a4];
  [(PKDashboardBarcodePassDataSource *)self _dataSourceIndicesForIndexPath:v6];

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexPath:(SEL)path
{
  v16 = a4;
  section = [v16 section];
  v7 = 0;
  v8 = -1;
  do
  {
    v9 = v7;
    ++v8;
    dynamicSections = self->_dynamicSections;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    v12 = [(NSMutableDictionary *)dynamicSections objectForKeyedSubscript:v11];
    v13 = v12;
    if (!v12)
    {
      v12 = &unk_1F3CC6FE0;
    }

    unsignedIntegerValue = [v12 unsignedIntegerValue];

    v7 = unsignedIntegerValue + v9;
  }

  while (unsignedIntegerValue + v9 <= section);
  retstr->var0 = v8;
  retstr->var1 = section - v9;
  retstr->var2 = [v16 item];

  return result;
}

- (void)setDataSourceDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(PKDashboardBarcodePassDataSource *)self sendContentIsLoadedIfNecessary];
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  [(PKDashboardBarcodePassDataSource *)self _dataSourceIndicesForIndexPath:pathCopy];
  v5 = [[PKDashboardPassGroupItem alloc] initWithGroupView:self->_groupView];

  return v5;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = [(PKDashboardBarcodePassDataSource *)self _dataSourceIndicesForIndexSection:section];
  v5 = 1;
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      if (self->_allContentIsLoaded)
      {
        messages = self->_messages;
        return [messages count] != 0;
      }

      return 0;
    }

    if (v9 == 2)
    {
      if (self->_allContentIsLoaded)
      {
        messages = self->_tileGroups;
        return [messages count] != 0;
      }

      return 0;
    }

    return v5;
  }

  if (v9 == 3)
  {
    if (!self->_allContentIsLoaded)
    {
      return 0;
    }

    v7 = [(NSArray *)self->_upcomingPassInformationGroups objectAtIndexedSubscript:v10];
    entries = [v7 entries];
    v5 = [entries count];

    return v5;
  }

  if (v9 != 4)
  {
    return v5;
  }

  __break(1u);
  return result;
}

- (unint64_t)numberOfSections
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dynamicSections = self->_dynamicSections;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKDashboardBarcodePassDataSource_numberOfSections__block_invoke;
  v5[3] = &unk_1E8015520;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)dynamicSections enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3 + 4;
}

uint64_t __52__PKDashboardBarcodePassDataSource_numberOfSections__block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result;
  if (*(*(result + 32) + 89) == 1)
  {
    result = [a3 integerValue];
    v4 = result - 1;
  }

  else
  {
    v4 = -1;
  }

  *(*(*(v3 + 40) + 8) + 24) += v4;
  return result;
}

- (id)titleForSection:(unint64_t)section
{
  [(PKDashboardBarcodePassDataSource *)self _dataSourceIndicesForIndexSection:section];

  return 0;
}

- (id)footerTextItemForSection:(unint64_t)section
{
  [(PKDashboardBarcodePassDataSource *)self _dataSourceIndicesForIndexSection:section];

  return 0;
}

- (void)freezeContentLoaded
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_contentLoadedFrozen)
  {
    self->_contentLoadedFrozen = 1;
    v3 = [(NSMutableArray *)self->_executionBlocksContentIsLoaded copy];
    [(NSMutableArray *)self->_executionBlocksContentIsLoaded removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)updateContentIsLoaded
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_allContentIsLoaded && !self->_contentLoadedFrozen && self->_tilesLoaded && self->_messagesLoaded && self->_upcomingPassInformationLoaded)
  {
    self->_allContentIsLoaded = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained contentIsLoaded];
    }

    v5 = [(NSMutableArray *)self->_executionBlocksContentIsLoaded copy];
    [(NSMutableArray *)self->_executionBlocksContentIsLoaded removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)executeAfterContentIsLoaded:(id)loaded
{
  loadedCopy = loaded;
  if (loadedCopy)
  {
    v7 = loadedCopy;
    if (self->_allContentIsLoaded || self->_contentLoadedFrozen)
    {
      loadedCopy[2]();
    }

    else
    {
      executionBlocksContentIsLoaded = self->_executionBlocksContentIsLoaded;
      v6 = _Block_copy(loadedCopy);
      [(NSMutableArray *)executionBlocksContentIsLoaded addObject:v6];
    }
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)hasContent
{
  if (!self->_allContentIsLoaded)
  {
    return 1;
  }

  if ([(NSOrderedSet *)self->_messages count]|| [(NSArray *)self->_tileGroups count])
  {
    return 1;
  }

  return [(NSArray *)self->_upcomingPassInformationGroups count]!= 0;
}

- (id)_createDescriptorForPass:(id)pass passState:(id)state
{
  passCopy = pass;
  stateCopy = state;
  style = [passCopy style];
  if (style == 10)
  {
    v8 = [PKBoardingPassSemanticTileSupplier createSupplierForPass:passCopy passState:stateCopy];
  }

  else
  {
    if (style != 9)
    {
      goto LABEL_7;
    }

    v8 = [PKEventTicketSemanticTileSupplier createSupplierForPass:passCopy];
  }

  v9 = v8;
  if (v8)
  {
    allSemantics = [passCopy allSemantics];
    v11 = [PKPassSemanticTileDescriptor createWithPass:passCopy semantics:allSemantics additionalTilesContentSupplier:v9];

    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
LABEL_8:

  return v11;
}

- (void)reloadTiles
{
  identifier = [(PKPassSemanticTileDescriptor *)self->_tileDescriptor identifier];
  objc_initWeak(&location, self);
  tileDescriptor = self->_tileDescriptor;
  tileFactory = self->_tileFactory;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PKDashboardBarcodePassDataSource_reloadTiles__block_invoke;
  v6[3] = &unk_1E8011850;
  objc_copyWeak(&v7, &location);
  v6[4] = identifier;
  [(PKPassSemanticTileFactory *)tileFactory fetchTilesForDescriptor:tileDescriptor context:1 queueUpdates:1 completion:v6];
  [(PKPassSemanticTileFactory *)self->_tileFactory prewarmTileContentForDescriptor:self->_tileDescriptor context:2];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __47__PKDashboardBarcodePassDataSource_reloadTiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PKDashboardBarcodePassDataSource_reloadTiles__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __47__PKDashboardBarcodePassDataSource_reloadTiles__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) descriptorIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_reloadTiles:(id)tiles descriptorIdentifier:(id)identifier
{
  tilesCopy = tiles;
  identifierCopy = identifier;
  identifier = [(PKPassSemanticTileDescriptor *)self->_tileDescriptor identifier];
  v8 = identifierCopy;
  v9 = v8;
  if (identifier == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !identifier)
  {

    goto LABEL_9;
  }

  v10 = [identifier isEqualToString:v8];

  if (v10)
  {
LABEL_7:
    [(PKDashboardBarcodePassDataSource *)self _updateWithTiles:tilesCopy];
  }

LABEL_9:
}

- (void)_updateWithTiles:(id)tiles
{
  tilesCopy = tiles;
  v5 = self->_tileGroups;
  if ([tilesCopy count])
  {
    v6 = [tilesCopy copy];
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PKDashboardBarcodePassDataSource__updateWithTiles___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v11, &location);
  aBlock[4] = v6;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (self->_allContentIsLoaded)
  {
    v9 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldSections:v5 andNewSections:v6 sectionIdentifierAccessor:&__block_literal_global_58 sectionItemsAccessor:&__block_literal_global_71 firstSectionIndex:[(PKDashboardBarcodePassDataSource *)self firstSectionIndexForSectionIdentifier:2]];
    [(PKDashboardBarcodePassDataSource *)self updateWithBlock:v8 andDiff:v9];
  }

  else
  {
    (*(v7 + 2))(v7);
    [(PKDashboardBarcodePassDataSource *)self updateContentIsLoaded];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__PKDashboardBarcodePassDataSource__updateWithTiles___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(WeakRetained + 72) = 1;
  objc_storeStrong(WeakRetained + 8, *(a1 + 32));
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  [*(WeakRetained + 5) setObject:v2 forKeyedSubscript:&unk_1F3CC6FB0];
}

id __53__PKDashboardBarcodePassDataSource__updateWithTiles___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 identifier];

  return v3;
}

id __53__PKDashboardBarcodePassDataSource__updateWithTiles___block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [a2 tiles];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)updateWithBlock:(id)block andDiff:(id)diff
{
  blockCopy = block;
  diffCopy = diff;
  if (diffCopy)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__PKDashboardBarcodePassDataSource_updateWithBlock_andDiff___block_invoke;
    v14[3] = &unk_1E8011108;
    objc_copyWeak(&v17, &location);
    v16 = blockCopy;
    v9 = diffCopy;
    v15 = v9;
    [WeakRetained performBatchUpdates:v14 completion:0];

    v10 = objc_loadWeakRetained(&self->_delegate);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PKDashboardBarcodePassDataSource_updateWithBlock_andDiff___block_invoke_2;
    v11[3] = &unk_1E80110E0;
    objc_copyWeak(&v13, &location);
    v12 = v9;
    [v10 performBatchUpdates:v11 completion:0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __60__PKDashboardBarcodePassDataSource_updateWithBlock_andDiff___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v20 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    v3 = objc_loadWeakRetained(v20 + 3);
    v4 = [*(a1 + 32) deletedIndexPaths];
    [v3 deleteItemsAtIndexPaths:v4];

    v5 = [*(a1 + 32) deletedSections];
    [v3 deleteSections:v5];

    v6 = [*(a1 + 32) insertedIndexPaths];
    [v3 insertItemsAtIndexPaths:v6];

    v7 = [*(a1 + 32) insertedSections];
    [v3 insertSections:v7];

    v8 = [*(a1 + 32) movedFromSections];
    v9 = [*(a1 + 32) movedToSections];
    if ([v8 count])
    {
      v10 = 0;
      do
      {
        v11 = [v8 objectAtIndexedSubscript:v10];
        v12 = [v11 unsignedIntegerValue];

        v13 = [v9 objectAtIndexedSubscript:v10];
        v14 = [v13 unsignedIntegerValue];

        [v3 moveSection:v12 toSection:v14];
        ++v10;
      }

      while ([v8 count] > v10);
    }

    v15 = [*(a1 + 32) movedFromIndexPaths];
    v16 = [*(a1 + 32) movedToIndexPaths];
    if ([v15 count])
    {
      v17 = 0;
      do
      {
        v18 = [v15 objectAtIndexedSubscript:v17];
        v19 = [v16 objectAtIndexedSubscript:v17];
        [v3 moveItemAtIndexPath:v18 toIndexPath:v19];

        ++v17;
      }

      while ([v15 count] > v17);
    }

    WeakRetained = v20;
  }
}

void __60__PKDashboardBarcodePassDataSource_updateWithBlock_andDiff___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 3);
    v5 = [*(a1 + 32) changedIndexPaths];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [v3 itemAtIndexPath:v10];
          [v4 itemChanged:v11 atIndexPath:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)tileFactory:(id)factory didUpdateTiles:(id)tiles forContext:(int64_t)context descriptorIdentifier:(id)identifier
{
  tilesCopy = tiles;
  identifierCopy = identifier;
  if (context == 1)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __95__PKDashboardBarcodePassDataSource_tileFactory_didUpdateTiles_forContext_descriptorIdentifier___block_invoke;
    v11[3] = &unk_1E8011828;
    objc_copyWeak(&v14, &location);
    v12 = tilesCopy;
    v13 = identifierCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __95__PKDashboardBarcodePassDataSource_tileFactory_didUpdateTiles_forContext_descriptorIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) descriptorIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)reloadMessagesWithReason:(id)reason
{
  reasonCopy = reason;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKDashboardBarcodePassDataSource_reloadMessagesWithReason___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v7 = reasonCopy;
  v5 = reasonCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __61__PKDashboardBarcodePassDataSource_reloadMessagesWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadMessagesWithReason:*(a1 + 32)];
}

- (void)_reloadMessagesWithReason:(id)reason
{
  v18 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218242;
    selfCopy = self;
    v16 = 2112;
    v17 = reasonCopy;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): getting messages with reason: %@", &v14, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  _messageForIssuerBinding = [(PKDashboardBarcodePassDataSource *)self _messageForIssuerBinding];
  [v6 pk_safelyAddObject:_messageForIssuerBinding];

  _relevancyPresentmentMessages = [(PKDashboardBarcodePassDataSource *)self _relevancyPresentmentMessages];
  [v6 addObjectsFromArray:_relevancyPresentmentMessages];

  v9 = [v6 copy];
  messages = self->_messages;
  self->_messages = v9;

  self->_messagesLoaded = 1;
  if (self->_allContentIsLoaded)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v12 = [(PKDashboardBarcodePassDataSource *)self firstSectionIndexForSectionIdentifier:1];
      v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:v12];
      [WeakRetained reloadSections:v13];
    }
  }

  else
  {
    [(PKDashboardBarcodePassDataSource *)self updateContentIsLoaded];
  }
}

- (id)_messageForIssuerBinding
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  nfcPayload = [(PKPass *)self->_pass nfcPayload];
  payloadState = [nfcPayload payloadState];

  issuerBindingInformation = [(PKPass *)self->_pass issuerBindingInformation];
  v6 = [issuerBindingInformation objectForKey:@"learnMoreURL"];

  v7 = PKLocalizedPaymentString(&cfstr_IssuerDataDash.isa);
  v8 = 0;
  if (payloadState <= 1)
  {
    if (!payloadState)
    {
      v16 = 0;
      goto LABEL_16;
    }

    if (payloadState == 1)
    {
      [(PKDashboardBarcodePassDataSource *)self _sendAnalyticsForIssuerBindingMessageType:*MEMORY[0x1E69BA750]];
      organizationName = [(PKPass *)self->_pass organizationName];
      v8 = PKLocalizedPaymentString(&cfstr_IssuerDataDash_0.isa, &stru_1F3BD5BF0.isa, organizationName);

      if (!v6)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        goto LABEL_13;
      }

      v10 = PKPassKitUIBundle();
      v11 = [v10 URLForResource:@"MessageError" withExtension:@"pdf"];

      v12 = PKLocalizedPaymentString(&cfstr_IssuerDataDash_1.isa);
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__PKDashboardBarcodePassDataSource__messageForIssuerBinding__block_invoke;
      aBlock[3] = &unk_1E8014F68;
      objc_copyWeak(&v25, &location);
      v24 = v6;
      v13 = _Block_copy(aBlock);

      v14 = &v25;
      goto LABEL_12;
    }

LABEL_9:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  if (payloadState == 2)
  {
    [(PKDashboardBarcodePassDataSource *)self _sendAnalyticsForIssuerBindingMessageType:*MEMORY[0x1E69BA758]];
    v17 = PKPassKitUIBundle();
    v11 = [v17 URLForResource:@"MessageError" withExtension:@"pdf"];

    v8 = PKLocalizedPaymentString(&cfstr_IssuerDataDash_2.isa);
    v12 = PKLocalizedPaymentString(&cfstr_IssuerDataDash_3.isa);
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__PKDashboardBarcodePassDataSource__messageForIssuerBinding__block_invoke_2;
    v21[3] = &unk_1E8015548;
    objc_copyWeak(&v22, &location);
    v13 = _Block_copy(v21);
    v14 = &v22;
LABEL_12:
    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
    goto LABEL_13;
  }

  if (payloadState != 3)
  {
    goto LABEL_9;
  }

  v15 = PKLocalizedPaymentString(&cfstr_ActivatingTitl.isa);

  v8 = PKLocalizedPaymentString(&cfstr_ActivatingMess.isa);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = v15;
LABEL_13:
  v16 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v16 setIdentifier:@"IssuerBindingInvalidMessage"];
  if (v11)
  {
    v18 = PKUIScreenScale();
    v19 = PKUIImageFromPDF(v11, 45.0, 45.0, v18);
    [(PKDashboardPassMessage *)v16 setImage:v19];
  }

  [(PKDashboardPassMessage *)v16 setTitle:v7];
  [(PKDashboardPassMessage *)v16 setMessage:v8];
  [(PKDashboardPassMessage *)v16 setButtonTitle:v12];
  [(PKDashboardPassMessage *)v16 setActionOnButtonPress:v13];

LABEL_16:

  return v16;
}

void __60__PKDashboardBarcodePassDataSource__messageForIssuerBinding__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained _sendAnalyticsForIssuerBindingDidTapButton:*MEMORY[0x1E69BB3D8]];
  }

  v2 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  PKOpenURL();
}

void __60__PKDashboardBarcodePassDataSource__messageForIssuerBinding__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _sendAnalyticsForIssuerBindingDidTapButton:*MEMORY[0x1E69BB3E8]];
  }

  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  PKOpenURL();
}

- (id)_relevancyPresentmentMessages
{
  v25[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(PKPass *)self->_pass style]== 10)
  {
    uniqueID = [(PKPass *)self->_pass uniqueID];
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    if ([mEMORY[0x1E69B8A58] stateOfRelevancyPresentmentOfType:1 containingPassUniqueIdentifier:uniqueID] >= 2)
    {
      v6 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v6 setIdentifier:@"LaunchLiveActivity"];
      v7 = PKLocalizedFlightString(&cfstr_PassDashboardL.isa);
      [(PKDashboardPassMessage *)v6 setTitle:v7];

      v8 = PKLocalizedFlightString(&cfstr_PassDashboardL_0.isa);
      [(PKDashboardPassMessage *)v6 setMessage:v8];

      v9 = PKLocalizedFlightString(&cfstr_PassDashboardL_1.isa);
      [(PKDashboardPassMessage *)v6 setButtonTitle:v9];

      v10 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:1];
      v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"airplane.path.dotted" withConfiguration:v10];
      v12 = [PKDashboardPassMessageImageDescriptorImageAsset alloc];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      v15 = [(PKDashboardPassMessageImageDescriptorImageAsset *)v12 initWithImage:v11 tintColor:whiteColor backgroundColor:systemBlueColor];

      [(PKDashboardPassMessage *)v6 setImageDescriptor:v15];
      [(PKDashboardPassMessage *)v6 setImageContentMode:4];
      objc_initWeak(&location, self);
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __65__PKDashboardBarcodePassDataSource__relevancyPresentmentMessages__block_invoke;
      v20 = &unk_1E8015570;
      objc_copyWeak(&v23, &location);
      v21 = uniqueID;
      v22 = mEMORY[0x1E69B8A58];
      [(PKDashboardPassMessage *)v6 setActionOnButtonPress:&v17];
      v25[0] = v6;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:{1, v17, v18, v19, v20, v21}];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __65__PKDashboardBarcodePassDataSource__relevancyPresentmentMessages__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained[4] uniqueID];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8 || !v9)
      {

        goto LABEL_10;
      }

      v11 = [v8 isEqualToString:v9];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    objc_initWeak(&location, v5);
    v14 = a1 + 32;
    v12 = *(a1 + 32);
    v13 = *(v14 + 8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__PKDashboardBarcodePassDataSource__relevancyPresentmentMessages__block_invoke_2;
    v15[3] = &unk_1E80148F0;
    objc_copyWeak(&v16, &location);
    [v13 overrideStateOfRelevancyPresentmentOfType:1 containingPassUniqueIdentifier:v12 newState:1 completion:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

LABEL_10:
}

void __65__PKDashboardBarcodePassDataSource__relevancyPresentmentMessages__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained reloadMessagesAfterMessageInteraction];
    }

    else if (v5)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Error in relaunching Live Activity: %@", &v9, 0xCu);
      }
    }
  }
}

- (void)_sendAnalyticsForIssuerBindingMessageType:(id)type
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB710];
  typeCopy = type;
  [v4 beginSubjectReporting:v5];
  v7 = MEMORY[0x1E69B8540];
  v8 = *MEMORY[0x1E69BABE8];
  v16[0] = *MEMORY[0x1E69BA680];
  v16[1] = v8;
  v9 = *MEMORY[0x1E69BAC10];
  v17[0] = typeCopy;
  v17[1] = v9;
  v16[2] = *MEMORY[0x1E69BB3E0];
  frontmostPassView = [(PKPassGroupView *)self->_groupView frontmostPassView];
  pass = [frontmostPassView pass];
  passTypeIdentifier = [pass passTypeIdentifier];
  v13 = passTypeIdentifier;
  v14 = *MEMORY[0x1E69BB3A8];
  if (passTypeIdentifier)
  {
    v14 = passTypeIdentifier;
  }

  v17[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v7 subject:v5 sendEvent:v15];

  [MEMORY[0x1E69B8540] endSubjectReporting:v5];
}

- (void)_sendAnalyticsForIssuerBindingDidTapButton:(id)button
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB710];
  buttonCopy = button;
  [v3 beginSubjectReporting:v4];
  v6 = *MEMORY[0x1E69BABE8];
  v10[0] = *MEMORY[0x1E69BA680];
  v10[1] = v6;
  v7 = *MEMORY[0x1E69BAC10];
  v11[0] = *MEMORY[0x1E69BA6F0];
  v11[1] = v7;
  v8 = MEMORY[0x1E69B8540];
  v10[2] = *MEMORY[0x1E69BA440];
  v11[2] = buttonCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v8 subject:v4 sendEvent:v9];

  [MEMORY[0x1E69B8540] endSubjectReporting:v4];
}

- (void)reloadUpcomingPassInformationSections
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __73__PKDashboardBarcodePassDataSource_reloadUpcomingPassInformationSections__block_invoke;
  v2[3] = &unk_1E8010998;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __73__PKDashboardBarcodePassDataSource_reloadUpcomingPassInformationSections__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadUpcomingPassInformationSections];
}

- (void)_reloadUpcomingPassInformationSections
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  upcomingPassInformation = [(PKPass *)self->_pass upcomingPassInformation];
  v5 = upcomingPassInformation;
  if (upcomingPassInformation)
  {
    groups = [upcomingPassInformation groups];
    [(PKDashboardBarcodePassDataSource *)self _updateWithUpcomingPassInformationSections:groups];
  }

  else
  {
    [(PKDashboardBarcodePassDataSource *)self _updateWithUpcomingPassInformationSections:MEMORY[0x1E695E0F0]];
  }
}

- (void)_updateWithUpcomingPassInformationSections:(id)sections
{
  sectionsCopy = sections;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = self->_upcomingPassInformationGroups;
  v6 = [sectionsCopy copy];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKDashboardBarcodePassDataSource__updateWithUpcomingPassInformationSections___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v14, &location);
  v7 = v6;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (self->_allContentIsLoaded)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v11 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldSections:v5 andNewSections:v7 sectionIdentifierAccessor:&__block_literal_global_146 sectionItemsAccessor:&__block_literal_global_149 firstSectionIndex:[(PKDashboardBarcodePassDataSource *)self firstSectionIndexForSectionIdentifier:3]];
      [(PKDashboardBarcodePassDataSource *)self updateWithBlock:v9 andDiff:v11];
    }
  }

  else
  {
    (*(v8 + 2))(v8);
    [(PKDashboardBarcodePassDataSource *)self updateContentIsLoaded];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __79__PKDashboardBarcodePassDataSource__updateWithUpcomingPassInformationSections___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(WeakRetained + 88) = 1;
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 10, *(a1 + 32));
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    [v4[5] setObject:v3 forKeyedSubscript:&unk_1F3CC6FC8];

    WeakRetained = v4;
  }
}

- (PKDashboardPassGroupViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end