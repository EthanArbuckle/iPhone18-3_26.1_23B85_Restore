@interface PKUpcomingPassInformationDetailsDataSource
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexPath:(SEL)a3;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexSection:(SEL)a3;
- (BOOL)_eventMetadataShowsDateRange:(id)a3;
- (NSString)footerSecondaryText;
- (NSString)footerSecondaryTitle;
- (NSString)footerText;
- (NSString)footerTitle;
- (PKUpcomingPassInformationDetailsDataSource)initWithEntry:(id)a3 pass:(id)a4 passStateProvider:(id)a5 tileFactory:(id)a6;
- (id)_createDescriptorForPass:(id)a3 fromEntry:(id)a4;
- (id)_footerSecondaryTextFromEventMetadata:(id)a3;
- (id)_footerSecondaryTitleFromEventMetadata:(id)a3;
- (id)_footerTextFromEventMetadata:(id)a3;
- (id)_footerTitleFromEventMetadata:(id)a3;
- (id)_headerItem;
- (id)_seatingFieldGroupsFromEntry:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)navigationBarTitle;
- (id)textItemForPassField:(id)a3;
- (id)titleForSection:(unint64_t)a3;
- (unint64_t)firstSectionIndexForSectionIdentifier:(unint64_t)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
- (void)_reloadFieldGroups;
- (void)_reloadTiles:(id)a3 descriptorIdentifier:(id)a4;
- (void)_updateWithFieldGroups:(id)a3 titles:(id)a4;
- (void)_updateWithTiles:(id)a3;
- (void)dealloc;
- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4;
- (void)reloadData;
- (void)reloadFieldGroups;
- (void)reloadTiles;
- (void)setDataSourceDelegate:(id)a3;
- (void)tileFactory:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5 descriptorIdentifier:(id)a6;
- (void)updateContentIsLoaded;
- (void)updateWithBlock:(id)a3 andDiff:(id)a4;
@end

@implementation PKUpcomingPassInformationDetailsDataSource

- (PKUpcomingPassInformationDetailsDataSource)initWithEntry:(id)a3 pass:(id)a4 passStateProvider:(id)a5 tileFactory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = PKUpcomingPassInformationDetailsDataSource;
  v15 = [(PKUpcomingPassInformationDetailsDataSource *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_entry, a3);
    objc_storeStrong(&v16->_pass, a4);
    objc_storeStrong(&v16->_passStateProvider, a5);
    [v13 addPassStateObserver:v16];
    v17 = [(PKUpcomingPassInformationDetailsDataSource *)v16 _createDescriptorForPass:v12 fromEntry:v11];
    tileDescriptor = v16->_tileDescriptor;
    v16->_tileDescriptor = v17;

    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = objc_alloc_init(PKPassSemanticTileFactory);
    }

    tileFactory = v16->_tileFactory;
    v16->_tileFactory = v19;

    [(PKPassSemanticTileFactory *)v16->_tileFactory addObserver:v16];
    v21 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    headerIndexPath = v16->_headerIndexPath;
    v16->_headerIndexPath = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dynamicSections = v16->_dynamicSections;
    v16->_dynamicSections = v23;

    [(NSMutableDictionary *)v16->_dynamicSections setObject:&unk_1F3CC7C70 forKeyedSubscript:&unk_1F3CC7C88];
    [(PKUpcomingPassInformationDetailsDataSource *)v16 reloadData];
  }

  return v16;
}

- (void)dealloc
{
  [(PKPassDynamicStateProviding *)self->_passStateProvider removePassStateObserver:self];
  [(PKPassSemanticTileFactory *)self->_tileFactory removeObserver:self];
  v3.receiver = self;
  v3.super_class = PKUpcomingPassInformationDetailsDataSource;
  [(PKUpcomingPassInformationDetailsDataSource *)&v3 dealloc];
}

- (void)setDataSourceDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(PKUpcomingPassInformationDetailsDataSource *)self updateContentIsLoaded];
}

- (void)reloadData
{
  [(PKUpcomingPassInformationDetailsDataSource *)self reloadTiles];

  [(PKUpcomingPassInformationDetailsDataSource *)self reloadFieldGroups];
}

- (void)updateContentIsLoaded
{
  if (!self->_allContentIsLoaded && self->_tilesLoaded)
  {
    fieldGroupsLoaded = self->_fieldGroupsLoaded;
    if (fieldGroupsLoaded)
    {
      self->_allContentIsLoaded = fieldGroupsLoaded;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v5 = WeakRetained;
        [WeakRetained contentIsLoaded];
        WeakRetained = v5;
      }
    }
  }
}

- (id)titleForSection:(unint64_t)a3
{
  [(PKUpcomingPassInformationDetailsDataSource *)self _dataSourceIndicesForIndexSection:a3];

  return 0;
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
  v5[2] = __62__PKUpcomingPassInformationDetailsDataSource_numberOfSections__block_invoke;
  v5[3] = &unk_1E8015520;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)dynamicSections enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3 + 3;
}

uint64_t __62__PKUpcomingPassInformationDetailsDataSource_numberOfSections__block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result;
  if (*(*(result + 32) + 57) == 1)
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

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = [(PKUpcomingPassInformationDetailsDataSource *)self _dataSourceIndicesForIndexSection:a3];
  if (v7 == 1)
  {
    if (self->_allContentIsLoaded)
    {
      return [(NSArray *)self->_tileGroups count]!= 0;
    }

    return 0;
  }

  if (v7 == 2)
  {
    if (self->_allContentIsLoaded)
    {
      v6 = [(NSArray *)self->_fieldGroups objectAtIndexedSubscript:v8];
      v5 = [v6 count];

      return v5;
    }

    return 0;
  }

  if (v7 != 3)
  {
    return 1;
  }

  __break(1u);
  return result;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  [(PKUpcomingPassInformationDetailsDataSource *)self _dataSourceIndicesForIndexPath:v4];
  v5 = [(PKUpcomingPassInformationDetailsDataSource *)self _headerItem];

  return v5;
}

- (unint64_t)firstSectionIndexForSectionIdentifier:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  for (i = 0; i != a3; ++i)
  {
    dynamicSections = self->_dynamicSections;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v9 = [(NSMutableDictionary *)dynamicSections objectForKeyedSubscript:v8];
    v10 = v9;
    if (!v9)
    {
      v9 = &unk_1F3CC7CA0;
    }

    v11 = [v9 unsignedIntegerValue];

    v5 += v11;
  }

  return v5;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexSection:(SEL)a3
{
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:-1 inSection:a4];
  [(PKUpcomingPassInformationDetailsDataSource *)self _dataSourceIndicesForIndexPath:v6];

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexPath:(SEL)a3
{
  v16 = a4;
  v6 = [v16 section];
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
      v12 = &unk_1F3CC7CA0;
    }

    v14 = [v12 unsignedIntegerValue];

    v7 = v14 + v9;
  }

  while (v14 + v9 <= v6);
  retstr->var0 = v8;
  retstr->var1 = v6 - v9;
  retstr->var2 = [v16 item];

  return result;
}

- (id)navigationBarTitle
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  v3 = [v2 name];

  return v3;
}

- (NSString)footerTitle
{
  v2 = self;
  v3 = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  v4 = [v3 type];
  if (v4 == 1)
  {
    v5 = [v3 eventMetadata];
    v2 = [v2 _footerTitleFromEventMetadata:v5];
  }

  else if (!v4)
  {
    v2 = PKLocalizedTicketingString(&cfstr_UpcomingInform.isa);
  }

  return v2;
}

- (NSString)footerText
{
  v2 = self;
  v3 = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  v4 = [v3 type];
  if (v4 == 1)
  {
    v5 = [v3 eventMetadata];
    v2 = [v2 _footerTextFromEventMetadata:v5];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [v3 date];
    v6 = [v3 timeZone];
    v2 = PKMediumDateString(v5, v6);
  }

LABEL_6:

  return v2;
}

- (NSString)footerSecondaryTitle
{
  v2 = self;
  v3 = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  v4 = [v3 type];
  if (v4 == 1)
  {
    v5 = [v3 eventMetadata];
    v2 = [v2 _footerSecondaryTitleFromEventMetadata:v5];
  }

  else if (!v4)
  {
    v2 = PKLocalizedTicketingString(&cfstr_UpcomingInform_0.isa);
  }

  return v2;
}

- (NSString)footerSecondaryText
{
  v2 = self;
  v3 = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  v4 = [v3 type];
  if (v4 == 1)
  {
    v5 = [v3 eventMetadata];
    v2 = [v2 _footerSecondaryTextFromEventMetadata:v5];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [v3 date];
    v6 = [v3 timeZone];
    v2 = PKTimeStringFromDate(v5, v6);
  }

LABEL_6:

  return v2;
}

- (BOOL)_eventMetadataShowsDateRange:(id)a3
{
  v3 = a3;
  v4 = [v3 semantics];
  v5 = [v3 date];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];
    v6 = [v7 dateValue];

    if (!v6)
    {
      v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];
      v9 = [v8 eventDateInfoValue];
      v6 = [v9 date];

      if (!v6)
      {
        LOBYTE(v15) = 0;
        goto LABEL_12;
      }
    }
  }

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BBC50]];
  v11 = [v10 dateValue];

  if (v11)
  {
    v12 = [v3 timeZone];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v16 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BBF88]];
      v14 = [v16 timeZoneValue];
    }

    v17 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    [v17 setTimeZone:v14];
    v15 = [v17 isDate:v6 inSameDayAsDate:v11] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

LABEL_12:
  return v15;
}

- (id)_footerTitleFromEventMetadata:(id)a3
{
  if ([(PKUpcomingPassInformationDetailsDataSource *)self _eventMetadataShowsDateRange:a3])
  {
    v3 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_TITLE_START_DATE";
  }

  else
  {
    v3 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_TITLE_DATE";
  }

  v4 = PKLocalizedTicketingString(&v3->isa);

  return v4;
}

- (id)_footerTextFromEventMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 semantics];
  v5 = [v3 date];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];
    v6 = [v7 dateValue];

    if (!v6)
    {
      v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];
      v9 = [v8 eventDateInfoValue];
      v6 = [v9 date];
    }
  }

  v10 = [v3 timeZone];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BBF88]];
    v12 = [v13 timeZoneValue];
  }

  if (v6)
  {
    v14 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    [v14 setTimeZone:v12];
    v15 = [MEMORY[0x1E695DF00] date];
    if ([v14 isDate:v6 equalToDate:v15 toUnitGranularity:4])
    {
      PKMediumDayAndMonthStringFromDate(v6, v12);
    }

    else
    {
      PKShortDateString(v6, v12);
    }
    v17 = ;
  }

  else
  {
    if ([v3 isUndetermined])
    {
      v16 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_TBD";
    }

    else if ([v3 isUnannounced])
    {
      v16 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_TBA";
    }

    else
    {
      v16 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_NA";
    }

    v17 = PKLocalizedTicketingString(&v16->isa);
  }

  return v17;
}

- (id)_footerSecondaryTitleFromEventMetadata:(id)a3
{
  if ([(PKUpcomingPassInformationDetailsDataSource *)self _eventMetadataShowsDateRange:a3])
  {
    v3 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_SECONDARY_TITLE_END_DATE";
  }

  else
  {
    v3 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_SECONDARY_TITLE_TIME";
  }

  v4 = PKLocalizedTicketingString(&v3->isa);

  return v4;
}

- (id)_footerSecondaryTextFromEventMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 semantics];
  v6 = [v4 date];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];
    v7 = [v8 dateValue];

    if (!v7)
    {
      v9 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];
      v10 = [v9 eventDateInfoValue];
      v7 = [v10 date];
    }
  }

  v11 = [v4 timeZone];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BBF88]];
    v13 = [v14 timeZoneValue];
  }

  if (v7)
  {
    if ([(PKUpcomingPassInformationDetailsDataSource *)self _eventMetadataShowsDateRange:v4])
    {
      v15 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
      [v15 setTimeZone:v13];
      v16 = [MEMORY[0x1E695DF00] date];
      v17 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BBC50]];
      v18 = [v17 dateValue];

      if ([v15 isDate:v18 equalToDate:v16 toUnitGranularity:4])
      {
        PKMediumDayAndMonthStringFromDate(v18, v13);
      }

      else
      {
        PKShortDateString(v18, v13);
      }
      v21 = ;

      goto LABEL_25;
    }

    if ([v4 ignoreTimeComponents])
    {
      v20 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_NA";
    }

    else if ([v4 isUndetermined])
    {
      v20 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_TBD";
    }

    else if ([v4 isUnannounced])
    {
      v20 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_TBA";
    }

    else
    {
      if (![v4 isAllDay])
      {
        v19 = PKTimeStringFromDate(v7, v13);
        goto LABEL_24;
      }

      v20 = @"LABEL_TIME_ALL_DAY";
    }

    v19 = PKLocalizedTicketingString(&v20->isa);
  }

  else
  {
    v19 = [(PKUpcomingPassInformationDetailsDataSource *)self _footerTextFromEventMetadata:v4];
  }

LABEL_24:
  v21 = v19;
LABEL_25:

  return v21;
}

- (id)_headerItem
{
  v3 = [(PKPassUpcomingPassInformationEntry *)self->_entry content];
  v4 = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  v5 = objc_alloc_init(PKUpcomingPassInformationDetailsHeaderItem);
  v6 = [v4 name];
  [(PKUpcomingPassInformationDetailsHeaderItem *)v5 setTitle:v6];

  v7 = [v3 headerManifest];
  [(PKUpcomingPassInformationDetailsHeaderItem *)v5 setHeaderManifest:v7];

  v8 = [(PKPass *)self->_pass backgroundImage];
  [(PKUpcomingPassInformationDetailsHeaderItem *)v5 setFallbackBackgroundImage:v8];
  v9 = [v4 eventMetadata];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 venueRegionName];
    [(PKUpcomingPassInformationDetailsHeaderItem *)v5 setSecondaryText:v11];
  }

  return v5;
}

- (id)_createDescriptorForPass:(id)a3 fromEntry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 metadata];
  v8 = [v7 type];

  if (v8 && ([v6 content], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10))
  {
    v11 = [PKEventUpcomingPassInformationSemanticTileSupplier createSupplierForPass:v5 fromUpcomingPassInformationEntry:v6];
    v12 = [v6 metadata];
    v13 = [v12 semantics];
    v14 = [PKPassSemanticTileDescriptor createWithPass:v5 semantics:v13 additionalTilesContentSupplier:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)reloadTiles
{
  v3 = [(PKPassSemanticTileDescriptor *)self->_tileDescriptor identifier];
  objc_initWeak(&location, self);
  tileDescriptor = self->_tileDescriptor;
  tileFactory = self->_tileFactory;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PKUpcomingPassInformationDetailsDataSource_reloadTiles__block_invoke;
  v6[3] = &unk_1E8011850;
  objc_copyWeak(&v7, &location);
  v6[4] = v3;
  [(PKPassSemanticTileFactory *)tileFactory fetchTilesForDescriptor:tileDescriptor context:4 queueUpdates:1 completion:v6];
  [(PKPassSemanticTileFactory *)self->_tileFactory prewarmTileContentForDescriptor:self->_tileDescriptor context:5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __57__PKUpcomingPassInformationDetailsDataSource_reloadTiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKUpcomingPassInformationDetailsDataSource_reloadTiles__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __57__PKUpcomingPassInformationDetailsDataSource_reloadTiles__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) descriptorIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_reloadTiles:(id)a3 descriptorIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(PKPassSemanticTileDescriptor *)self->_tileDescriptor identifier];
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !v7)
  {

    goto LABEL_9;
  }

  v10 = [v7 isEqualToString:v8];

  if (v10)
  {
LABEL_7:
    [(PKUpcomingPassInformationDetailsDataSource *)self _updateWithTiles:v11];
  }

LABEL_9:
}

- (void)_updateWithTiles:(id)a3
{
  v4 = a3;
  v5 = self->_tileGroups;
  v6 = [v4 copy];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKUpcomingPassInformationDetailsDataSource__updateWithTiles___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v11, &location);
  aBlock[4] = v6;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (self->_allContentIsLoaded)
  {
    v9 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldSections:v5 andNewSections:v6 sectionIdentifierAccessor:&__block_literal_global_178 sectionItemsAccessor:&__block_literal_global_68 firstSectionIndex:1];
    [(PKUpcomingPassInformationDetailsDataSource *)self updateWithBlock:v8 andDiff:v9];
  }

  else
  {
    (*(v7 + 2))(v7);
    [(PKUpcomingPassInformationDetailsDataSource *)self updateContentIsLoaded];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __63__PKUpcomingPassInformationDetailsDataSource__updateWithTiles___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(WeakRetained + 32) = 1;
  objc_storeStrong(WeakRetained + 3, *(a1 + 32));
}

id __63__PKUpcomingPassInformationDetailsDataSource__updateWithTiles___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 identifier];

  return v3;
}

id __63__PKUpcomingPassInformationDetailsDataSource__updateWithTiles___block_invoke_3(uint64_t a1, void *a2)
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

- (void)updateWithBlock:(id)a3 andDiff:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__PKUpcomingPassInformationDetailsDataSource_updateWithBlock_andDiff___block_invoke;
    v14[3] = &unk_1E8011108;
    objc_copyWeak(&v17, &location);
    v16 = v6;
    v9 = v7;
    v15 = v9;
    [WeakRetained performBatchUpdates:v14 completion:0];

    v10 = objc_loadWeakRetained(&self->_delegate);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__PKUpcomingPassInformationDetailsDataSource_updateWithBlock_andDiff___block_invoke_2;
    v11[3] = &unk_1E80110E0;
    objc_copyWeak(&v13, &location);
    v12 = v9;
    [v10 performBatchUpdates:v11 completion:0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __70__PKUpcomingPassInformationDetailsDataSource_updateWithBlock_andDiff___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v20 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    v3 = objc_loadWeakRetained(v20 + 1);
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

void __70__PKUpcomingPassInformationDetailsDataSource_updateWithBlock_andDiff___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 1);
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

- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4
{
  v5 = [(PKUpcomingPassInformationDetailsDataSource *)self firstSectionIndexForSectionIdentifier:1, a4];
  if ([(NSArray *)self->_tileGroups count])
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v5 + v6];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = [(PKUpcomingPassInformationDetailsDataSource *)self itemAtIndexPath:v7];
      [WeakRetained itemChanged:v9 atIndexPath:v7];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_tileGroups count]);
  }
}

- (void)tileFactory:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5 descriptorIdentifier:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (a5 == 4)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __105__PKUpcomingPassInformationDetailsDataSource_tileFactory_didUpdateTiles_forContext_descriptorIdentifier___block_invoke;
    v11[3] = &unk_1E8011828;
    objc_copyWeak(&v14, &location);
    v12 = v9;
    v13 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __105__PKUpcomingPassInformationDetailsDataSource_tileFactory_didUpdateTiles_forContext_descriptorIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) descriptorIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)reloadFieldGroups
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__PKUpcomingPassInformationDetailsDataSource_reloadFieldGroups__block_invoke;
  v2[3] = &unk_1E8010998;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __63__PKUpcomingPassInformationDetailsDataSource_reloadFieldGroups__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadFieldGroups];
}

- (id)_seatingFieldGroupsFromEntry:(id)a3
{
  v3 = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  if ([v3 type])
  {
    v4 = [v3 eventMetadata];
    v5 = [v4 seatingInformation];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = [v5 allSeats];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __75__PKUpcomingPassInformationDetailsDataSource__seatingFieldGroupsFromEntry___block_invoke;
      v10[3] = &unk_1E801ECB8;
      v8 = v6;
      v11 = v8;
      [v7 enumerateObjectsUsingBlock:v10];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

void __75__PKUpcomingPassInformationDetailsDataSource__seatingFieldGroupsFromEntry___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = objc_alloc_init(PKDashboardTextActionItem);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + 1];
  v7 = [v6 stringValue];
  v8 = PKLocalizedTicketingString(&cfstr_UpcomingInform_6.isa, &stru_1F3BD5BF0.isa, v7);
  [(PKDashboardTextActionItem *)v10 setTitle:v8];

  v9 = [v5 localizedDescription];

  [(PKDashboardTextActionItem *)v10 setSubtitle:v9];
  [(PKDashboardTextActionItem *)v10 setLayoutStyle:1];
  [*(a1 + 32) addObject:v10];
}

- (id)textItemForPassField:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKDashboardTextActionItem);
  v5 = [v3 label];
  [(PKDashboardTextActionItem *)v4 setTitle:v5];

  v6 = [v3 value];

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 length];

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  [(PKDashboardTextActionItem *)v4 setSubtitle:v10];
  [(PKDashboardTextActionItem *)v4 setLayoutStyle:1];

  return v4;
}

- (void)_reloadFieldGroups
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(PKUpcomingPassInformationDetailsDataSource *)self _seatingFieldGroupsFromEntry:self->_entry];
  if ([v5 count])
  {
    v6 = PKLocalizedTicketingString(&cfstr_UpcomingInform_7.isa);
    [v3 addObject:v6];

    v7 = [v5 copy];
    [v4 addObject:v7];
  }

  v8 = [(PKPassUpcomingPassInformationEntry *)self->_entry content];
  v9 = [v8 backFields];

  if ([v9 count])
  {
    v19 = v5;
    v10 = PKLocalizedTicketingString(&cfstr_UpcomingInform_8.isa);
    [v3 addObject:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(PKUpcomingPassInformationDetailsDataSource *)self textItemForPassField:*(*(&v20 + 1) + 8 * v16)];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    v18 = [v11 copy];
    [v4 addObject:v18];

    v5 = v19;
  }

  [(PKUpcomingPassInformationDetailsDataSource *)self _updateWithFieldGroups:v4 titles:v3];
}

- (void)_updateWithFieldGroups:(id)a3 titles:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [v6 count];
  v9 = [(NSArray *)self->_fieldGroups count];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKUpcomingPassInformationDetailsDataSource__updateWithFieldGroups_titles___block_invoke;
  aBlock[3] = &unk_1E80160F8;
  objc_copyWeak(v22, &location);
  v10 = v6;
  v20 = v10;
  v11 = v7;
  v21 = v11;
  v22[1] = v8;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (self->_allContentIsLoaded)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__PKUpcomingPassInformationDetailsDataSource__updateWithFieldGroups_titles___block_invoke_2;
      v16[3] = &unk_1E801ECE0;
      objc_copyWeak(v18, &location);
      v17 = v13;
      v18[1] = v8;
      v18[2] = v9;
      [v15 performBatchUpdates:v16 completion:0];

      objc_destroyWeak(v18);
    }
  }

  else
  {
    (*(v12 + 2))(v12);
    [(PKUpcomingPassInformationDetailsDataSource *)self updateContentIsLoaded];
  }

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

void __76__PKUpcomingPassInformationDetailsDataSource__updateWithFieldGroups_titles___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    WeakRetained[56] = 1;
    v8 = WeakRetained;
    v3 = [*(a1 + 32) copy];
    v4 = *(v8 + 5);
    *(v8 + 5) = v3;

    v5 = [*(a1 + 40) copy];
    v6 = *(v8 + 6);
    *(v8 + 6) = v5;

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    [*(v8 + 2) setObject:v7 forKeyedSubscript:&unk_1F3CC7C88];

    WeakRetained = v8;
  }
}

void __76__PKUpcomingPassInformationDetailsDataSource__updateWithFieldGroups_titles___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v17 = WeakRetained;
    v3 = [WeakRetained firstSectionIndexForSectionIdentifier:2];
    (*(*(a1 + 32) + 16))();
    v6 = *(a1 + 48);
    v5 = (a1 + 48);
    v4 = v6;
    v8 = v5 + 1;
    v7 = v5[1];
    v9 = v6 >= v7;
    v10 = v6 - v7;
    if (v6 <= v7)
    {
      if (v9)
      {
        v12 = 0;
        v11 = 0;
        v14 = 0;
        v15 = 0;
        v13 = 0;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v12 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v4 + v3, v7 - v4}];
      v11 = 0;
      v8 = v5;
    }

    else
    {
      v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7 + v3, v10}];
      v12 = 0;
    }

    v4 = *v8;
LABEL_7:
    v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v3, v4}];
    v14 = v12;
    v15 = v11;
LABEL_8:
    v16 = objc_loadWeakRetained(v17 + 1);
    [v16 insertSections:v15];
    [v16 deleteSections:v14];
    [v16 reloadSections:v13];

    WeakRetained = v17;
  }
}

@end