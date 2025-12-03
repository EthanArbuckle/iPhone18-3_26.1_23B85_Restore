@interface RTPlaceStatsAndType
- (RTPlaceStatsAndType)initWithPlaceStats:(id)stats type:(unint64_t)type placeIdentifier:(id)identifier;
@end

@implementation RTPlaceStatsAndType

- (RTPlaceStatsAndType)initWithPlaceStats:(id)stats type:(unint64_t)type placeIdentifier:(id)identifier
{
  statsCopy = stats;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = RTPlaceStatsAndType;
  v11 = [(RTPlaceStatsAndType *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_placeStats, stats);
    v12->_type = type;
    objc_storeStrong(&v12->_placeIdentifier, identifier);
  }

  return v12;
}

@end