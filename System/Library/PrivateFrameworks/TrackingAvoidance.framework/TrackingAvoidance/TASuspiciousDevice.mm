@interface TASuspiciousDevice
+ (id)convertTAForceSurfaceReasonToString:(unint64_t)string;
+ (id)convertTANotificationImmediacyTypeToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (TASuspiciousDevice)initWithCoder:(id)coder;
- (TASuspiciousDevice)initWithLatestAdv:(id)adv detectionSummary:(id)summary date:(id)date locHistory:(id)history detectionMetrics:(id)metrics detectionType:(unint64_t)type immediacyType:(unint64_t)immediacyType accessoryInfo:(id)self0 forceSurfaceReason:(unint64_t)self1;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TASuspiciousDevice

- (TASuspiciousDevice)initWithLatestAdv:(id)adv detectionSummary:(id)summary date:(id)date locHistory:(id)history detectionMetrics:(id)metrics detectionType:(unint64_t)type immediacyType:(unint64_t)immediacyType accessoryInfo:(id)self0 forceSurfaceReason:(unint64_t)self1
{
  advCopy = adv;
  summaryCopy = summary;
  dateCopy = date;
  historyCopy = history;
  metricsCopy = metrics;
  infoCopy = info;
  v37.receiver = self;
  v37.super_class = TASuspiciousDevice;
  v22 = [(TASuspiciousDevice *)&v37 init];
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = 0;
  if (advCopy && summaryCopy && dateCopy && historyCopy)
  {
    address = [advCopy address];
    v25 = [address copy];
    address = v22->_address;
    v22->_address = v25;

    v27 = [summaryCopy copy];
    detectionSummary = v22->_detectionSummary;
    v22->_detectionSummary = v27;

    v29 = [dateCopy copy];
    date = v22->_date;
    v22->_date = v29;

    v31 = [advCopy copy];
    latestAdvertisement = v22->_latestAdvertisement;
    v22->_latestAdvertisement = v31;

    v33 = [historyCopy copy];
    locationHistory = v22->_locationHistory;
    v22->_locationHistory = v33;

    objc_storeStrong(&v22->_detectionMetrics, metrics);
    v22->_detectionType = type;
    v22->_immediacyType = immediacyType;
    objc_storeStrong(&v22->_accessoryInfo, info);
    v22->_forceSurfaceReason = reason;
LABEL_7:
    v23 = v22;
  }

  return v23;
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
      v5 = equalCopy;
      address = [(TASuspiciousDevice *)self address];
      address2 = [(TASuspiciousDevice *)v5 address];
      v65 = address;
      if (address != address2)
      {
        address3 = [(TASuspiciousDevice *)self address];
        address4 = [(TASuspiciousDevice *)v5 address];
        v63 = address3;
        if (![address3 isEqual:address4])
        {
          v10 = 0;
          goto LABEL_56;
        }

        v60 = address4;
      }

      detectionSummary = [(TASuspiciousDevice *)self detectionSummary];
      detectionSummary2 = [(TASuspiciousDevice *)v5 detectionSummary];
      v64 = detectionSummary;
      if (detectionSummary != detectionSummary2)
      {
        detectionSummary3 = [(TASuspiciousDevice *)self detectionSummary];
        detectionSummary4 = [(TASuspiciousDevice *)v5 detectionSummary];
        if (![detectionSummary3 isEqual:detectionSummary4])
        {
          v10 = 0;
LABEL_54:

LABEL_55:
          address4 = v60;
          if (v65 == address2)
          {
LABEL_57:

            goto LABEL_58;
          }

LABEL_56:

          goto LABEL_57;
        }

        v57 = detectionSummary4;
        v58 = detectionSummary3;
      }

      date = [(TASuspiciousDevice *)self date];
      date2 = [(TASuspiciousDevice *)v5 date];
      v62 = date;
      if (date != date2)
      {
        date3 = [(TASuspiciousDevice *)self date];
        [(TASuspiciousDevice *)v5 date];
        v17 = v55 = date3;
        if (![date3 isEqual:?])
        {
          v10 = 0;
LABEL_52:

LABEL_53:
          detectionSummary4 = v57;
          detectionSummary3 = v58;
          if (v64 == detectionSummary2)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v54 = v17;
      }

      latestAdvertisement = [(TASuspiciousDevice *)self latestAdvertisement];
      latestAdvertisement2 = [(TASuspiciousDevice *)v5 latestAdvertisement];
      v59 = latestAdvertisement;
      if (latestAdvertisement != latestAdvertisement2)
      {
        latestAdvertisement3 = [(TASuspiciousDevice *)self latestAdvertisement];
        [(TASuspiciousDevice *)v5 latestAdvertisement];
        v20 = v52 = latestAdvertisement3;
        if (![latestAdvertisement3 isEqual:?])
        {
          v10 = 0;
          v25 = latestAdvertisement2;
LABEL_50:

LABEL_51:
          v17 = v54;
          if (v62 == date2)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        v51 = v20;
      }

      locationHistory = [(TASuspiciousDevice *)self locationHistory];
      locationHistory2 = [(TASuspiciousDevice *)v5 locationHistory];
      if (locationHistory != locationHistory2)
      {
        v22 = locationHistory;
        locationHistory3 = [(TASuspiciousDevice *)self locationHistory];
        [(TASuspiciousDevice *)v5 locationHistory];
        v24 = v50 = locationHistory3;
        if (![locationHistory3 isEqual:?])
        {
          v10 = 0;
          v32 = locationHistory2;
          locationHistory = v22;
LABEL_48:

LABEL_49:
          v25 = latestAdvertisement2;
          v20 = v51;
          if (v59 == latestAdvertisement2)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        locationHistory = v22;
        v49 = v24;
      }

      detectionMetrics = [(TASuspiciousDevice *)self detectionMetrics];
      detectionMetrics2 = [(TASuspiciousDevice *)v5 detectionMetrics];
      v28 = detectionMetrics2;
      if (detectionMetrics == detectionMetrics2)
      {
        v30 = detectionMetrics2;
        v31 = detectionMetrics;
      }

      else
      {
        detectionMetrics3 = [(TASuspiciousDevice *)self detectionMetrics];
        detectionMetrics4 = [(TASuspiciousDevice *)v5 detectionMetrics];
        if (![detectionMetrics3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_46;
        }

        v47 = detectionMetrics3;
        v30 = v28;
        v31 = detectionMetrics;
      }

      detectionType = [(TASuspiciousDevice *)self detectionType];
      if (detectionType == [(TASuspiciousDevice *)v5 detectionType])
      {
        accessoryInfo = [(TASuspiciousDevice *)self accessoryInfo];
        accessoryInfo2 = [(TASuspiciousDevice *)v5 accessoryInfo];
        v46 = accessoryInfo;
        v36 = accessoryInfo == accessoryInfo2;
        detectionMetrics = v31;
        if (v36)
        {
          v44 = v31;
          v28 = v30;
        }

        else
        {
          accessoryInfo3 = [(TASuspiciousDevice *)self accessoryInfo];
          [(TASuspiciousDevice *)v5 accessoryInfo];
          v45 = v43 = accessoryInfo3;
          v38 = [accessoryInfo3 isEqual:?];
          v28 = v30;
          if (!v38)
          {
            v10 = 0;
            detectionMetrics3 = v47;
            v41 = v45;
            goto LABEL_44;
          }

          v44 = detectionMetrics;
        }

        detectionMetrics3 = v47;
        immediacyType = [(TASuspiciousDevice *)self immediacyType];
        if (immediacyType == [(TASuspiciousDevice *)v5 immediacyType])
        {
          forceSurfaceReason = [(TASuspiciousDevice *)self forceSurfaceReason];
          v10 = forceSurfaceReason == [(TASuspiciousDevice *)v5 forceSurfaceReason];
        }

        else
        {
          v10 = 0;
        }

        detectionMetrics = v44;
        v41 = v45;
        if (v46 == accessoryInfo2)
        {
LABEL_45:

          if (detectionMetrics == v28)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

LABEL_44:

        goto LABEL_45;
      }

      v10 = 0;
      detectionMetrics = v31;
      v28 = v30;
      v36 = detectionMetrics == v30;
      detectionMetrics3 = v47;
      if (v36)
      {
LABEL_47:

        v32 = locationHistory2;
        v24 = v49;
        if (locationHistory == locationHistory2)
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
  hexString = [(NSData *)self->_address hexString];
  detectionSummary = self->_detectionSummary;
  date = self->_date;
  v20[1] = hexString;
  v20[2] = detectionSummary;
  v19[2] = @"Summary";
  v19[3] = @"Date";
  getDateString = [(NSDate *)date getDateString];
  v20[3] = getDateString;
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
  accessoryInfo = [(TASuspiciousDevice *)self accessoryInfo];
  if (accessoryInfo)
  {
    accessoryInfo2 = [(TASuspiciousDevice *)self accessoryInfo];
    descriptionDictionary = [accessoryInfo2 descriptionDictionary];
  }

  else
  {
    descriptionDictionary = &stru_287F632C0;
  }

  v20[7] = descriptionDictionary;
  v19[8] = @"ForceReason";
  v14 = [TASuspiciousDevice convertTAForceSurfaceReasonToString:self->_forceSurfaceReason];
  v20[8] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:9];

  if (accessoryInfo)
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)description
{
  descriptionDictionary = [(TASuspiciousDevice *)self descriptionDictionary];
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

+ (id)convertTANotificationImmediacyTypeToString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return @"Never";
  }

  else
  {
    return off_279DD1888[string - 1];
  }
}

+ (id)convertTAForceSurfaceReasonToString:(unint64_t)string
{
  v3 = @"None";
  if (string == 1)
  {
    v3 = @"ArriveHome";
  }

  if (string == 2)
  {
    return @"BeepOnMove";
  }

  else
  {
    return v3;
  }
}

- (TASuspiciousDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastAdvertisement"];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Summary"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"LocationHistory"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Metrics"];
  v16 = [coderCopy decodeInt32ForKey:@"Type"];
  v17 = [coderCopy decodeIntegerForKey:@"Immediacy"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AISInfo"];
  v19 = [coderCopy decodeIntegerForKey:@"ForceReason"];

  v20 = [(TASuspiciousDevice *)self initWithLatestAdv:v4 detectionSummary:v9 date:v10 locHistory:v14 detectionMetrics:v15 detectionType:v16 immediacyType:v17 accessoryInfo:v18 forceSurfaceReason:v19];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  latestAdvertisement = [(TASuspiciousDevice *)self latestAdvertisement];
  [coderCopy encodeObject:latestAdvertisement forKey:@"LastAdvertisement"];

  detectionSummary = [(TASuspiciousDevice *)self detectionSummary];
  [coderCopy encodeObject:detectionSummary forKey:@"Summary"];

  date = [(TASuspiciousDevice *)self date];
  [coderCopy encodeObject:date forKey:@"Date"];

  locationHistory = [(TASuspiciousDevice *)self locationHistory];
  [coderCopy encodeObject:locationHistory forKey:@"LocationHistory"];

  detectionMetrics = [(TASuspiciousDevice *)self detectionMetrics];
  [coderCopy encodeObject:detectionMetrics forKey:@"Metrics"];

  [coderCopy encodeInt32:-[TASuspiciousDevice detectionType](self forKey:{"detectionType"), @"Type"}];
  [coderCopy encodeInteger:-[TASuspiciousDevice immediacyType](self forKey:{"immediacyType"), @"Immediacy"}];
  accessoryInfo = [(TASuspiciousDevice *)self accessoryInfo];
  [coderCopy encodeObject:accessoryInfo forKey:@"AISInfo"];

  [coderCopy encodeInteger:-[TASuspiciousDevice forceSurfaceReason](self forKey:{"forceSurfaceReason"), @"ForceReason"}];
}

@end