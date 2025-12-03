@interface RTMapItemProviderMapsSupportParameters
- (RTMapItemProviderMapsSupportParameters)initWithDefaultsManager:(id)manager;
- (RTMapItemProviderMapsSupportParameters)initWithFavoriteConfidence:(double)confidence historyEntryRouteConfidence:(double)routeConfidence historyEntryPlaceDisplayConfidence:(double)displayConfidence;
@end

@implementation RTMapItemProviderMapsSupportParameters

- (RTMapItemProviderMapsSupportParameters)initWithFavoriteConfidence:(double)confidence historyEntryRouteConfidence:(double)routeConfidence historyEntryPlaceDisplayConfidence:(double)displayConfidence
{
  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: RTCommonValidConfidence(favoriteConfidence)";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_14;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: RTCommonValidConfidence(historyEntryRouteConfidence)";
    goto LABEL_13;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Invalid parameter not satisfying: RTCommonValidConfidence(historyEntryPlaceDisplayConfidence)";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v14.receiver = self;
  v14.super_class = RTMapItemProviderMapsSupportParameters;
  v9 = [(RTMapItemProviderMapsSupportParameters *)&v14 init];
  if (v9)
  {
    v9->_favoriteConfidence = confidence;
    v9->_historyEntryRouteConfidence = routeConfidence;
    v9->_historyEntryPlaceDisplayConfidence = displayConfidence;
  }

  self = v9;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (RTMapItemProviderMapsSupportParameters)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (managerCopy)
  {
    v6 = [managerCopy objectForKey:@"RTDefaultsMapItemProviderMapsSupportFavoriteConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v8 = v7;
    }

    else
    {
      v8 = 0.9;
    }

    v11 = [v5 objectForKey:@"RTDefaultsMapItemProviderMapsSupportHistoryEntryRouteConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      v13 = v12;
    }

    else
    {
      v13 = 0.95;
    }

    v14 = [v5 objectForKey:@"RTDefaultsMapItemProviderMapsSupportHistoryEntryPlaceDisplayConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      v16 = v15;
    }

    else
    {
      v16 = 0.8;
    }

    self = [(RTMapItemProviderMapsSupportParameters *)self initWithFavoriteConfidence:v8 historyEntryRouteConfidence:v13 historyEntryPlaceDisplayConfidence:v16];

    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v18, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end