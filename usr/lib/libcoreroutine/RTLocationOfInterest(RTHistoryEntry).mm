@interface RTLocationOfInterest(RTHistoryEntry)
- (id)initWithHistoryEntryPlaceDisplay:()RTHistoryEntry;
- (id)initWithHistoryEntryRoute:()RTHistoryEntry;
@end

@implementation RTLocationOfInterest(RTHistoryEntry)

- (id)initWithHistoryEntryRoute:()RTHistoryEntry
{
  v4 = a3;
  destinationLocation = [v4 destinationLocation];
  destinationMapItem = [v4 destinationMapItem];
  v7 = destinationMapItem;
  v8 = 0;
  if (destinationLocation && destinationMapItem)
  {
    identifier = [v4 identifier];
    v8 = [self initWithLocation:destinationLocation confidence:identifier identifier:-1 type:0 typeSource:0 visits:0 customLabel:1.0 mapItem:v7];

    self = v8;
  }

  return v8;
}

- (id)initWithHistoryEntryPlaceDisplay:()RTHistoryEntry
{
  v4 = a3;
  location = [v4 location];
  mapItem = [v4 mapItem];
  v7 = mapItem;
  v8 = 0;
  if (location && mapItem)
  {
    identifier = [v4 identifier];
    v8 = [self initWithLocation:location confidence:identifier identifier:-1 type:0 typeSource:0 visits:0 customLabel:1.0 mapItem:v7];

    self = v8;
  }

  return v8;
}

@end