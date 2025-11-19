@interface SMSessionManagerStatus
- (SMSessionManagerStatus)initWithIdentifier:(id)a3 stateQueryDate:(id)a4 lastSessionIDDuringMagnetBreak:(id)a5 state:(id)a6;
- (id)description;
@end

@implementation SMSessionManagerStatus

- (SMSessionManagerStatus)initWithIdentifier:(id)a3 stateQueryDate:(id)a4 lastSessionIDDuringMagnetBreak:(id)a5 state:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v20.receiver = self;
    v20.super_class = SMSessionManagerStatus;
    v15 = [(SMSessionManagerStatus *)&v20 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_identifier, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
      objc_storeStrong(p_isa + 4, a6);
    }

    self = p_isa;
    v17 = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMSessionManagerStatus *)self identifier];
  v5 = [(SMSessionManagerStatus *)self stateQueryDate];
  v6 = [v5 stringFromDate];
  v7 = [(SMSessionManagerStatus *)self lastSessionIDDuringMagnetBreak];
  v8 = [(SMSessionManagerStatus *)self state];
  v9 = [v3 stringWithFormat:@"identifier, %@, stateQueryDate, %@, lastSessionIDDuringMagnetBreak, %@, state, %@", v4, v6, v7, v8];

  return v9;
}

@end