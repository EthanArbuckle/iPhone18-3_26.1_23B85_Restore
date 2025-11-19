@interface RTPlaceStatsAndType
- (RTPlaceStatsAndType)initWithPlaceStats:(id)a3 type:(unint64_t)a4 placeIdentifier:(id)a5;
@end

@implementation RTPlaceStatsAndType

- (RTPlaceStatsAndType)initWithPlaceStats:(id)a3 type:(unint64_t)a4 placeIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RTPlaceStatsAndType;
  v11 = [(RTPlaceStatsAndType *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_placeStats, a3);
    v12->_type = a4;
    objc_storeStrong(&v12->_placeIdentifier, a5);
  }

  return v12;
}

@end