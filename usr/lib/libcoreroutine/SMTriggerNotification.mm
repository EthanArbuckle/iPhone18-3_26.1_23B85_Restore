@interface SMTriggerNotification
+ (id)triggerSOSCategoryToString:(unint64_t)a3;
- (SMTriggerNotification)initWithTriggerCategory:(unint64_t)a3 SOSState:(unint64_t)a4 triggerName:(id)a5 date:(id)a6 details:(id)a7;
- (id)description;
@end

@implementation SMTriggerNotification

- (SMTriggerNotification)initWithTriggerCategory:(unint64_t)a3 SOSState:(unint64_t)a4 triggerName:(id)a5 date:(id)a6 details:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (a3 >= 0x1B)
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

  if (a4 - 1 >= 2)
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

  if (!v13)
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

  if (!v14)
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

  if (!v15)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: details";
      goto LABEL_19;
    }

LABEL_20:

    v19 = 0;
    goto LABEL_21;
  }

  v23.receiver = self;
  v23.super_class = SMTriggerNotification;
  v17 = [(RTNotification *)&v23 init];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    v17->_triggerCategory = a3;
    v17->_SOSState = a4;
    objc_storeStrong(&v17->_triggerName, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
  }

  self = p_isa;
  v19 = self;
LABEL_21:

  return v19;
}

+ (id)triggerSOSCategoryToString:(unint64_t)a3
{
  v3 = @"SMTriggerSOSCategoryNonSOS";
  if (a3 == 2)
  {
    v3 = @"SMTriggerSOSCategorySOS";
  }

  if (a3)
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
  v6 = [(SMTriggerNotification *)self triggerName];
  v7 = [(SMTriggerNotification *)self date];
  v8 = [v7 stringFromDate];
  v9 = [(SMTriggerNotification *)self details];
  v10 = [v3 stringWithFormat:@"SMTriggerNotification, triggerCategory, %@, SOS state, %@, triggerName, %@, date, %@, details, %@", v4, v5, v6, v8, v9];

  return v10;
}

@end