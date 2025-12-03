@interface SMSessionManagerStatus
- (SMSessionManagerStatus)initWithIdentifier:(id)identifier stateQueryDate:(id)date lastSessionIDDuringMagnetBreak:(id)break state:(id)state;
- (id)description;
@end

@implementation SMSessionManagerStatus

- (SMSessionManagerStatus)initWithIdentifier:(id)identifier stateQueryDate:(id)date lastSessionIDDuringMagnetBreak:(id)break state:(id)state
{
  identifierCopy = identifier;
  dateCopy = date;
  breakCopy = break;
  stateCopy = state;
  if (identifierCopy)
  {
    v20.receiver = self;
    v20.super_class = SMSessionManagerStatus;
    v15 = [(SMSessionManagerStatus *)&v20 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_identifier, identifier);
      objc_storeStrong(p_isa + 2, date);
      objc_storeStrong(p_isa + 3, break);
      objc_storeStrong(p_isa + 4, state);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SMSessionManagerStatus *)self identifier];
  stateQueryDate = [(SMSessionManagerStatus *)self stateQueryDate];
  stringFromDate = [stateQueryDate stringFromDate];
  lastSessionIDDuringMagnetBreak = [(SMSessionManagerStatus *)self lastSessionIDDuringMagnetBreak];
  state = [(SMSessionManagerStatus *)self state];
  v9 = [v3 stringWithFormat:@"identifier, %@, stateQueryDate, %@, lastSessionIDDuringMagnetBreak, %@, state, %@", identifier, stringFromDate, lastSessionIDDuringMagnetBreak, state];

  return v9;
}

@end