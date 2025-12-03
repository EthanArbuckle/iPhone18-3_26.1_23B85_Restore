@interface SBProductivityGestureEducationItem
- (BOOL)isValidWithActivationForType:(int64_t)type;
- (SBProductivityGestureEducationItem)initWithCoder:(id)coder;
- (SBProductivityGestureEducationItem)initWithType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)contentDidAppear;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBProductivityGestureEducationItem

- (SBProductivityGestureEducationItem)initWithType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = SBProductivityGestureEducationItem;
  v4 = [(SBProductivityGestureEducationItem *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activationHistoryMap = v5->_activationHistoryMap;
    v5->_activationHistoryMap = dictionary;
  }

  return v5;
}

- (void)contentDidAppear
{
  date = [MEMORY[0x277CBEAA8] date];
  displayDate = self->_displayDate;
  self->_displayDate = date;

  [(SBProductivityGestureEducationItem *)self resetActivations];
}

- (BOOL)isValidWithActivationForType:(int64_t)type
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_displayDate)
  {
LABEL_4:
    date = [MEMORY[0x277CBEAA8] date];
    activationHistoryMap = self->_activationHistoryMap;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v11 = [(NSMutableDictionary *)activationHistoryMap objectForKeyedSubscript:v10];

    self->_lastActivatedEducationType = type;
    if (!v11)
    {
      v11 = objc_alloc_init(SBProductivityGestureEducationActivationHistory);
      v12 = self->_activationHistoryMap;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
    }

    date2 = [(SBProductivityGestureEducationActivationHistory *)v11 date];
    if (date2)
    {
      [date timeIntervalSinceDate:date2];
      v16 = v15;
      [(SBProductivityGestureEducationItem *)self _policyInterval];
      if (v16 < v17)
      {
        v18 = [(SBProductivityGestureEducationActivationHistory *)v11 count]+ 1;
        v19 = v11;
LABEL_13:
        [(SBProductivityGestureEducationActivationHistory *)v19 setCount:v18];
        v23 = [(SBProductivityGestureEducationActivationHistory *)v11 count];
        v24 = v23 >= [(SBProductivityGestureEducationItem *)self _policyCount];

        goto LABEL_17;
      }

      v20 = SBLogSystemGesture();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = _SBFLoggingMethodProem();
        [(SBProductivityGestureEducationItem *)self _policyInterval];
        v27 = 138543874;
        v28 = v21;
        v29 = 2048;
        v30 = v22;
        v31 = 2048;
        typeCopy2 = type;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_INFO, "%{public}@ subsequent gesture activation happened past the require policy time of %f seconds for type %ld", &v27, 0x20u);
      }
    }

    [(SBProductivityGestureEducationActivationHistory *)v11 setDate:date];
    v19 = v11;
    v18 = 1;
    goto LABEL_13;
  }

  autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  date = [autoupdatingCurrentCalendar dateByAddingUnit:16 value:1 toDate:self->_displayDate options:0];

  date3 = [MEMORY[0x277CBEAA8] date];
  v8 = [date3 compare:date];

  if (v8 != -1)
  {

    goto LABEL_4;
  }

  v11 = SBLogSystemGesture();
  if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_INFO))
  {
    v25 = _SBFLoggingMethodProem();
    v27 = 138543874;
    v28 = v25;
    v29 = 2048;
    v30 = 1;
    v31 = 2048;
    typeCopy2 = type;
    _os_log_impl(&dword_21ED4E000, &v11->super, OS_LOG_TYPE_INFO, "%{public}@ gated by the %ld day per education pill type %ld", &v27, 0x20u);
  }

  v24 = 0;
LABEL_17:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SBProductivityGestureEducationItem alloc] initWithType:self->_type];
  objc_storeStrong(&v4->_displayDate, self->_displayDate);
  objc_storeStrong(&v4->_activationHistoryMap, self->_activationHistoryMap);
  v4->_lastActivatedEducationType = self->_lastActivatedEducationType;
  return v4;
}

- (SBProductivityGestureEducationItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayDate"];

  displayDate = self->_displayDate;
  self->_displayDate = v6;

  return [(SBProductivityGestureEducationItem *)self initWithType:v5];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_displayDate forKey:@"displayDate"];
}

@end