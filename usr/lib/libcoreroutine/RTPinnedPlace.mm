@interface RTPinnedPlace
- (BOOL)isEqual:(id)equal;
- (RTPinnedPlace)initWithType:(unint64_t)type mapItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation RTPinnedPlace

- (RTPinnedPlace)initWithType:(unint64_t)type mapItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: mapItem";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_9;
  }

  if (type >= 5)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: (type >= RTLearnedPlaceTypeUnknown && type <= RTLearnedPlaceTypeGym)";
    goto LABEL_12;
  }

  v14.receiver = self;
  v14.super_class = RTPinnedPlace;
  v8 = [(RTPinnedPlace *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_mapItem, item);
  }

  self = v9;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() placeTypeToString:self->_type];
  v5 = [v3 stringWithFormat:@"type, %@, mapItem, %@", v4, self->_mapItem];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[RTPinnedPlace type](self, "type"), v5 == [equalCopy type]))
  {
    mapItem = [(RTPinnedPlace *)self mapItem];
    mapItem2 = [equalCopy mapItem];
    v8 = [mapItem isEqualToMapItem:mapItem2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  type = [(RTPinnedPlace *)self type];
  mapItem = [(RTPinnedPlace *)self mapItem];
  v5 = [mapItem hash];

  return v5 ^ type;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  type = self->_type;
  mapItem = self->_mapItem;

  return [v4 initWithType:type mapItem:mapItem];
}

@end