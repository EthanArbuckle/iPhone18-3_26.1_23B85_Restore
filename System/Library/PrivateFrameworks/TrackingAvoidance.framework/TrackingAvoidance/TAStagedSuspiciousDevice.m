@interface TAStagedSuspiciousDevice
- (BOOL)isEqual:(id)a3;
- (TAStagedSuspiciousDevice)initWithCoder:(id)a3;
- (TAStagedSuspiciousDevice)initWithDetection:(id)a3 keepInStagingUntil:(id)a4;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAStagedSuspiciousDevice

- (TAStagedSuspiciousDevice)initWithDetection:(id)a3 keepInStagingUntil:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = TAStagedSuspiciousDevice;
  v9 = [(TAStagedSuspiciousDevice *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (v7 && v8)
  {
    objc_storeStrong(&v9->_detection, a3);
    objc_storeStrong(p_isa + 2, a4);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(TAStagedSuspiciousDevice *)self detection];
      v8 = [(TAStagedSuspiciousDevice *)v6 detection];
      if (v7 != v8)
      {
        v9 = [(TAStagedSuspiciousDevice *)self detection];
        v3 = [(TAStagedSuspiciousDevice *)v6 detection];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(TAStagedSuspiciousDevice *)self keepInStagingUntil];
      v12 = [(TAStagedSuspiciousDevice *)v6 keepInStagingUntil];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(TAStagedSuspiciousDevice *)self keepInStagingUntil];
        v14 = [(TAStagedSuspiciousDevice *)v6 keepInStagingUntil];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
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
  v3 = [(TASuspiciousDevice *)self->_detection descriptionDictionary];
  v8[1] = @"KeepInStagingUntil";
  v9[0] = v3;
  v4 = [(NSDate *)self->_keepInStagingUntil getDateString];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)description
{
  v3 = [(TAStagedSuspiciousDevice *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (TAStagedSuspiciousDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Detection"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KeepInStagingUntil"];

  v7 = [(TAStagedSuspiciousDevice *)self initWithDetection:v5 keepInStagingUntil:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  detection = self->_detection;
  v5 = a3;
  [v5 encodeObject:detection forKey:@"Detection"];
  [v5 encodeObject:self->_keepInStagingUntil forKey:@"KeepInStagingUntil"];
}

@end