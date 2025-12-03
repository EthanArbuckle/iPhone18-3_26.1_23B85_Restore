@interface PKUpcomingPassInformationDetailsDataSource
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexPath:(SEL)path;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexSection:(SEL)section;
- (BOOL)_eventMetadataShowsDateRange:(id)range;
- (NSString)footerSecondaryText;
- (NSString)footerSecondaryTitle;
- (NSString)footerText;
- (NSString)footerTitle;
- (PKUpcomingPassInformationDetailsDataSource)initWithEntry:(id)entry pass:(id)pass passStateProvider:(id)provider tileFactory:(id)factory;
- (id)_createDescriptorForPass:(id)pass fromEntry:(id)entry;
- (id)_footerSecondaryTextFromEventMetadata:(id)metadata;
- (id)_footerSecondaryTitleFromEventMetadata:(id)metadata;
- (id)_footerTextFromEventMetadata:(id)metadata;
- (id)_footerTitleFromEventMetadata:(id)metadata;
- (id)_headerItem;
- (id)_seatingFieldGroupsFromEntry:(id)entry;
- (id)itemAtIndexPath:(id)path;
- (id)navigationBarTitle;
- (id)textItemForPassField:(id)field;
- (id)titleForSection:(unint64_t)section;
- (unint64_t)firstSectionIndexForSectionIdentifier:(unint64_t)identifier;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (void)_reloadFieldGroups;
- (void)_reloadTiles:(id)tiles descriptorIdentifier:(id)identifier;
- (void)_updateWithFieldGroups:(id)groups titles:(id)titles;
- (void)_updateWithTiles:(id)tiles;
- (void)dealloc;
- (void)passStateProvider:(id)provider didUpdatePassState:(id)state;
- (void)reloadData;
- (void)reloadFieldGroups;
- (void)reloadTiles;
- (void)setDataSourceDelegate:(id)delegate;
- (void)tileFactory:(id)factory didUpdateTiles:(id)tiles forContext:(int64_t)context descriptorIdentifier:(id)identifier;
- (void)updateContentIsLoaded;
- (void)updateWithBlock:(id)block andDiff:(id)diff;
@end

@implementation PKUpcomingPassInformationDetailsDataSource

- (PKUpcomingPassInformationDetailsDataSource)initWithEntry:(id)entry pass:(id)pass passStateProvider:(id)provider tileFactory:(id)factory
{
  entryCopy = entry;
  passCopy = pass;
  providerCopy = provider;
  factoryCopy = factory;
  v26.receiver = self;
  v26.super_class = PKUpcomingPassInformationDetailsDataSource;
  v15 = [(PKUpcomingPassInformationDetailsDataSource *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_entry, entry);
    objc_storeStrong(&v16->_pass, pass);
    objc_storeStrong(&v16->_passStateProvider, provider);
    [providerCopy addPassStateObserver:v16];
    v17 = [(PKUpcomingPassInformationDetailsDataSource *)v16 _createDescriptorForPass:passCopy fromEntry:entryCopy];
    tileDescriptor = v16->_tileDescriptor;
    v16->_tileDescriptor = v17;

    if (factoryCopy)
    {
      v19 = factoryCopy;
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

- (void)setDataSourceDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

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

- (id)titleForSection:(unint64_t)section
{
  [(PKUpcomingPassInformationDetailsDataSource *)self _dataSourceIndicesForIndexSection:section];

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

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = [(PKUpcomingPassInformationDetailsDataSource *)self _dataSourceIndicesForIndexSection:section];
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

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  [(PKUpcomingPassInformationDetailsDataSource *)self _dataSourceIndicesForIndexPath:pathCopy];
  _headerItem = [(PKUpcomingPassInformationDetailsDataSource *)self _headerItem];

  return _headerItem;
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
      v9 = &unk_1F3CC7CA0;
    }

    unsignedIntegerValue = [v9 unsignedIntegerValue];

    v5 += unsignedIntegerValue;
  }

  return v5;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexSection:(SEL)section
{
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:-1 inSection:a4];
  [(PKUpcomingPassInformationDetailsDataSource *)self _dataSourceIndicesForIndexPath:v6];

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
      v12 = &unk_1F3CC7CA0;
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

- (id)navigationBarTitle
{
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  name = [metadata name];

  return name;
}

- (NSString)footerTitle
{
  selfCopy = self;
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  type = [metadata type];
  if (type == 1)
  {
    eventMetadata = [metadata eventMetadata];
    selfCopy = [selfCopy _footerTitleFromEventMetadata:eventMetadata];
  }

  else if (!type)
  {
    selfCopy = PKLocalizedTicketingString(&cfstr_UpcomingInform.isa);
  }

  return selfCopy;
}

- (NSString)footerText
{
  selfCopy = self;
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  type = [metadata type];
  if (type == 1)
  {
    eventMetadata = [metadata eventMetadata];
    selfCopy = [selfCopy _footerTextFromEventMetadata:eventMetadata];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    eventMetadata = [metadata date];
    timeZone = [metadata timeZone];
    selfCopy = PKMediumDateString(eventMetadata, timeZone);
  }

LABEL_6:

  return selfCopy;
}

- (NSString)footerSecondaryTitle
{
  selfCopy = self;
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  type = [metadata type];
  if (type == 1)
  {
    eventMetadata = [metadata eventMetadata];
    selfCopy = [selfCopy _footerSecondaryTitleFromEventMetadata:eventMetadata];
  }

  else if (!type)
  {
    selfCopy = PKLocalizedTicketingString(&cfstr_UpcomingInform_0.isa);
  }

  return selfCopy;
}

- (NSString)footerSecondaryText
{
  selfCopy = self;
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  type = [metadata type];
  if (type == 1)
  {
    eventMetadata = [metadata eventMetadata];
    selfCopy = [selfCopy _footerSecondaryTextFromEventMetadata:eventMetadata];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    eventMetadata = [metadata date];
    timeZone = [metadata timeZone];
    selfCopy = PKTimeStringFromDate(eventMetadata, timeZone);
  }

LABEL_6:

  return selfCopy;
}

- (BOOL)_eventMetadataShowsDateRange:(id)range
{
  rangeCopy = range;
  semantics = [rangeCopy semantics];
  date = [rangeCopy date];
  if (date)
  {
    dateValue = date;
  }

  else
  {
    v7 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];
    dateValue = [v7 dateValue];

    if (!dateValue)
    {
      v8 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];
      eventDateInfoValue = [v8 eventDateInfoValue];
      dateValue = [eventDateInfoValue date];

      if (!dateValue)
      {
        LOBYTE(v15) = 0;
        goto LABEL_12;
      }
    }
  }

  v10 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBC50]];
  dateValue2 = [v10 dateValue];

  if (dateValue2)
  {
    timeZone = [rangeCopy timeZone];
    v13 = timeZone;
    if (timeZone)
    {
      timeZoneValue = timeZone;
    }

    else
    {
      v16 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBF88]];
      timeZoneValue = [v16 timeZoneValue];
    }

    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    [autoupdatingCurrentCalendar setTimeZone:timeZoneValue];
    v15 = [autoupdatingCurrentCalendar isDate:dateValue inSameDayAsDate:dateValue2] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

LABEL_12:
  return v15;
}

- (id)_footerTitleFromEventMetadata:(id)metadata
{
  if ([(PKUpcomingPassInformationDetailsDataSource *)self _eventMetadataShowsDateRange:metadata])
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

- (id)_footerTextFromEventMetadata:(id)metadata
{
  metadataCopy = metadata;
  semantics = [metadataCopy semantics];
  date = [metadataCopy date];
  if (date)
  {
    dateValue = date;
  }

  else
  {
    v7 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];
    dateValue = [v7 dateValue];

    if (!dateValue)
    {
      v8 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];
      eventDateInfoValue = [v8 eventDateInfoValue];
      dateValue = [eventDateInfoValue date];
    }
  }

  timeZone = [metadataCopy timeZone];
  v11 = timeZone;
  if (timeZone)
  {
    timeZoneValue = timeZone;
  }

  else
  {
    v13 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBF88]];
    timeZoneValue = [v13 timeZoneValue];
  }

  if (dateValue)
  {
    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    [autoupdatingCurrentCalendar setTimeZone:timeZoneValue];
    date2 = [MEMORY[0x1E695DF00] date];
    if ([autoupdatingCurrentCalendar isDate:dateValue equalToDate:date2 toUnitGranularity:4])
    {
      PKMediumDayAndMonthStringFromDate(dateValue, timeZoneValue);
    }

    else
    {
      PKShortDateString(dateValue, timeZoneValue);
    }
    v17 = ;
  }

  else
  {
    if ([metadataCopy isUndetermined])
    {
      v16 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_TBD";
    }

    else if ([metadataCopy isUnannounced])
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

- (id)_footerSecondaryTitleFromEventMetadata:(id)metadata
{
  if ([(PKUpcomingPassInformationDetailsDataSource *)self _eventMetadataShowsDateRange:metadata])
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

- (id)_footerSecondaryTextFromEventMetadata:(id)metadata
{
  metadataCopy = metadata;
  semantics = [metadataCopy semantics];
  date = [metadataCopy date];
  if (date)
  {
    dateValue = date;
  }

  else
  {
    v8 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];
    dateValue = [v8 dateValue];

    if (!dateValue)
    {
      v9 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];
      eventDateInfoValue = [v9 eventDateInfoValue];
      dateValue = [eventDateInfoValue date];
    }
  }

  timeZone = [metadataCopy timeZone];
  v12 = timeZone;
  if (timeZone)
  {
    timeZoneValue = timeZone;
  }

  else
  {
    v14 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBF88]];
    timeZoneValue = [v14 timeZoneValue];
  }

  if (dateValue)
  {
    if ([(PKUpcomingPassInformationDetailsDataSource *)self _eventMetadataShowsDateRange:metadataCopy])
    {
      autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
      [autoupdatingCurrentCalendar setTimeZone:timeZoneValue];
      date2 = [MEMORY[0x1E695DF00] date];
      v17 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBC50]];
      dateValue2 = [v17 dateValue];

      if ([autoupdatingCurrentCalendar isDate:dateValue2 equalToDate:date2 toUnitGranularity:4])
      {
        PKMediumDayAndMonthStringFromDate(dateValue2, timeZoneValue);
      }

      else
      {
        PKShortDateString(dateValue2, timeZoneValue);
      }
      v21 = ;

      goto LABEL_25;
    }

    if ([metadataCopy ignoreTimeComponents])
    {
      v20 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_NA";
    }

    else if ([metadataCopy isUndetermined])
    {
      v20 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_TBD";
    }

    else if ([metadataCopy isUnannounced])
    {
      v20 = @"UPCOMING_INFORMATION_DETAILS_FOOTER_VALUE_TBA";
    }

    else
    {
      if (![metadataCopy isAllDay])
      {
        v19 = PKTimeStringFromDate(dateValue, timeZoneValue);
        goto LABEL_24;
      }

      v20 = @"LABEL_TIME_ALL_DAY";
    }

    v19 = PKLocalizedTicketingString(&v20->isa);
  }

  else
  {
    v19 = [(PKUpcomingPassInformationDetailsDataSource *)self _footerTextFromEventMetadata:metadataCopy];
  }

LABEL_24:
  v21 = v19;
LABEL_25:

  return v21;
}

- (id)_headerItem
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_entry content];
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  v5 = objc_alloc_init(PKUpcomingPassInformationDetailsHeaderItem);
  name = [metadata name];
  [(PKUpcomingPassInformationDetailsHeaderItem *)v5 setTitle:name];

  headerManifest = [content headerManifest];
  [(PKUpcomingPassInformationDetailsHeaderItem *)v5 setHeaderManifest:headerManifest];

  backgroundImage = [(PKPass *)self->_pass backgroundImage];
  [(PKUpcomingPassInformationDetailsHeaderItem *)v5 setFallbackBackgroundImage:backgroundImage];
  eventMetadata = [metadata eventMetadata];
  v10 = eventMetadata;
  if (eventMetadata)
  {
    venueRegionName = [eventMetadata venueRegionName];
    [(PKUpcomingPassInformationDetailsHeaderItem *)v5 setSecondaryText:venueRegionName];
  }

  return v5;
}

- (id)_createDescriptorForPass:(id)pass fromEntry:(id)entry
{
  passCopy = pass;
  entryCopy = entry;
  metadata = [entryCopy metadata];
  type = [metadata type];

  if (type && ([entryCopy content], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10))
  {
    v11 = [PKEventUpcomingPassInformationSemanticTileSupplier createSupplierForPass:passCopy fromUpcomingPassInformationEntry:entryCopy];
    metadata2 = [entryCopy metadata];
    semantics = [metadata2 semantics];
    v14 = [PKPassSemanticTileDescriptor createWithPass:passCopy semantics:semantics additionalTilesContentSupplier:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)reloadTiles
{
  identifier = [(PKPassSemanticTileDescriptor *)self->_tileDescriptor identifier];
  objc_initWeak(&location, self);
  tileDescriptor = self->_tileDescriptor;
  tileFactory = self->_tileFactory;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PKUpcomingPassInformationDetailsDataSource_reloadTiles__block_invoke;
  v6[3] = &unk_1E8011850;
  objc_copyWeak(&v7, &location);
  v6[4] = identifier;
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
    [(PKUpcomingPassInformationDetailsDataSource *)self _updateWithTiles:tilesCopy];
  }

LABEL_9:
}

- (void)_updateWithTiles:(id)tiles
{
  tilesCopy = tiles;
  v5 = self->_tileGroups;
  v6 = [tilesCopy copy];
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
    v14[2] = __70__PKUpcomingPassInformationDetailsDataSource_updateWithBlock_andDiff___block_invoke;
    v14[3] = &unk_1E8011108;
    objc_copyWeak(&v17, &location);
    v16 = blockCopy;
    v9 = diffCopy;
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

- (void)passStateProvider:(id)provider didUpdatePassState:(id)state
{
  state = [(PKUpcomingPassInformationDetailsDataSource *)self firstSectionIndexForSectionIdentifier:1, state];
  if ([(NSArray *)self->_tileGroups count])
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:state + v6];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = [(PKUpcomingPassInformationDetailsDataSource *)self itemAtIndexPath:v7];
      [WeakRetained itemChanged:v9 atIndexPath:v7];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_tileGroups count]);
  }
}

- (void)tileFactory:(id)factory didUpdateTiles:(id)tiles forContext:(int64_t)context descriptorIdentifier:(id)identifier
{
  tilesCopy = tiles;
  identifierCopy = identifier;
  if (context == 4)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __105__PKUpcomingPassInformationDetailsDataSource_tileFactory_didUpdateTiles_forContext_descriptorIdentifier___block_invoke;
    v11[3] = &unk_1E8011828;
    objc_copyWeak(&v14, &location);
    v12 = tilesCopy;
    v13 = identifierCopy;
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

- (id)_seatingFieldGroupsFromEntry:(id)entry
{
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_entry metadata];
  if ([metadata type])
  {
    eventMetadata = [metadata eventMetadata];
    seatingInformation = [eventMetadata seatingInformation];
    if (seatingInformation)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      allSeats = [seatingInformation allSeats];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __75__PKUpcomingPassInformationDetailsDataSource__seatingFieldGroupsFromEntry___block_invoke;
      v10[3] = &unk_1E801ECB8;
      v8 = v6;
      v11 = v8;
      [allSeats enumerateObjectsUsingBlock:v10];
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

- (id)textItemForPassField:(id)field
{
  fieldCopy = field;
  v4 = objc_alloc_init(PKDashboardTextActionItem);
  label = [fieldCopy label];
  [(PKDashboardTextActionItem *)v4 setTitle:label];

  value = [fieldCopy value];

  v7 = value;
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

  content = [(PKPassUpcomingPassInformationEntry *)self->_entry content];
  backFields = [content backFields];

  if ([backFields count])
  {
    v19 = v5;
    v10 = PKLocalizedTicketingString(&cfstr_UpcomingInform_8.isa);
    [v3 addObject:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = backFields;
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

- (void)_updateWithFieldGroups:(id)groups titles:(id)titles
{
  groupsCopy = groups;
  titlesCopy = titles;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [groupsCopy count];
  v9 = [(NSArray *)self->_fieldGroups count];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKUpcomingPassInformationDetailsDataSource__updateWithFieldGroups_titles___block_invoke;
  aBlock[3] = &unk_1E80160F8;
  objc_copyWeak(v22, &location);
  v10 = groupsCopy;
  v20 = v10;
  v11 = titlesCopy;
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