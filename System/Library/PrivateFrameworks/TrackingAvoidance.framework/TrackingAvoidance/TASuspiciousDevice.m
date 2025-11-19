@interface TASuspiciousDevice
+ (id)convertTAForceSurfaceReasonToString:(unint64_t)a3;
+ (id)convertTANotificationImmediacyTypeToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (TASuspiciousDevice)initWithCoder:(id)a3;
- (TASuspiciousDevice)initWithLatestAdv:(id)a3 detectionSummary:(id)a4 date:(id)a5 locHistory:(id)a6 detectionMetrics:(id)a7 detectionType:(unint64_t)a8 immediacyType:(unint64_t)a9 accessoryInfo:(id)a10 forceSurfaceReason:(unint64_t)a11;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TASuspiciousDevice

- (TASuspiciousDevice)initWithLatestAdv:(id)a3 detectionSummary:(id)a4 date:(id)a5 locHistory:(id)a6 detectionMetrics:(id)a7 detectionType:(unint64_t)a8 immediacyType:(unint64_t)a9 accessoryInfo:(id)a10 forceSurfaceReason:(unint64_t)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v37.receiver = self;
  v37.super_class = TASuspiciousDevice;
  v22 = [(TASuspiciousDevice *)&v37 init];
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = 0;
  if (v16 && v17 && v18 && v19)
  {
    v24 = [v16 address];
    v25 = [v24 copy];
    address = v22->_address;
    v22->_address = v25;

    v27 = [v17 copy];
    detectionSummary = v22->_detectionSummary;
    v22->_detectionSummary = v27;

    v29 = [v18 copy];
    date = v22->_date;
    v22->_date = v29;

    v31 = [v16 copy];
    latestAdvertisement = v22->_latestAdvertisement;
    v22->_latestAdvertisement = v31;

    v33 = [v19 copy];
    locationHistory = v22->_locationHistory;
    v22->_locationHistory = v33;

    objc_storeStrong(&v22->_detectionMetrics, a7);
    v22->_detectionType = a8;
    v22->_immediacyType = a9;
    objc_storeStrong(&v22->_accessoryInfo, a10);
    v22->_forceSurfaceReason = a11;
LABEL_7:
    v23 = v22;
  }

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TASuspiciousDevice *)self address];
      v7 = [(TASuspiciousDevice *)v5 address];
      v65 = v6;
      if (v6 != v7)
      {
        v8 = [(TASuspiciousDevice *)self address];
        v9 = [(TASuspiciousDevice *)v5 address];
        v63 = v8;
        if (![v8 isEqual:v9])
        {
          v10 = 0;
          goto LABEL_56;
        }

        v60 = v9;
      }

      v11 = [(TASuspiciousDevice *)self detectionSummary];
      v12 = [(TASuspiciousDevice *)v5 detectionSummary];
      v64 = v11;
      if (v11 != v12)
      {
        v13 = [(TASuspiciousDevice *)self detectionSummary];
        v14 = [(TASuspiciousDevice *)v5 detectionSummary];
        if (![v13 isEqual:v14])
        {
          v10 = 0;
LABEL_54:

LABEL_55:
          v9 = v60;
          if (v65 == v7)
          {
LABEL_57:

            goto LABEL_58;
          }

LABEL_56:

          goto LABEL_57;
        }

        v57 = v14;
        v58 = v13;
      }

      v15 = [(TASuspiciousDevice *)self date];
      v61 = [(TASuspiciousDevice *)v5 date];
      v62 = v15;
      if (v15 != v61)
      {
        v16 = [(TASuspiciousDevice *)self date];
        [(TASuspiciousDevice *)v5 date];
        v17 = v55 = v16;
        if (![v16 isEqual:?])
        {
          v10 = 0;
LABEL_52:

LABEL_53:
          v14 = v57;
          v13 = v58;
          if (v64 == v12)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v54 = v17;
      }

      v18 = [(TASuspiciousDevice *)self latestAdvertisement];
      v56 = [(TASuspiciousDevice *)v5 latestAdvertisement];
      v59 = v18;
      if (v18 != v56)
      {
        v19 = [(TASuspiciousDevice *)self latestAdvertisement];
        [(TASuspiciousDevice *)v5 latestAdvertisement];
        v20 = v52 = v19;
        if (![v19 isEqual:?])
        {
          v10 = 0;
          v25 = v56;
LABEL_50:

LABEL_51:
          v17 = v54;
          if (v62 == v61)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        v51 = v20;
      }

      v21 = [(TASuspiciousDevice *)self locationHistory];
      v53 = [(TASuspiciousDevice *)v5 locationHistory];
      if (v21 != v53)
      {
        v22 = v21;
        v23 = [(TASuspiciousDevice *)self locationHistory];
        [(TASuspiciousDevice *)v5 locationHistory];
        v24 = v50 = v23;
        if (![v23 isEqual:?])
        {
          v10 = 0;
          v32 = v53;
          v21 = v22;
LABEL_48:

LABEL_49:
          v25 = v56;
          v20 = v51;
          if (v59 == v56)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        v21 = v22;
        v49 = v24;
      }

      v26 = [(TASuspiciousDevice *)self detectionMetrics];
      v27 = [(TASuspiciousDevice *)v5 detectionMetrics];
      v28 = v27;
      if (v26 == v27)
      {
        v30 = v27;
        v31 = v26;
      }

      else
      {
        v29 = [(TASuspiciousDevice *)self detectionMetrics];
        v48 = [(TASuspiciousDevice *)v5 detectionMetrics];
        if (![v29 isEqual:?])
        {
          v10 = 0;
          goto LABEL_46;
        }

        v47 = v29;
        v30 = v28;
        v31 = v26;
      }

      v33 = [(TASuspiciousDevice *)self detectionType];
      if (v33 == [(TASuspiciousDevice *)v5 detectionType])
      {
        v34 = [(TASuspiciousDevice *)self accessoryInfo];
        v35 = [(TASuspiciousDevice *)v5 accessoryInfo];
        v46 = v34;
        v36 = v34 == v35;
        v26 = v31;
        if (v36)
        {
          v44 = v31;
          v28 = v30;
        }

        else
        {
          v37 = [(TASuspiciousDevice *)self accessoryInfo];
          [(TASuspiciousDevice *)v5 accessoryInfo];
          v45 = v43 = v37;
          v38 = [v37 isEqual:?];
          v28 = v30;
          if (!v38)
          {
            v10 = 0;
            v29 = v47;
            v41 = v45;
            goto LABEL_44;
          }

          v44 = v26;
        }

        v29 = v47;
        v39 = [(TASuspiciousDevice *)self immediacyType];
        if (v39 == [(TASuspiciousDevice *)v5 immediacyType])
        {
          v40 = [(TASuspiciousDevice *)self forceSurfaceReason];
          v10 = v40 == [(TASuspiciousDevice *)v5 forceSurfaceReason];
        }

        else
        {
          v10 = 0;
        }

        v26 = v44;
        v41 = v45;
        if (v46 == v35)
        {
LABEL_45:

          if (v26 == v28)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

LABEL_44:

        goto LABEL_45;
      }

      v10 = 0;
      v26 = v31;
      v28 = v30;
      v36 = v26 == v30;
      v29 = v47;
      if (v36)
      {
LABEL_47:

        v32 = v53;
        v24 = v49;
        if (v21 == v53)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

LABEL_46:

      goto LABEL_47;
    }

    v10 = 0;
  }

LABEL_58:

  return v10;
}

- (id)descriptionDictionary
{
  v20[9] = *MEMORY[0x277D85DE8];
  v19[0] = @"ResultType";
  v4 = objc_opt_class();
  v18 = NSStringFromClass(v4);
  v20[0] = v18;
  v19[1] = @"Address";
  v5 = [(NSData *)self->_address hexString];
  detectionSummary = self->_detectionSummary;
  date = self->_date;
  v20[1] = v5;
  v20[2] = detectionSummary;
  v19[2] = @"Summary";
  v19[3] = @"Date";
  v8 = [(NSDate *)date getDateString];
  v20[3] = v8;
  v19[4] = @"DeviceType";
  v9 = [TASPAdvertisement TASPAdvertisementDeviceTypeToString:[(TASPAdvertisement *)self->_latestAdvertisement getDeviceType]];
  v20[4] = v9;
  v19[5] = @"Type";
  v10 = [TAMetricsDetection convertTADetectionTypeToString:self->_detectionType];
  v20[5] = v10;
  v19[6] = @"Immediacy";
  v11 = [TASuspiciousDevice convertTANotificationImmediacyTypeToString:self->_immediacyType];
  v20[6] = v11;
  v19[7] = @"AISInfo";
  v12 = [(TASuspiciousDevice *)self accessoryInfo];
  if (v12)
  {
    v2 = [(TASuspiciousDevice *)self accessoryInfo];
    v13 = [v2 descriptionDictionary];
  }

  else
  {
    v13 = &stru_287F632C0;
  }

  v20[7] = v13;
  v19[8] = @"ForceReason";
  v14 = [TASuspiciousDevice convertTAForceSurfaceReasonToString:self->_forceSurfaceReason];
  v20[8] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:9];

  if (v12)
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)description
{
  v3 = [(TASuspiciousDevice *)self descriptionDictionary];
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

+ (id)convertTANotificationImmediacyTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Never";
  }

  else
  {
    return off_279DD1888[a3 - 1];
  }
}

+ (id)convertTAForceSurfaceReasonToString:(unint64_t)a3
{
  v3 = @"None";
  if (a3 == 1)
  {
    v3 = @"ArriveHome";
  }

  if (a3 == 2)
  {
    return @"BeepOnMove";
  }

  else
  {
    return v3;
  }
}

- (TASuspiciousDevice)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LastAdvertisement"];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v3 decodeObjectOfClasses:v8 forKey:@"Summary"];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"LocationHistory"];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Metrics"];
  v16 = [v3 decodeInt32ForKey:@"Type"];
  v17 = [v3 decodeIntegerForKey:@"Immediacy"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AISInfo"];
  v19 = [v3 decodeIntegerForKey:@"ForceReason"];

  v20 = [(TASuspiciousDevice *)self initWithLatestAdv:v4 detectionSummary:v9 date:v10 locHistory:v14 detectionMetrics:v15 detectionType:v16 immediacyType:v17 accessoryInfo:v18 forceSurfaceReason:v19];
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(TASuspiciousDevice *)self latestAdvertisement];
  [v10 encodeObject:v4 forKey:@"LastAdvertisement"];

  v5 = [(TASuspiciousDevice *)self detectionSummary];
  [v10 encodeObject:v5 forKey:@"Summary"];

  v6 = [(TASuspiciousDevice *)self date];
  [v10 encodeObject:v6 forKey:@"Date"];

  v7 = [(TASuspiciousDevice *)self locationHistory];
  [v10 encodeObject:v7 forKey:@"LocationHistory"];

  v8 = [(TASuspiciousDevice *)self detectionMetrics];
  [v10 encodeObject:v8 forKey:@"Metrics"];

  [v10 encodeInt32:-[TASuspiciousDevice detectionType](self forKey:{"detectionType"), @"Type"}];
  [v10 encodeInteger:-[TASuspiciousDevice immediacyType](self forKey:{"immediacyType"), @"Immediacy"}];
  v9 = [(TASuspiciousDevice *)self accessoryInfo];
  [v10 encodeObject:v9 forKey:@"AISInfo"];

  [v10 encodeInteger:-[TASuspiciousDevice forceSurfaceReason](self forKey:{"forceSurfaceReason"), @"ForceReason"}];
}

@end