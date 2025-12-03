@interface SMTriggerNotification
+ (id)triggerSOSCategoryToString:(unint64_t)string;
- (SMTriggerNotification)initWithTriggerCategory:(unint64_t)category SOSState:(unint64_t)state triggerName:(id)name date:(id)date details:(id)details;
- (id)description;
@end

@implementation SMTriggerNotification

- (SMTriggerNotification)initWithTriggerCategory:(unint64_t)category SOSState:(unint64_t)state triggerName:(id)name date:(id)date details:(id)details
{
  nameCopy = name;
  dateCopy = date;
  detailsCopy = details;
  v16 = detailsCopy;
  if (category >= 0x1B)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: triggerCategory >= SMTriggerCategoryUnknown && triggerCategory <= SMTriggerCategoryMax";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_20;
  }

  if (state - 1 >= 2)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: SOSState >= SMTriggerSOSCategoryNonSOS && SOSState <= SMTriggerSOSCategorySOS";
    goto LABEL_19;
  }

  if (!nameCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: triggerName";
    goto LABEL_19;
  }

  if (!dateCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: date";
    goto LABEL_19;
  }

  if (!detailsCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: details";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v23.receiver = self;
  v23.super_class = SMTriggerNotification;
  v17 = [(RTNotification *)&v23 init];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    v17->_triggerCategory = category;
    v17->_SOSState = state;
    objc_storeStrong(&v17->_triggerName, name);
    objc_storeStrong(p_isa + 4, date);
    objc_storeStrong(p_isa + 5, details);
  }

  self = p_isa;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

+ (id)triggerSOSCategoryToString:(unint64_t)string
{
  v3 = @"SMTriggerSOSCategoryNonSOS";
  if (string == 2)
  {
    v3 = @"SMTriggerSOSCategorySOS";
  }

  if (string)
  {
    return v3;
  }

  else
  {
    return @"SMTriggerSOSCategoryUnknown";
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277D4ABC8] triggerCategoryToString:{-[SMTriggerNotification triggerCategory](self, "triggerCategory")}];
  v5 = [objc_opt_class() triggerSOSCategoryToString:{-[SMTriggerNotification SOSState](self, "SOSState")}];
  triggerName = [(SMTriggerNotification *)self triggerName];
  date = [(SMTriggerNotification *)self date];
  stringFromDate = [date stringFromDate];
  details = [(SMTriggerNotification *)self details];
  v10 = [v3 stringWithFormat:@"SMTriggerNotification, triggerCategory, %@, SOS state, %@, triggerName, %@, date, %@, details, %@", v4, v5, triggerName, stringFromDate, details];

  return v10;
}

@end