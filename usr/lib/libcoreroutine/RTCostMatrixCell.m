@interface RTCostMatrixCell
- (RTCostMatrixCell)initWithDistance:(double)a3 cellIndex:(id)a4;
@end

@implementation RTCostMatrixCell

- (RTCostMatrixCell)initWithDistance:(double)a3 cellIndex:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v12.receiver = self;
    v12.super_class = RTCostMatrixCell;
    v7 = [(RTCostMatrixCell *)&v12 init];
    v8 = v7;
    if (v7)
    {
      [(RTCostMatrixCell *)v7 setDistance:a3];
      [(RTCostMatrixCell *)v8 setCellIndex:v6];
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cellIndex", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

@end