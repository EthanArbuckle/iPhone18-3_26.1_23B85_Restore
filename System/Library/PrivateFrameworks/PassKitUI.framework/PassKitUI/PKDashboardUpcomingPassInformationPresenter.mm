@interface PKDashboardUpcomingPassInformationPresenter
- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardUpcomingPassInformationPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)_configureCell:(id)cell withEventMetadata:(id)metadata;
- (void)_configureCell:(id)cell withGenericMetadata:(id)metadata;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardUpcomingPassInformationPresenter

- (PKDashboardUpcomingPassInformationPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardUpcomingPassInformationPresenter;
  v2 = [(PKDashboardUpcomingPassInformationPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKPassInformationDashboardCollectionViewCell alloc];
    v4 = [(PKPassInformationDashboardCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"dashboardUpcomingPassInformationEntryItemCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"dashboardUpcomingPassInformationEntryItemCellReuseIdentifier" forIndexPath:pathCopy];
  [(PKDashboardUpcomingPassInformationPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v11;
}

- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  entry = [item entry];
  LOBYTE(self) = [(PKDashboardUpcomingPassInformationPresenter *)self canLaunchDetailsViewForEntry:entry];

  return self;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  controllerCopy = controller;
  itemCopy = item;
  v10 = [PKUpcomingPassInformationDetailsDataSource alloc];
  entry = [itemCopy entry];
  pass = [itemCopy pass];
  passStateProvider = [itemCopy passStateProvider];
  tileFactory = [itemCopy tileFactory];

  v16 = [(PKUpcomingPassInformationDetailsDataSource *)v10 initWithEntry:entry pass:pass passStateProvider:passStateProvider tileFactory:tileFactory];
  v15 = [[PKUpcomingPassInformationDetailsViewController alloc] initWithDataSource:v16];
  [controllerCopy pushViewController:v15 animated:1];
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardUpcomingPassInformationPresenter *)self _configureCell:self->_sampleCell forItem:item inCollectionView:view forIndexPath:path];
  sampleCell = self->_sampleCell;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v10 = width + v9 * -2.0;

  [(PKPassInformationDashboardCollectionViewCell *)sampleCell sizeThatFits:v10, 1.79769313e308];
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  entry = [item entry];
  metadata = [entry metadata];
  name = [metadata name];
  [cellCopy setTitle:name];

  [cellCopy setShowsDisclosureView:{-[PKDashboardUpcomingPassInformationPresenter canLaunchDetailsViewForEntry:](self, "canLaunchDetailsViewForEntry:", entry)}];
  type = [metadata type];
  if (type == 1)
  {
    eventMetadata = [metadata eventMetadata];
    [(PKDashboardUpcomingPassInformationPresenter *)self _configureCell:cellCopy withEventMetadata:eventMetadata];
  }

  else if (!type)
  {
    [(PKDashboardUpcomingPassInformationPresenter *)self _configureCell:cellCopy withGenericMetadata:metadata];
  }
}

- (void)_configureCell:(id)cell withGenericMetadata:(id)metadata
{
  metadataCopy = metadata;
  cellCopy = cell;
  date = [metadataCopy date];
  timeZone = [metadataCopy timeZone];

  v8 = PKMediumDateString(date, timeZone);
  [cellCopy setSecondaryText:v8];

  v9 = PKTimeStringFromDate(date, timeZone);
  [cellCopy setTertiaryText:v9];
}

- (void)_configureCell:(id)cell withEventMetadata:(id)metadata
{
  metadataCopy = metadata;
  cellCopy = cell;
  semantics = [metadataCopy semantics];
  date = [metadataCopy date];
  if (date)
  {
    dateValue = date;
  }

  else
  {
    v9 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];
    dateValue = [v9 dateValue];

    if (!dateValue)
    {
      v10 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];
      eventDateInfoValue = [v10 eventDateInfoValue];
      dateValue = [eventDateInfoValue date];
    }
  }

  v12 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBC50]];
  dateValue2 = [v12 dateValue];

  timeZone = [metadataCopy timeZone];
  v15 = timeZone;
  if (timeZone)
  {
    timeZoneValue = timeZone;
  }

  else
  {
    v17 = [semantics objectForKeyedSubscript:*MEMORY[0x1E69BBF88]];
    timeZoneValue = [v17 timeZoneValue];
  }

  if (!dateValue)
  {
    if ([metadataCopy isUndetermined])
    {
      v21 = PKLocalizedTicketingString(&cfstr_LabelDateTbd.isa);
      v22 = @"LABEL_TIME_TBD";
    }

    else
    {
      if (![metadataCopy isUnannounced])
      {
        v21 = 0;
        v27 = 0;
        goto LABEL_34;
      }

      v21 = PKLocalizedTicketingString(&cfstr_LabelDateTba.isa);
      v22 = @"LABEL_TIME_TBA";
    }

    v27 = PKLocalizedTicketingString(&v22->isa);
    goto LABEL_34;
  }

  autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  [autoupdatingCurrentCalendar setTimeZone:timeZoneValue];
  v19 = [autoupdatingCurrentCalendar isDate:dateValue inSameDayAsDate:dateValue2];
  if (!dateValue2 || (v19 & 1) != 0)
  {
    if (!timeZoneValue || (v23 = -[NSTimeZone secondsFromGMT](timeZoneValue, "secondsFromGMT"), [MEMORY[0x1E695DFE8] localTimeZone], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "secondsFromGMT"), v24, v23 == v25))
    {
      v26 = PKMediumDateString(dateValue, timeZoneValue);
      v21 = PKRelativeDateStringWithFullDateForUnits(dateValue, 8206, 0, v26);

      goto LABEL_22;
    }

    v20 = PKMediumDateString(dateValue, timeZoneValue);
  }

  else
  {
    v20 = PKDateRangeStringFromDateToDate(dateValue, dateValue2, 0, 1, 0, timeZoneValue);
  }

  v21 = v20;
LABEL_22:
  if (([metadataCopy ignoreTimeComponents] & 1) == 0)
  {
    if ([metadataCopy isUndetermined])
    {
      v28 = @"LABEL_TIME_TBD";
    }

    else if ([metadataCopy isUnannounced])
    {
      v28 = @"LABEL_TIME_TBA";
    }

    else
    {
      if (![metadataCopy isAllDay])
      {
        v29 = PKTimeStringFromDate(dateValue, timeZoneValue);
        goto LABEL_32;
      }

      v28 = @"LABEL_TIME_ALL_DAY";
    }

    v29 = PKLocalizedTicketingString(&v28->isa);
LABEL_32:
    v27 = v29;
    goto LABEL_33;
  }

  v27 = 0;
LABEL_33:

LABEL_34:
  [cellCopy setSecondaryText:v21];
  [cellCopy setTertiaryText:v27];
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  traitCopy = trait;
  toTraitCopy = toTrait;
  if (traitCopy && toTraitCopy)
  {
    preferredContentSizeCategory = [traitCopy preferredContentSizeCategory];
    preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2))
    {
    }

    else
    {
      legibilityWeight = [traitCopy legibilityWeight];
      legibilityWeight2 = [toTraitCopy legibilityWeight];

      if (legibilityWeight == legibilityWeight2)
      {
        goto LABEL_7;
      }
    }

    v12 = [PKPassInformationDashboardCollectionViewCell alloc];
    v13 = [(PKPassInformationDashboardCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = self->_sampleCell;
    self->_sampleCell = v13;
  }

LABEL_7:
}

@end