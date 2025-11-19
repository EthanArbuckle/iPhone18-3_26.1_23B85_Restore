@interface SMTriggerEstimatedEndDateUpdateNotification
- (SMTriggerEstimatedEndDateUpdateNotification)initWithTriggerCategory:(unint64_t)a3 SOSState:(unint64_t)a4 estimatedEndDate:(id)a5 coarseEstimatedEndDate:(id)a6 triggerName:(id)a7 date:(id)a8 details:(id)a9;
- (id)description;
@end

@implementation SMTriggerEstimatedEndDateUpdateNotification

- (SMTriggerEstimatedEndDateUpdateNotification)initWithTriggerCategory:(unint64_t)a3 SOSState:(unint64_t)a4 estimatedEndDate:(id)a5 coarseEstimatedEndDate:(id)a6 triggerName:(id)a7 date:(id)a8 details:(id)a9
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = v20;
  if (!v16)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: estimatedEndDate";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_17;
  }

  if (!v18)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: triggerName";
    goto LABEL_16;
  }

  if (!v19)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: date";
    goto LABEL_16;
  }

  if (!v20)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: details";
      goto LABEL_16;
    }

LABEL_17:

    v24 = 0;
    goto LABEL_18;
  }

  v28.receiver = self;
  v28.super_class = SMTriggerEstimatedEndDateUpdateNotification;
  v22 = [(SMTriggerNotification *)&v28 initWithTriggerCategory:a3 SOSState:a4 triggerName:v18 date:v19 details:v20];
  p_isa = &v22->super.super.super.isa;
  if (v22)
  {
    objc_storeStrong(&v22->_estimatedEndDate, a5);
    objc_storeStrong(p_isa + 7, a6);
  }

  self = p_isa;
  v24 = self;
LABEL_18:

  return v24;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277D4ABC8] triggerCategoryToString:{-[SMTriggerNotification triggerCategory](self, "triggerCategory")}];
  v3 = [objc_opt_class() triggerSOSCategoryToString:{-[SMTriggerNotification SOSState](self, "SOSState")}];
  v4 = [(SMTriggerNotification *)self triggerName];
  v5 = [(SMTriggerNotification *)self date];
  v6 = [v5 stringFromDate];
  v7 = [(SMTriggerEstimatedEndDateUpdateNotification *)self estimatedEndDate];
  v8 = [v7 stringFromDate];
  v9 = [(SMTriggerEstimatedEndDateUpdateNotification *)self coarseEstimatedEndDate];
  v10 = [v9 stringFromDate];
  v11 = [(SMTriggerNotification *)self details];
  v12 = [v15 stringWithFormat:@"SMTriggerEstimatedEndDateUpdateNotification, triggerCategory, %@, SOS state, %@, triggerName, %@, date, %@, estimatedEndDate, %@, coarseEstimatedEndDate, %@, details, %@", v14, v3, v4, v6, v8, v10, v11];

  return v12;
}

@end