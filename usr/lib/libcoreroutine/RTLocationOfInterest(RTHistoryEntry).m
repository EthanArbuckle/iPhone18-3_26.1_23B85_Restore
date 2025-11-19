@interface RTLocationOfInterest(RTHistoryEntry)
- (id)initWithHistoryEntryPlaceDisplay:()RTHistoryEntry;
- (id)initWithHistoryEntryRoute:()RTHistoryEntry;
@end

@implementation RTLocationOfInterest(RTHistoryEntry)

- (id)initWithHistoryEntryRoute:()RTHistoryEntry
{
  v4 = a3;
  v5 = [v4 destinationLocation];
  v6 = [v4 destinationMapItem];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v4 identifier];
    v8 = [a1 initWithLocation:v5 confidence:v9 identifier:-1 type:0 typeSource:0 visits:0 customLabel:1.0 mapItem:v7];

    a1 = v8;
  }

  return v8;
}

- (id)initWithHistoryEntryPlaceDisplay:()RTHistoryEntry
{
  v4 = a3;
  v5 = [v4 location];
  v6 = [v4 mapItem];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v4 identifier];
    v8 = [a1 initWithLocation:v5 confidence:v9 identifier:-1 type:0 typeSource:0 visits:0 customLabel:1.0 mapItem:v7];

    a1 = v8;
  }

  return v8;
}

@end