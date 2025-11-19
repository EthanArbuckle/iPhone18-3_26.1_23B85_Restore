@interface PKDashboardUpcomingPassInformationPresenter
- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardUpcomingPassInformationPresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)_configureCell:(id)a3 withEventMetadata:(id)a4;
- (void)_configureCell:(id)a3 withGenericMetadata:(id)a4;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
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

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"dashboardUpcomingPassInformationEntryItemCellReuseIdentifier" forIndexPath:v8];
  [(PKDashboardUpcomingPassInformationPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8];

  return v11;
}

- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v6 = [a3 entry];
  LOBYTE(self) = [(PKDashboardUpcomingPassInformationPresenter *)self canLaunchDetailsViewForEntry:v6];

  return self;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v8 = a6;
  v9 = a3;
  v10 = [PKUpcomingPassInformationDetailsDataSource alloc];
  v11 = [v9 entry];
  v12 = [v9 pass];
  v13 = [v9 passStateProvider];
  v14 = [v9 tileFactory];

  v16 = [(PKUpcomingPassInformationDetailsDataSource *)v10 initWithEntry:v11 pass:v12 passStateProvider:v13 tileFactory:v14];
  v15 = [[PKUpcomingPassInformationDetailsViewController alloc] initWithDataSource:v16];
  [v8 pushViewController:v15 animated:1];
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  [(PKDashboardUpcomingPassInformationPresenter *)self _configureCell:self->_sampleCell forItem:a3 inCollectionView:a4 forIndexPath:a6];
  sampleCell = self->_sampleCell;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v10 = a5 + v9 * -2.0;

  [(PKPassInformationDashboardCollectionViewCell *)sampleCell sizeThatFits:v10, 1.79769313e308];
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v13 = a3;
  v8 = [a4 entry];
  v9 = [v8 metadata];
  v10 = [v9 name];
  [v13 setTitle:v10];

  [v13 setShowsDisclosureView:{-[PKDashboardUpcomingPassInformationPresenter canLaunchDetailsViewForEntry:](self, "canLaunchDetailsViewForEntry:", v8)}];
  v11 = [v9 type];
  if (v11 == 1)
  {
    v12 = [v9 eventMetadata];
    [(PKDashboardUpcomingPassInformationPresenter *)self _configureCell:v13 withEventMetadata:v12];
  }

  else if (!v11)
  {
    [(PKDashboardUpcomingPassInformationPresenter *)self _configureCell:v13 withGenericMetadata:v9];
  }
}

- (void)_configureCell:(id)a3 withGenericMetadata:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = [v5 date];
  v7 = [v5 timeZone];

  v8 = PKMediumDateString(v10, v7);
  [v6 setSecondaryText:v8];

  v9 = PKTimeStringFromDate(v10, v7);
  [v6 setTertiaryText:v9];
}

- (void)_configureCell:(id)a3 withEventMetadata:(id)a4
{
  v30 = a4;
  v5 = a3;
  v6 = [v30 semantics];
  v7 = [v30 date];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BBC58]];
    v8 = [v9 dateValue];

    if (!v8)
    {
      v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BBCB8]];
      v11 = [v10 eventDateInfoValue];
      v8 = [v11 date];
    }
  }

  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BBC50]];
  v13 = [v12 dateValue];

  v14 = [v30 timeZone];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BBF88]];
    v16 = [v17 timeZoneValue];
  }

  if (!v8)
  {
    if ([v30 isUndetermined])
    {
      v21 = PKLocalizedTicketingString(&cfstr_LabelDateTbd.isa);
      v22 = @"LABEL_TIME_TBD";
    }

    else
    {
      if (![v30 isUnannounced])
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

  v18 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  [v18 setTimeZone:v16];
  v19 = [v18 isDate:v8 inSameDayAsDate:v13];
  if (!v13 || (v19 & 1) != 0)
  {
    if (!v16 || (v23 = -[NSTimeZone secondsFromGMT](v16, "secondsFromGMT"), [MEMORY[0x1E695DFE8] localTimeZone], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "secondsFromGMT"), v24, v23 == v25))
    {
      v26 = PKMediumDateString(v8, v16);
      v21 = PKRelativeDateStringWithFullDateForUnits(v8, 8206, 0, v26);

      goto LABEL_22;
    }

    v20 = PKMediumDateString(v8, v16);
  }

  else
  {
    v20 = PKDateRangeStringFromDateToDate(v8, v13, 0, 1, 0, v16);
  }

  v21 = v20;
LABEL_22:
  if (([v30 ignoreTimeComponents] & 1) == 0)
  {
    if ([v30 isUndetermined])
    {
      v28 = @"LABEL_TIME_TBD";
    }

    else if ([v30 isUnannounced])
    {
      v28 = @"LABEL_TIME_TBA";
    }

    else
    {
      if (![v30 isAllDay])
      {
        v29 = PKTimeStringFromDate(v8, v16);
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
  [v5 setSecondaryText:v21];
  [v5 setTertiaryText:v27];
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  v15 = a3;
  v7 = a4;
  if (v15 && v7)
  {
    v8 = [v15 preferredContentSizeCategory];
    v9 = [v7 preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(v8, v9))
    {
    }

    else
    {
      v10 = [v15 legibilityWeight];
      v11 = [v7 legibilityWeight];

      if (v10 == v11)
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