@interface RTFavoritePlace
- (RTFavoritePlace)initWithTitle:(id)a3 mapItem:(id)a4;
@end

@implementation RTFavoritePlace

- (RTFavoritePlace)initWithTitle:(id)a3 mapItem:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v14.receiver = self;
    v14.super_class = RTFavoritePlace;
    v8 = [(RTFavoritePlace *)&v14 init];
    if (v8)
    {
      v9 = [v6 copy];
      title = v8->_title;
      v8->_title = v9;

      objc_storeStrong(&v8->_mapItem, a4);
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTFavoritePlace initWithTitle:mapItem:]";
      v17 = 1024;
      v18 = 27;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem (in %s:%d)", buf, 0x12u);
    }

    v11 = 0;
  }

  return v11;
}

@end