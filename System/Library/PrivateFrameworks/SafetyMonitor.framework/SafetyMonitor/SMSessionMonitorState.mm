@interface SMSessionMonitorState
+ (id)regionStateToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (SMSessionMonitorState)initWithCoder:(id)a3;
- (SMSessionMonitorState)initWithSessionIdentifier:(id)a3 currentRegionState:(unint64_t)a4 triggerPending:(BOOL)a5 triggerConfirmed:(BOOL)a6 date:(id)a7;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)markDirty;
- (void)setCurrentRegionState:(unint64_t)a3;
- (void)setTriggerConfirmed:(BOOL)a3;
- (void)setTriggerPending:(BOOL)a3;
@end

@implementation SMSessionMonitorState

- (SMSessionMonitorState)initWithSessionIdentifier:(id)a3 currentRegionState:(unint64_t)a4 triggerPending:(BOOL)a5 triggerConfirmed:(BOOL)a6 date:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = SMSessionMonitorState;
  v15 = [(SMSessionMonitorState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionIdentifier, a3);
    v16->_currentRegionState = a4;
    v16->_triggerPending = a5;
    v16->_triggerConfirmed = a6;
    objc_storeStrong(&v16->_date, a7);
    v16->_dirty = 1;
  }

  return v16;
}

- (void)markDirty
{
  v3 = [MEMORY[0x277CBEAA8] date];
  date = self->_date;
  self->_date = v3;

  self->_dirty = 1;
}

- (void)setCurrentRegionState:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_currentRegionState != a3)
  {
    self->_currentRegionState = a3;
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

- (void)setTriggerPending:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_triggerPending != a3)
  {
    self->_triggerPending = a3;
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

- (void)setTriggerConfirmed:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_triggerConfirmed != a3)
  {
    self->_triggerConfirmed = a3;
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

+ (id)regionStateToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_279B649B0[a3];
  }
}

- (SMSessionMonitorState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorStateSessionIdentifierKey"];
  v6 = [v4 decodeIntegerForKey:@"__kSMSessionMonitorStateCurrentRegionStateKey"];
  v7 = [v4 decodeBoolForKey:@"__kSMSessionMonitorStateTriggerPendingKey"];
  v8 = [v4 decodeBoolForKey:@"__kSMSessionMonitorStateTriggerConfirmedKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorStateDateKey"];

  v10 = [(SMSessionMonitorState *)self initWithSessionIdentifier:v5 currentRegionState:v6 triggerPending:v7 triggerConfirmed:v8 date:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"__kSMSessionMonitorStateSessionIdentifierKey"];
  [v5 encodeInteger:self->_currentRegionState forKey:@"__kSMSessionMonitorStateCurrentRegionStateKey"];
  [v5 encodeBool:self->_triggerPending forKey:@"__kSMSessionMonitorStateTriggerPendingKey"];
  [v5 encodeBool:self->_triggerConfirmed forKey:@"__kSMSessionMonitorStateTriggerConfirmedKey"];
  [v5 encodeObject:self->_date forKey:@"__kSMSessionMonitorStateDateKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SMSessionMonitorState allocWithZone:a3];
  v5 = [(SMSessionMonitorState *)self sessionIdentifier];
  v6 = [(SMSessionMonitorState *)self currentRegionState];
  v7 = [(SMSessionMonitorState *)self triggerPending];
  v8 = [(SMSessionMonitorState *)self triggerConfirmed];
  v9 = [(SMSessionMonitorState *)self date];
  v10 = [(SMSessionMonitorState *)v4 initWithSessionIdentifier:v5 currentRegionState:v6 triggerPending:v7 triggerConfirmed:v8 date:v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SMSessionMonitorState *)self sessionIdentifier];
  v4 = [v3 hash];
  v5 = [(SMSessionMonitorState *)self currentRegionState]^ v4;
  v6 = v5 ^ [(SMSessionMonitorState *)self triggerPending];
  v7 = [(SMSessionMonitorState *)self triggerConfirmed];
  v8 = [(SMSessionMonitorState *)self date];
  v9 = v7 ^ [v8 hash];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMSessionMonitorState *)self sessionIdentifier];
      v7 = [(SMSessionMonitorState *)v5 sessionIdentifier];
      if (v6 == v7)
      {
        v11 = 0;
      }

      else
      {
        v8 = [(SMSessionMonitorState *)self sessionIdentifier];
        v9 = [(SMSessionMonitorState *)v5 sessionIdentifier];
        v10 = [v8 isEqual:v9];

        v11 = v10 ^ 1;
      }

      v13 = [(SMSessionMonitorState *)self currentRegionState];
      v14 = [(SMSessionMonitorState *)v5 currentRegionState];
      v15 = [(SMSessionMonitorState *)self triggerPending];
      LODWORD(v6) = v15 ^ [(SMSessionMonitorState *)v5 triggerPending];
      v16 = [(SMSessionMonitorState *)self triggerConfirmed];
      v17 = v16 ^ [(SMSessionMonitorState *)v5 triggerConfirmed];
      v18 = [(SMSessionMonitorState *)self date];
      v19 = [(SMSessionMonitorState *)v5 date];
      if (v18 == v19)
      {
        v24 = 1;
      }

      else
      {
        [(SMSessionMonitorState *)self date];
        v28 = v13;
        v20 = v27 = v11;
        [(SMSessionMonitorState *)v5 date];
        v21 = v17;
        v22 = v6;
        v23 = v6 = v14;
        v24 = [v20 isEqual:v23];

        v14 = v6;
        LOBYTE(v6) = v22;
        LOBYTE(v17) = v21;

        v11 = v27;
        v13 = v28;
      }

      if (v13 == v14)
      {
        v25 = v11;
      }

      else
      {
        v25 = 1;
      }

      v12 = ((v25 | v6 | v17) ^ 1) & v24;
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
  v4 = [(SMSessionMonitorState *)self sessionIdentifier];
  v5 = [(SMSessionMonitorState *)self date];
  v6 = [v5 stringFromDate];
  v7 = [SMSessionMonitorState regionStateToString:[(SMSessionMonitorState *)self currentRegionState]];
  v8 = [v3 stringWithFormat:@"sessionIdenfier, %@, date, %@, currentRegionState, %@, triggerPending, %d, triggerConfirmed, %d", v4, v6, v7, -[SMSessionMonitorState triggerPending](self, "triggerPending"), -[SMSessionMonitorState triggerConfirmed](self, "triggerConfirmed")];

  return v8;
}

@end