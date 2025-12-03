@interface TAStagedSuspiciousDevice
- (BOOL)isEqual:(id)equal;
- (TAStagedSuspiciousDevice)initWithCoder:(id)coder;
- (TAStagedSuspiciousDevice)initWithDetection:(id)detection keepInStagingUntil:(id)until;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAStagedSuspiciousDevice

- (TAStagedSuspiciousDevice)initWithDetection:(id)detection keepInStagingUntil:(id)until
{
  detectionCopy = detection;
  untilCopy = until;
  v13.receiver = self;
  v13.super_class = TAStagedSuspiciousDevice;
  v9 = [(TAStagedSuspiciousDevice *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (detectionCopy && untilCopy)
  {
    objc_storeStrong(&v9->_detection, detection);
    objc_storeStrong(p_isa + 2, until);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      detection = [(TAStagedSuspiciousDevice *)self detection];
      detection2 = [(TAStagedSuspiciousDevice *)v6 detection];
      if (detection != detection2)
      {
        detection3 = [(TAStagedSuspiciousDevice *)self detection];
        detection4 = [(TAStagedSuspiciousDevice *)v6 detection];
        if (![detection3 isEqual:detection4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = detection3;
      }

      keepInStagingUntil = [(TAStagedSuspiciousDevice *)self keepInStagingUntil];
      keepInStagingUntil2 = [(TAStagedSuspiciousDevice *)v6 keepInStagingUntil];
      if (keepInStagingUntil == keepInStagingUntil2)
      {
        v10 = 1;
      }

      else
      {
        keepInStagingUntil3 = [(TAStagedSuspiciousDevice *)self keepInStagingUntil];
        keepInStagingUntil4 = [(TAStagedSuspiciousDevice *)v6 keepInStagingUntil];
        v10 = [keepInStagingUntil3 isEqual:keepInStagingUntil4];
      }

      detection3 = v16;
      if (detection == detection2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)descriptionDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"Detection";
  descriptionDictionary = [(TASuspiciousDevice *)self->_detection descriptionDictionary];
  v8[1] = @"KeepInStagingUntil";
  v9[0] = descriptionDictionary;
  getDateString = [(NSDate *)self->_keepInStagingUntil getDateString];
  v9[1] = getDateString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)description
{
  descriptionDictionary = [(TAStagedSuspiciousDevice *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

- (TAStagedSuspiciousDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Detection"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KeepInStagingUntil"];

  v7 = [(TAStagedSuspiciousDevice *)self initWithDetection:v5 keepInStagingUntil:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  detection = self->_detection;
  coderCopy = coder;
  [coderCopy encodeObject:detection forKey:@"Detection"];
  [coderCopy encodeObject:self->_keepInStagingUntil forKey:@"KeepInStagingUntil"];
}

@end