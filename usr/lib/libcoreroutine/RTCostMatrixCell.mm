@interface RTCostMatrixCell
- (RTCostMatrixCell)initWithDistance:(double)distance cellIndex:(id)index;
@end

@implementation RTCostMatrixCell

- (RTCostMatrixCell)initWithDistance:(double)distance cellIndex:(id)index
{
  indexCopy = index;
  if (indexCopy)
  {
    v12.receiver = self;
    v12.super_class = RTCostMatrixCell;
    v7 = [(RTCostMatrixCell *)&v12 init];
    v8 = v7;
    if (v7)
    {
      [(RTCostMatrixCell *)v7 setDistance:distance];
      [(RTCostMatrixCell *)v8 setCellIndex:indexCopy];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cellIndex", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end