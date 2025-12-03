@interface SMTriggerEstimatedEndDateUpdateNotification
- (SMTriggerEstimatedEndDateUpdateNotification)initWithTriggerCategory:(unint64_t)category SOSState:(unint64_t)state estimatedEndDate:(id)date coarseEstimatedEndDate:(id)endDate triggerName:(id)name date:(id)a8 details:(id)details;
- (id)description;
@end

@implementation SMTriggerEstimatedEndDateUpdateNotification

- (SMTriggerEstimatedEndDateUpdateNotification)initWithTriggerCategory:(unint64_t)category SOSState:(unint64_t)state estimatedEndDate:(id)date coarseEstimatedEndDate:(id)endDate triggerName:(id)name date:(id)a8 details:(id)details
{
  dateCopy = date;
  endDateCopy = endDate;
  nameCopy = name;
  v19 = a8;
  detailsCopy = details;
  v21 = detailsCopy;
  if (!dateCopy)
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

  if (!nameCopy)
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

  if (!detailsCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: details";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v28.receiver = self;
  v28.super_class = SMTriggerEstimatedEndDateUpdateNotification;
  v22 = [(SMTriggerNotification *)&v28 initWithTriggerCategory:category SOSState:state triggerName:nameCopy date:v19 details:detailsCopy];
  p_isa = &v22->super.super.super.isa;
  if (v22)
  {
    objc_storeStrong(&v22->_estimatedEndDate, date);
    objc_storeStrong(p_isa + 7, endDate);
  }

  self = p_isa;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277D4ABC8] triggerCategoryToString:{-[SMTriggerNotification triggerCategory](self, "triggerCategory")}];
  v3 = [objc_opt_class() triggerSOSCategoryToString:{-[SMTriggerNotification SOSState](self, "SOSState")}];
  triggerName = [(SMTriggerNotification *)self triggerName];
  date = [(SMTriggerNotification *)self date];
  stringFromDate = [date stringFromDate];
  estimatedEndDate = [(SMTriggerEstimatedEndDateUpdateNotification *)self estimatedEndDate];
  stringFromDate2 = [estimatedEndDate stringFromDate];
  coarseEstimatedEndDate = [(SMTriggerEstimatedEndDateUpdateNotification *)self coarseEstimatedEndDate];
  stringFromDate3 = [coarseEstimatedEndDate stringFromDate];
  details = [(SMTriggerNotification *)self details];
  v12 = [v15 stringWithFormat:@"SMTriggerEstimatedEndDateUpdateNotification, triggerCategory, %@, SOS state, %@, triggerName, %@, date, %@, estimatedEndDate, %@, coarseEstimatedEndDate, %@, details, %@", v14, v3, triggerName, stringFromDate, stringFromDate2, stringFromDate3, details];

  return v12;
}

@end