@interface SMActiveSessionDetails
- (SMActiveSessionDetails)initWithCoder:(id)coder;
- (SMActiveSessionDetails)initWithSessionID:(id)d activeDeviceIdentifier:(id)identifier cacheReleasedDate:(id)date scheduledSendGUID:(id)iD receiverHandles:(id)handles;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMActiveSessionDetails

- (SMActiveSessionDetails)initWithSessionID:(id)d activeDeviceIdentifier:(id)identifier cacheReleasedDate:(id)date scheduledSendGUID:(id)iD receiverHandles:(id)handles
{
  dCopy = d;
  identifierCopy = identifier;
  dateCopy = date;
  iDCopy = iD;
  handlesCopy = handles;
  v17 = handlesCopy;
  if (!dCopy)
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

  if (!identifierCopy)
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

  if (!handlesCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: receiverHandles";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v25.receiver = self;
  v25.super_class = SMActiveSessionDetails;
  v18 = [(SMActiveSessionDetails *)&v25 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionID, d);
    objc_storeStrong(p_isa + 2, identifier);
    objc_storeStrong(p_isa + 3, date);
    objc_storeStrong(p_isa + 4, iD);
    objc_storeStrong(p_isa + 5, handles);
  }

  self = p_isa;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionID = [(SMActiveSessionDetails *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"__kSMActiveSessionDetailsSessionIDKey"];

  activeDeviceIdentifier = [(SMActiveSessionDetails *)self activeDeviceIdentifier];
  [coderCopy encodeObject:activeDeviceIdentifier forKey:@"__kSMActiveSessionDetailsActiveDeviceIdentifierKey"];

  cacheReleasedDate = [(SMActiveSessionDetails *)self cacheReleasedDate];
  [coderCopy encodeObject:cacheReleasedDate forKey:@"__kSMActiveSessionDetailsCacheReleasedDateKey"];

  scheduledSendGUID = [(SMActiveSessionDetails *)self scheduledSendGUID];
  [coderCopy encodeObject:scheduledSendGUID forKey:@"__kSMActiveSessionDetailsScheduledSendGUIDKey"];

  receiverHandles = [(SMActiveSessionDetails *)self receiverHandles];
  [coderCopy encodeObject:receiverHandles forKey:@"__kSMActiveSessionDetailsReceiverHandlesKey"];
}

- (SMActiveSessionDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMActiveSessionDetailsSessionIDKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMActiveSessionDetailsActiveDeviceIdentifierKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMActiveSessionDetailsCacheReleasedDateKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMActiveSessionDetailsScheduledSendGUIDKey"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"__kSMActiveSessionDetailsReceiverHandlesKey"];

  v13 = [(SMActiveSessionDetails *)self initWithSessionID:v5 activeDeviceIdentifier:v6 cacheReleasedDate:v7 scheduledSendGUID:v8 receiverHandles:v12];
  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionID = [(SMActiveSessionDetails *)self sessionID];
  activeDeviceIdentifier = [(SMActiveSessionDetails *)self activeDeviceIdentifier];
  cacheReleasedDate = [(SMActiveSessionDetails *)self cacheReleasedDate];
  stringFromDate = [cacheReleasedDate stringFromDate];
  scheduledSendGUID = [(SMActiveSessionDetails *)self scheduledSendGUID];
  receiverHandles = [(SMActiveSessionDetails *)self receiverHandles];
  v10 = [v3 stringWithFormat:@"sessionID, %@, activeDeviceID, %@, cacheReleasedDate, %@, scheduledSendGUID, %@, receiverHandles, %@", sessionID, activeDeviceIdentifier, stringFromDate, scheduledSendGUID, receiverHandles];

  return v10;
}

@end