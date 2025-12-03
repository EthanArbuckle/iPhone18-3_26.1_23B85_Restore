@interface SearchUIFlightCardSectionView
+ (id)calendarEventCardSectionForFlight:(id)flight leg:(id)leg;
+ (int)defaultSeparatorStyleForRowModel:(id)model;
+ (void)getAdditionalCardSectionsForFlightCardSection:(id)section completionHandler:(id)handler;
- (SearchUIFlightCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (id)setupContentView;
- (void)flightController:(id)controller didSelectLeg:(int64_t)leg ofFlight:(int64_t)flight;
- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron;
@end

@implementation SearchUIFlightCardSectionView

- (SearchUIFlightCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  delegateCopy = delegate;
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  v19.receiver = self;
  v19.super_class = SearchUIFlightCardSectionView;
  v9 = [(SearchUICardSectionView *)&v19 initWithRowModel:modelCopy feedbackDelegate:delegateCopy];

  if (v9)
  {
    contentView = [(SearchUICardSectionView *)v9 contentView];
    [contentView setDelegate:v9];

    -[SearchUIFlightCardSectionView setLastSelectedLegIndex:](v9, "setLastSelectedLegIndex:", [cardSection selectedLegIndex]);
    v11 = objc_alloc(objc_opt_class());
    flight = [cardSection flight];
    v13 = [v11 initWithSFFlight:flight leg:objc_msgSend(cardSection style:"selectedLegIndex") delegate:{3, v9}];
    [(SearchUIFlightCardSectionView *)v9 setFlightViewController:v13];

    flightViewController = [(SearchUIFlightCardSectionView *)v9 flightViewController];
    [flightViewController setNoBackground];

    contentView2 = [(SearchUICardSectionView *)v9 contentView];
    flightViewController2 = [(SearchUIFlightCardSectionView *)v9 flightViewController];
    view = [flightViewController2 view];
    [contentView2 addArrangedSubview:view];
  }

  return v9;
}

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron
{
  v4.receiver = self;
  v4.super_class = SearchUIFlightCardSectionView;
  [(SearchUICardSectionView *)&v4 updateChevronVisible:0 leaveSpaceForChevron:0];
}

- (void)flightController:(id)controller didSelectLeg:(int64_t)leg ofFlight:(int64_t)flight
{
  v17 = [(SearchUICardSectionView *)self feedbackDelegate:controller];
  if (objc_opt_respondsToSelector())
  {
    section = [(SearchUICardSectionView *)self section];
    flight = [section flight];
    legs = [flight legs];
    v10 = [legs objectAtIndexedSubscript:leg];
    title = [v10 title];
    [v17 updateViewControllerTitle:title];
  }

  if ([(SearchUIFlightCardSectionView *)self lastSelectedLegIndex]!= leg && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = objc_alloc(MEMORY[0x1E69C9F10]);
    section2 = [(SearchUICardSectionView *)self section];
    if ([(SearchUIFlightCardSectionView *)self lastSelectedLegIndex]< leg)
    {
      v14 = 15;
    }

    else
    {
      v14 = 16;
    }

    v15 = [v12 initWithCardSection:section2 destination:0 triggerEvent:v14 actionCardType:1];

    rowModel = [(SearchUICardSectionView *)self rowModel];
    [v15 setQueryId:{objc_msgSend(rowModel, "queryId")}];

    [v17 didEngageCardSection:v15];
  }

  [(SearchUIFlightCardSectionView *)self setLastSelectedLegIndex:leg];
}

+ (int)defaultSeparatorStyleForRowModel:(id)model
{
  cardSection = [model cardSection];
  flight = [cardSection flight];
  legs = [flight legs];
  v6 = [legs count] > 1;

  return v6;
}

+ (void)getAdditionalCardSectionsForFlightCardSection:(id)section completionHandler:(id)handler
{
  handlerCopy = handler;
  flight = [section flight];
  legs = [flight legs];
  v8 = [legs count];

  if (v8 == 1)
  {
    legs2 = [flight legs];
    lastObject = [legs2 lastObject];

    v12 = flight;
    v13 = handlerCopy;
    v11 = lastObject;
    GEOFetchOfflineMapsDownloadURLForSFFlightLeg();
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
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

+ (id)calendarEventCardSectionForFlight:(id)flight leg:(id)leg
{
  flightCopy = flight;
  legCopy = leg;
  departureAirport = [legCopy departureAirport];
  arrivalAirport = [legCopy arrivalAirport];
  v9 = objc_opt_new();
  v10 = MEMORY[0x1E696AEC0];
  v11 = [SearchUIUtilities localizedStringForKey:@"FLIGHT_EVENT_TITLE_FORMAT"];
  carrierCode = [flightCopy carrierCode];
  v72 = flightCopy;
  flightNumber = [flightCopy flightNumber];
  code = [departureAirport code];
  code2 = [arrivalAirport code];
  v16 = [v10 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@ %@ %@ %@" error:0, carrierCode, flightNumber, code, code2];
  [v9 setTitle:v16];

  departureActualTime = [legCopy departureActualTime];
  [v9 setStartDate:departureActualTime];

  timezone = [departureAirport timezone];
  [v9 setStartTimeZone:timezone];

  arrivalActualTime = [legCopy arrivalActualTime];

  [v9 setEndDate:arrivalActualTime];
  timezone2 = [arrivalAirport timezone];
  [v9 setEndTimeZone:timezone2];

  v21 = objc_opt_new();
  [v9 setLocation:v21];

  name = [departureAirport name];
  location = [v9 location];
  [location setTitle:name];

  location2 = [departureAirport location];
  location3 = [v9 location];
  [location3 setGeoLocation:location2];

  v26 = objc_opt_new();
  [v9 setEndLocation:v26];

  name2 = [arrivalAirport name];
  endLocation = [v9 endLocation];
  [endLocation setTitle:name2];

  location4 = [arrivalAirport location];
  endLocation2 = [v9 endLocation];
  [endLocation2 setGeoLocation:location4];

  v31 = objc_opt_new();
  [v31 setUnitsStyle:2];
  v32 = objc_opt_new();
  v33 = MEMORY[0x1E696AEC0];
  v34 = [SearchUIUtilities localizedStringForKey:@"FLIGHT_DURATION_FORMAT"];
  startDate = [v9 startDate];
  endDate = [v9 endDate];
  v37 = [v31 stringFromDate:startDate toDate:endDate];
  v38 = [v33 stringWithValidatedFormat:v34 validFormatSpecifiers:@"%@" error:0, v37];
  [v32 appendString:v38];

  timezone3 = [arrivalAirport timezone];
  secondsFromGMT = [timezone3 secondsFromGMT];
  timezone4 = [departureAirport timezone];
  secondsFromGMT2 = [timezone4 secondsFromGMT];

  v43 = secondsFromGMT - secondsFromGMT2;
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

  carrierName = [v72 carrierName];
  if (carrierName)
  {
    v52 = carrierName;
    carrierPhoneNumber = [v72 carrierPhoneNumber];

    if (carrierPhoneNumber)
    {
      [v32 appendString:@"\n\n"];
      v54 = MEMORY[0x1E696AEC0];
      v55 = [SearchUIUtilities localizedStringForKey:@"AIRLINE_PHONE_NUMBER_FORMAT"];
      carrierName2 = [v72 carrierName];
      carrierPhoneNumber2 = [v72 carrierPhoneNumber];
      v58 = [v54 stringWithValidatedFormat:v55 validFormatSpecifiers:@"%@ %@" error:0, carrierName2, carrierPhoneNumber2];
      [v32 appendString:v58];
    }
  }

  v59 = [v32 copy];
  [v9 setNotes:v59];

  carrierWebsite = [v72 carrierWebsite];
  if (carrierWebsite)
  {
    v61 = MEMORY[0x1E695DFF8];
    carrierWebsite2 = [v72 carrierWebsite];
    v63 = [v61 URLWithString:carrierWebsite2];
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