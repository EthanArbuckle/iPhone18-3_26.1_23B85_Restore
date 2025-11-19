@interface SMActiveSessionDetails
- (SMActiveSessionDetails)initWithCoder:(id)a3;
- (SMActiveSessionDetails)initWithSessionID:(id)a3 activeDeviceIdentifier:(id)a4 cacheReleasedDate:(id)a5 scheduledSendGUID:(id)a6 receiverHandles:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMActiveSessionDetails

- (SMActiveSessionDetails)initWithSessionID:(id)a3 activeDeviceIdentifier:(id)a4 cacheReleasedDate:(id)a5 scheduledSendGUID:(id)a6 receiverHandles:(id)a7
{
  v13 = a3;
  v14 = a4;
  v24 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v13)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: sessionID";
LABEL_13:
    _os_log_error_impl(&dword_26455D000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_14;
  }

  if (!v14)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: activeDeviceIdentifier";
    goto LABEL_13;
  }

  if (!v16)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: receiverHandles";
      goto LABEL_13;
    }

LABEL_14:

    v20 = 0;
    goto LABEL_15;
  }

  v25.receiver = self;
  v25.super_class = SMActiveSessionDetails;
  v18 = [(SMActiveSessionDetails *)&v25 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionID, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
  }

  self = p_isa;
  v20 = self;
LABEL_15:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SMActiveSessionDetails *)self sessionID];
  [v4 encodeObject:v5 forKey:@"__kSMActiveSessionDetailsSessionIDKey"];

  v6 = [(SMActiveSessionDetails *)self activeDeviceIdentifier];
  [v4 encodeObject:v6 forKey:@"__kSMActiveSessionDetailsActiveDeviceIdentifierKey"];

  v7 = [(SMActiveSessionDetails *)self cacheReleasedDate];
  [v4 encodeObject:v7 forKey:@"__kSMActiveSessionDetailsCacheReleasedDateKey"];

  v8 = [(SMActiveSessionDetails *)self scheduledSendGUID];
  [v4 encodeObject:v8 forKey:@"__kSMActiveSessionDetailsScheduledSendGUIDKey"];

  v9 = [(SMActiveSessionDetails *)self receiverHandles];
  [v4 encodeObject:v9 forKey:@"__kSMActiveSessionDetailsReceiverHandlesKey"];
}

- (SMActiveSessionDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMActiveSessionDetailsSessionIDKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMActiveSessionDetailsActiveDeviceIdentifierKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMActiveSessionDetailsCacheReleasedDateKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMActiveSessionDetailsScheduledSendGUIDKey"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"__kSMActiveSessionDetailsReceiverHandlesKey"];

  v13 = [(SMActiveSessionDetails *)self initWithSessionID:v5 activeDeviceIdentifier:v6 cacheReleasedDate:v7 scheduledSendGUID:v8 receiverHandles:v12];
  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMActiveSessionDetails *)self sessionID];
  v5 = [(SMActiveSessionDetails *)self activeDeviceIdentifier];
  v6 = [(SMActiveSessionDetails *)self cacheReleasedDate];
  v7 = [v6 stringFromDate];
  v8 = [(SMActiveSessionDetails *)self scheduledSendGUID];
  v9 = [(SMActiveSessionDetails *)self receiverHandles];
  v10 = [v3 stringWithFormat:@"sessionID, %@, activeDeviceID, %@, cacheReleasedDate, %@, scheduledSendGUID, %@, receiverHandles, %@", v4, v5, v7, v8, v9];

  return v10;
}

@end