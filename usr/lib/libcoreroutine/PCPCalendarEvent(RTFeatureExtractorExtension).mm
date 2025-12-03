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
  structuredLocation = [v5 structuredLocation];
  geoLocation = [structuredLocation geoLocation];
  [geoLocation coordinate];
  [v7 setLocationLatitudeDeg:?];

  structuredLocation2 = [v5 structuredLocation];
  geoLocation2 = [structuredLocation2 geoLocation];
  [geoLocation2 coordinate];
  [v7 setLocationLongitudeDeg:v12];

  structuredLocation3 = [v5 structuredLocation];
  geoLocation3 = [structuredLocation3 geoLocation];
  [geoLocation3 horizontalAccuracy];
  [v7 setLocationHorizontalUncertaintyMeters:?];

  structuredLocation4 = [v5 structuredLocation];
  geoLocation4 = [structuredLocation4 geoLocation];
  [v7 setLocationReferenceFrame:{objc_msgSend(geoLocation4, "referenceFrame")}];

  [v6 setLocation:v7];
  eventIdentifier = [v5 eventIdentifier];
  [v6 setEventId:eventIdentifier];

  structuredLocation5 = [v5 structuredLocation];
  title = [structuredLocation5 title];
  [v6 setLocationTitle:title];

  [v6 setStatus:{objc_msgSend(v5, "status")}];
  startDate = [v5 startDate];
  [startDate timeIntervalSinceReferenceDate];
  [v6 setStartTimeCFAbsolute:?];

  endDate = [v5 endDate];
  [endDate timeIntervalSinceReferenceDate];
  [v6 setEndTimeCFAbsolute:?];

  calendar = [v5 calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  [v6 setCalendarId:calendarIdentifier];

  title2 = [v5 title];

  [v6 setTitleOfEvent:title2];
  return v6;
}

@end