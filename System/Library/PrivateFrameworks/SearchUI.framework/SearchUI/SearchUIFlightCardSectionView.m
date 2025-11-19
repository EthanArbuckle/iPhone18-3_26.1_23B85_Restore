@interface SearchUIFlightCardSectionView
+ (id)calendarEventCardSectionForFlight:(id)a3 leg:(id)a4;
+ (int)defaultSeparatorStyleForRowModel:(id)a3;
+ (void)getAdditionalCardSectionsForFlightCardSection:(id)a3 completionHandler:(id)a4;
- (SearchUIFlightCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (id)setupContentView;
- (void)flightController:(id)a3 didSelectLeg:(int64_t)a4 ofFlight:(int64_t)a5;
- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4;
@end

@implementation SearchUIFlightCardSectionView

- (SearchUIFlightCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 cardSection];
  v19.receiver = self;
  v19.super_class = SearchUIFlightCardSectionView;
  v9 = [(SearchUICardSectionView *)&v19 initWithRowModel:v7 feedbackDelegate:v6];

  if (v9)
  {
    v10 = [(SearchUICardSectionView *)v9 contentView];
    [v10 setDelegate:v9];

    -[SearchUIFlightCardSectionView setLastSelectedLegIndex:](v9, "setLastSelectedLegIndex:", [v8 selectedLegIndex]);
    v11 = objc_alloc(objc_opt_class());
    v12 = [v8 flight];
    v13 = [v11 initWithSFFlight:v12 leg:objc_msgSend(v8 style:"selectedLegIndex") delegate:{3, v9}];
    [(SearchUIFlightCardSectionView *)v9 setFlightViewController:v13];

    v14 = [(SearchUIFlightCardSectionView *)v9 flightViewController];
    [v14 setNoBackground];

    v15 = [(SearchUICardSectionView *)v9 contentView];
    v16 = [(SearchUIFlightCardSectionView *)v9 flightViewController];
    v17 = [v16 view];
    [v15 addArrangedSubview:v17];
  }

  return v9;
}

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SearchUIFlightCardSectionView;
  [(SearchUICardSectionView *)&v4 updateChevronVisible:0 leaveSpaceForChevron:0];
}

- (void)flightController:(id)a3 didSelectLeg:(int64_t)a4 ofFlight:(int64_t)a5
{
  v17 = [(SearchUICardSectionView *)self feedbackDelegate:a3];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SearchUICardSectionView *)self section];
    v8 = [v7 flight];
    v9 = [v8 legs];
    v10 = [v9 objectAtIndexedSubscript:a4];
    v11 = [v10 title];
    [v17 updateViewControllerTitle:v11];
  }

  if ([(SearchUIFlightCardSectionView *)self lastSelectedLegIndex]!= a4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = objc_alloc(MEMORY[0x1E69C9F10]);
    v13 = [(SearchUICardSectionView *)self section];
    if ([(SearchUIFlightCardSectionView *)self lastSelectedLegIndex]< a4)
    {
      v14 = 15;
    }

    else
    {
      v14 = 16;
    }

    v15 = [v12 initWithCardSection:v13 destination:0 triggerEvent:v14 actionCardType:1];

    v16 = [(SearchUICardSectionView *)self rowModel];
    [v15 setQueryId:{objc_msgSend(v16, "queryId")}];

    [v17 didEngageCardSection:v15];
  }

  [(SearchUIFlightCardSectionView *)self setLastSelectedLegIndex:a4];
}

+ (int)defaultSeparatorStyleForRowModel:(id)a3
{
  v3 = [a3 cardSection];
  v4 = [v3 flight];
  v5 = [v4 legs];
  v6 = [v5 count] > 1;

  return v6;
}

+ (void)getAdditionalCardSectionsForFlightCardSection:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [a3 flight];
  v7 = [v6 legs];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [v6 legs];
    v10 = [v9 lastObject];

    v12 = v6;
    v13 = v5;
    v11 = v10;
    GEOFetchOfflineMapsDownloadURLForSFFlightLeg();
  }

  else
  {
    (*(v5 + 2))(v5, MEMORY[0x1E695E0F0]);
  }
}

void __97__SearchUIFlightCardSectionView_getAdditionalCardSectionsForFlightCardSection_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = objc_opt_new();
  if (v17)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [SearchUIUtilities localizedStringForKey:@"DOWNLOAD_MAP_ACTION_TITLE_FORMAT"];
    v6 = [*(a1 + 32) arrivalAirport];
    v7 = [v6 city];
    v8 = [v4 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, v7];

    v9 = [MEMORY[0x1E69CA320] punchoutWithURL:v17];
    v10 = [SearchUIUtilities bundleIdentifierForApp:9];
    [v9 setBundleIdentifier:v10];

    [v9 setActionTarget:@"download-map"];
    v11 = objc_opt_new();
    [v11 setPunchout:v9];
    v12 = objc_opt_new();
    v13 = [SearchUIUtilities bundleIdentifierForApp:9];
    [v12 setBundleIdentifier:v13];

    v14 = objc_opt_new();
    v15 = [MEMORY[0x1E69CA3A0] textWithString:v8];
    [v14 setLeadingText:v15];

    [v14 setImage:v12];
    [v14 setCommand:v11];
    [v14 setImageIsRightAligned:1];
    [v3 addObject:v14];
  }

  v16 = [*(a1 + 56) calendarEventCardSectionForFlight:*(a1 + 40) leg:*(a1 + 32)];
  [v3 addObject:v16];

  (*(*(a1 + 48) + 16))();
}

+ (id)calendarEventCardSectionForFlight:(id)a3 leg:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 departureAirport];
  v8 = [v6 arrivalAirport];
  v9 = objc_opt_new();
  v10 = MEMORY[0x1E696AEC0];
  v11 = [SearchUIUtilities localizedStringForKey:@"FLIGHT_EVENT_TITLE_FORMAT"];
  v12 = [v5 carrierCode];
  v72 = v5;
  v13 = [v5 flightNumber];
  v14 = [v7 code];
  v15 = [v8 code];
  v16 = [v10 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@ %@ %@ %@" error:0, v12, v13, v14, v15];
  [v9 setTitle:v16];

  v17 = [v6 departureActualTime];
  [v9 setStartDate:v17];

  v18 = [v7 timezone];
  [v9 setStartTimeZone:v18];

  v19 = [v6 arrivalActualTime];

  [v9 setEndDate:v19];
  v20 = [v8 timezone];
  [v9 setEndTimeZone:v20];

  v21 = objc_opt_new();
  [v9 setLocation:v21];

  v22 = [v7 name];
  v23 = [v9 location];
  [v23 setTitle:v22];

  v24 = [v7 location];
  v25 = [v9 location];
  [v25 setGeoLocation:v24];

  v26 = objc_opt_new();
  [v9 setEndLocation:v26];

  v27 = [v8 name];
  v28 = [v9 endLocation];
  [v28 setTitle:v27];

  v29 = [v8 location];
  v30 = [v9 endLocation];
  [v30 setGeoLocation:v29];

  v31 = objc_opt_new();
  [v31 setUnitsStyle:2];
  v32 = objc_opt_new();
  v33 = MEMORY[0x1E696AEC0];
  v34 = [SearchUIUtilities localizedStringForKey:@"FLIGHT_DURATION_FORMAT"];
  v35 = [v9 startDate];
  v36 = [v9 endDate];
  v37 = [v31 stringFromDate:v35 toDate:v36];
  v38 = [v33 stringWithValidatedFormat:v34 validFormatSpecifiers:@"%@" error:0, v37];
  [v32 appendString:v38];

  v39 = [v8 timezone];
  v40 = [v39 secondsFromGMT];
  v41 = [v7 timezone];
  v42 = [v41 secondsFromGMT];

  v43 = v40 - v42;
  if (v43)
  {
    [v32 appendString:@"\n"];
    v44 = MEMORY[0x1E696AEC0];
    if (v43 <= 0)
    {
      v45 = &stru_1F55BC4E8;
    }

    else
    {
      v45 = @"+";
    }

    v46 = [v31 stringFromTimeInterval:v43];
    v47 = [v44 stringWithFormat:@"%@%@", v45, v46];

    v48 = MEMORY[0x1E696AEC0];
    v49 = [SearchUIUtilities localizedStringForKey:@"FLIGHT_TIME_CHANGE_FORMAT"];
    v50 = [v48 stringWithValidatedFormat:v49 validFormatSpecifiers:@"%@" error:0, v47];
    [v32 appendString:v50];
  }

  v51 = [v72 carrierName];
  if (v51)
  {
    v52 = v51;
    v53 = [v72 carrierPhoneNumber];

    if (v53)
    {
      [v32 appendString:@"\n\n"];
      v54 = MEMORY[0x1E696AEC0];
      v55 = [SearchUIUtilities localizedStringForKey:@"AIRLINE_PHONE_NUMBER_FORMAT"];
      v56 = [v72 carrierName];
      v57 = [v72 carrierPhoneNumber];
      v58 = [v54 stringWithValidatedFormat:v55 validFormatSpecifiers:@"%@ %@" error:0, v56, v57];
      [v32 appendString:v58];
    }
  }

  v59 = [v32 copy];
  [v9 setNotes:v59];

  v60 = [v72 carrierWebsite];
  if (v60)
  {
    v61 = MEMORY[0x1E695DFF8];
    v62 = [v72 carrierWebsite];
    v63 = [v61 URLWithString:v62];
    [v9 setUrl:v63];
  }

  else
  {
    [v9 setUrl:0];
  }

  v64 = objc_opt_new();
  [v64 setEvent:v9];
  v65 = objc_opt_new();
  v66 = [SearchUIUtilities bundleIdentifierForApp:4];
  [v65 setBundleIdentifier:v66];

  v67 = objc_opt_new();
  v68 = MEMORY[0x1E69CA3A0];
  v69 = [SearchUIUtilities localizedStringForKey:@"ADD_EVENT_TO_CALENDAR"];
  v70 = [v68 textWithString:v69];
  [v67 setLeadingText:v70];

  [v67 setImage:v65];
  [v67 setCommand:v64];
  [v67 setImageIsRightAligned:1];

  return v67;
}

@end