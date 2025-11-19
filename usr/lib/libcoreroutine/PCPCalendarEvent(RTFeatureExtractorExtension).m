@interface PCPCalendarEvent(RTFeatureExtractorExtension)
- (id)initWithEvent:()RTFeatureExtractorExtension;
@end

@implementation PCPCalendarEvent(RTFeatureExtractorExtension)

- (id)initWithEvent:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F860];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x277D3F888]);
  v8 = [v5 structuredLocation];
  v9 = [v8 geoLocation];
  [v9 coordinate];
  [v7 setLocationLatitudeDeg:?];

  v10 = [v5 structuredLocation];
  v11 = [v10 geoLocation];
  [v11 coordinate];
  [v7 setLocationLongitudeDeg:v12];

  v13 = [v5 structuredLocation];
  v14 = [v13 geoLocation];
  [v14 horizontalAccuracy];
  [v7 setLocationHorizontalUncertaintyMeters:?];

  v15 = [v5 structuredLocation];
  v16 = [v15 geoLocation];
  [v7 setLocationReferenceFrame:{objc_msgSend(v16, "referenceFrame")}];

  [v6 setLocation:v7];
  v17 = [v5 eventIdentifier];
  [v6 setEventId:v17];

  v18 = [v5 structuredLocation];
  v19 = [v18 title];
  [v6 setLocationTitle:v19];

  [v6 setStatus:{objc_msgSend(v5, "status")}];
  v20 = [v5 startDate];
  [v20 timeIntervalSinceReferenceDate];
  [v6 setStartTimeCFAbsolute:?];

  v21 = [v5 endDate];
  [v21 timeIntervalSinceReferenceDate];
  [v6 setEndTimeCFAbsolute:?];

  v22 = [v5 calendar];
  v23 = [v22 calendarIdentifier];
  [v6 setCalendarId:v23];

  v24 = [v5 title];

  [v6 setTitleOfEvent:v24];
  return v6;
}

@end