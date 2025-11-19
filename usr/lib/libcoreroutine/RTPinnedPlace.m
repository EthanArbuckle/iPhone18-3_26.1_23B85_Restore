@interface RTPinnedPlace
- (BOOL)isEqual:(id)a3;
- (RTPinnedPlace)initWithType:(unint64_t)a3 mapItem:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation RTPinnedPlace

- (RTPinnedPlace)initWithType:(unint64_t)a3 mapItem:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v10 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: mapItem";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_9;
  }

  if (a3 >= 5)
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
    v8->_type = a3;
    objc_storeStrong(&v8->_mapItem, a4);
  }

  self = v9;
  v10 = self;
LABEL_10:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() placeTypeToString:self->_type];
  v5 = [v3 stringWithFormat:@"type, %@, mapItem, %@", v4, self->_mapItem];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[RTPinnedPlace type](self, "type"), v5 == [v4 type]))
  {
    v6 = [(RTPinnedPlace *)self mapItem];
    v7 = [v4 mapItem];
    v8 = [v6 isEqualToMapItem:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(RTPinnedPlace *)self type];
  v4 = [(RTPinnedPlace *)self mapItem];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  type = self->_type;
  mapItem = self->_mapItem;

  return [v4 initWithType:type mapItem:mapItem];
}

@end