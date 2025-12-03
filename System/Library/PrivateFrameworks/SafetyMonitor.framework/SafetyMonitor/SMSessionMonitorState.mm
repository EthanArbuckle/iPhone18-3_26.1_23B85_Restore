@interface SMSessionMonitorState
+ (id)regionStateToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (SMSessionMonitorState)initWithCoder:(id)coder;
- (SMSessionMonitorState)initWithSessionIdentifier:(id)identifier currentRegionState:(unint64_t)state triggerPending:(BOOL)pending triggerConfirmed:(BOOL)confirmed date:(id)date;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)markDirty;
- (void)setCurrentRegionState:(unint64_t)state;
- (void)setTriggerConfirmed:(BOOL)confirmed;
- (void)setTriggerPending:(BOOL)pending;
@end

@implementation SMSessionMonitorState

- (SMSessionMonitorState)initWithSessionIdentifier:(id)identifier currentRegionState:(unint64_t)state triggerPending:(BOOL)pending triggerConfirmed:(BOOL)confirmed date:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = SMSessionMonitorState;
  v15 = [(SMSessionMonitorState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionIdentifier, identifier);
    v16->_currentRegionState = state;
    v16->_triggerPending = pending;
    v16->_triggerConfirmed = confirmed;
    objc_storeStrong(&v16->_date, date);
    v16->_dirty = 1;
  }

  return v16;
}

- (void)markDirty
{
  date = [MEMORY[0x277CBEAA8] date];
  date = self->_date;
  self->_date = date;

  self->_dirty = 1;
}

- (void)setCurrentRegionState:(unint64_t)state
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_currentRegionState != state)
  {
    self->_currentRegionState = state;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [SMSessionMonitorState regionStateToString:self->_currentRegionState];
        v7 = 136315394;
        v8 = "[SMSessionMonitorState setCurrentRegionState:]";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%s, currentRegionState, %@", &v7, 0x16u);
      }
    }

    [(SMSessionMonitorState *)self markDirty];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setTriggerPending:(BOOL)pending
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_triggerPending != pending)
  {
    self->_triggerPending = pending;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        triggerPending = self->_triggerPending;
        v7 = 136315394;
        v8 = "[SMSessionMonitorState setTriggerPending:]";
        v9 = 1024;
        v10 = triggerPending;
        _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%s, triggerPending, %d", &v7, 0x12u);
      }
    }

    [(SMSessionMonitorState *)self markDirty];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setTriggerConfirmed:(BOOL)confirmed
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_triggerConfirmed != confirmed)
  {
    self->_triggerConfirmed = confirmed;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        triggerConfirmed = self->_triggerConfirmed;
        v7 = 136315394;
        v8 = "[SMSessionMonitorState setTriggerConfirmed:]";
        v9 = 1024;
        v10 = triggerConfirmed;
        _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%s, triggerConfirmed, %d", &v7, 0x12u);
      }
    }

    [(SMSessionMonitorState *)self markDirty];
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)regionStateToString:(unint64_t)string
{
  if (string > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_279B649B0[string];
  }
}

- (SMSessionMonitorState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorStateSessionIdentifierKey"];
  v6 = [coderCopy decodeIntegerForKey:@"__kSMSessionMonitorStateCurrentRegionStateKey"];
  v7 = [coderCopy decodeBoolForKey:@"__kSMSessionMonitorStateTriggerPendingKey"];
  v8 = [coderCopy decodeBoolForKey:@"__kSMSessionMonitorStateTriggerConfirmedKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorStateDateKey"];

  v10 = [(SMSessionMonitorState *)self initWithSessionIdentifier:v5 currentRegionState:v6 triggerPending:v7 triggerConfirmed:v8 date:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"__kSMSessionMonitorStateSessionIdentifierKey"];
  [coderCopy encodeInteger:self->_currentRegionState forKey:@"__kSMSessionMonitorStateCurrentRegionStateKey"];
  [coderCopy encodeBool:self->_triggerPending forKey:@"__kSMSessionMonitorStateTriggerPendingKey"];
  [coderCopy encodeBool:self->_triggerConfirmed forKey:@"__kSMSessionMonitorStateTriggerConfirmedKey"];
  [coderCopy encodeObject:self->_date forKey:@"__kSMSessionMonitorStateDateKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SMSessionMonitorState allocWithZone:zone];
  sessionIdentifier = [(SMSessionMonitorState *)self sessionIdentifier];
  currentRegionState = [(SMSessionMonitorState *)self currentRegionState];
  triggerPending = [(SMSessionMonitorState *)self triggerPending];
  triggerConfirmed = [(SMSessionMonitorState *)self triggerConfirmed];
  date = [(SMSessionMonitorState *)self date];
  v10 = [(SMSessionMonitorState *)v4 initWithSessionIdentifier:sessionIdentifier currentRegionState:currentRegionState triggerPending:triggerPending triggerConfirmed:triggerConfirmed date:date];

  return v10;
}

- (unint64_t)hash
{
  sessionIdentifier = [(SMSessionMonitorState *)self sessionIdentifier];
  v4 = [sessionIdentifier hash];
  v5 = [(SMSessionMonitorState *)self currentRegionState]^ v4;
  v6 = v5 ^ [(SMSessionMonitorState *)self triggerPending];
  triggerConfirmed = [(SMSessionMonitorState *)self triggerConfirmed];
  date = [(SMSessionMonitorState *)self date];
  v9 = triggerConfirmed ^ [date hash];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sessionIdentifier = [(SMSessionMonitorState *)self sessionIdentifier];
      sessionIdentifier2 = [(SMSessionMonitorState *)v5 sessionIdentifier];
      if (sessionIdentifier == sessionIdentifier2)
      {
        v11 = 0;
      }

      else
      {
        sessionIdentifier3 = [(SMSessionMonitorState *)self sessionIdentifier];
        sessionIdentifier4 = [(SMSessionMonitorState *)v5 sessionIdentifier];
        v10 = [sessionIdentifier3 isEqual:sessionIdentifier4];

        v11 = v10 ^ 1;
      }

      currentRegionState = [(SMSessionMonitorState *)self currentRegionState];
      currentRegionState2 = [(SMSessionMonitorState *)v5 currentRegionState];
      triggerPending = [(SMSessionMonitorState *)self triggerPending];
      LODWORD(sessionIdentifier) = triggerPending ^ [(SMSessionMonitorState *)v5 triggerPending];
      triggerConfirmed = [(SMSessionMonitorState *)self triggerConfirmed];
      v17 = triggerConfirmed ^ [(SMSessionMonitorState *)v5 triggerConfirmed];
      date = [(SMSessionMonitorState *)self date];
      date2 = [(SMSessionMonitorState *)v5 date];
      if (date == date2)
      {
        v24 = 1;
      }

      else
      {
        [(SMSessionMonitorState *)self date];
        v28 = currentRegionState;
        v20 = v27 = v11;
        [(SMSessionMonitorState *)v5 date];
        v21 = v17;
        v22 = sessionIdentifier;
        v23 = sessionIdentifier = currentRegionState2;
        v24 = [v20 isEqual:v23];

        currentRegionState2 = sessionIdentifier;
        LOBYTE(sessionIdentifier) = v22;
        LOBYTE(v17) = v21;

        v11 = v27;
        currentRegionState = v28;
      }

      if (currentRegionState == currentRegionState2)
      {
        v25 = v11;
      }

      else
      {
        v25 = 1;
      }

      v12 = ((v25 | sessionIdentifier | v17) ^ 1) & v24;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionIdentifier = [(SMSessionMonitorState *)self sessionIdentifier];
  date = [(SMSessionMonitorState *)self date];
  stringFromDate = [date stringFromDate];
  v7 = [SMSessionMonitorState regionStateToString:[(SMSessionMonitorState *)self currentRegionState]];
  v8 = [v3 stringWithFormat:@"sessionIdenfier, %@, date, %@, currentRegionState, %@, triggerPending, %d, triggerConfirmed, %d", sessionIdentifier, stringFromDate, v7, -[SMSessionMonitorState triggerPending](self, "triggerPending"), -[SMSessionMonitorState triggerConfirmed](self, "triggerConfirmed")];

  return v8;
}

@end