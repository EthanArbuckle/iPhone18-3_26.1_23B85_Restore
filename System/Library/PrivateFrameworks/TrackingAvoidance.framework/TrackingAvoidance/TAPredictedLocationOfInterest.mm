@interface TAPredictedLocationOfInterest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TAPredictedLocationOfInterest)initWithCoder:(id)coder;
- (TAPredictedLocationOfInterest)initWithType:(unint64_t)type latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy referenceFrame:(unint64_t)frame confidence:(double)confidence nextEntryTime:(id)time date:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TAPredictedLocationOfInterest

- (TAPredictedLocationOfInterest)initWithType:(unint64_t)type latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy referenceFrame:(unint64_t)frame confidence:(double)confidence nextEntryTime:(id)time date:(id)self0
{
  timeCopy = time;
  dateCopy = date;
  v28.receiver = self;
  v28.super_class = TAPredictedLocationOfInterest;
  v20 = [(TAPredictedLocationOfInterest *)&v28 init];
  v21 = v20;
  if (v20)
  {
    if (!dateCopy)
    {
      v26 = 0;
      goto LABEL_6;
    }

    v20->_type = type;
    v20->_latitude = latitude;
    v20->_longitude = longitude;
    v20->_horizontalAccuracy = accuracy;
    v20->_referenceFrame = frame;
    v20->_confidence = confidence;
    v22 = [timeCopy copy];
    nextEntryTime = v21->_nextEntryTime;
    v21->_nextEntryTime = v22;

    v24 = [dateCopy copy];
    date = v21->_date;
    v21->_date = v24;
  }

  v26 = v21;
LABEL_6:

  return v26;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
  v5 = [v4 hash] ^ type;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  v7 = [v6 hash];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_horizontalAccuracy];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v11 = [v10 hash];
  v12 = v11 ^ [(NSDate *)self->_date hash];

  return v9 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      type = [(TAPredictedLocationOfInterest *)self type];
      if (type != [(TAPredictedLocationOfInterest *)v6 type])
      {
        goto LABEL_14;
      }

      [(TAPredictedLocationOfInterest *)self latitude];
      v9 = v8;
      [(TAPredictedLocationOfInterest *)v6 latitude];
      if (v9 != v10)
      {
        goto LABEL_14;
      }

      [(TAPredictedLocationOfInterest *)self longitude];
      v12 = v11;
      [(TAPredictedLocationOfInterest *)v6 longitude];
      if (v12 != v13 || ([(TAPredictedLocationOfInterest *)self horizontalAccuracy], v15 = v14, [(TAPredictedLocationOfInterest *)v6 horizontalAccuracy], v15 != v16) || (v17 = [(TAPredictedLocationOfInterest *)self referenceFrame], v17 != [(TAPredictedLocationOfInterest *)v6 referenceFrame]) || ([(TAPredictedLocationOfInterest *)self confidence], v19 = v18, [(TAPredictedLocationOfInterest *)v6 confidence], v19 != v20))
      {
LABEL_14:
        v24 = 0;
LABEL_15:

        goto LABEL_16;
      }

      nextEntryTime = [(TAPredictedLocationOfInterest *)self nextEntryTime];
      nextEntryTime2 = [(TAPredictedLocationOfInterest *)v6 nextEntryTime];
      if (nextEntryTime != nextEntryTime2)
      {
        nextEntryTime3 = [(TAPredictedLocationOfInterest *)self nextEntryTime];
        nextEntryTime4 = [(TAPredictedLocationOfInterest *)v6 nextEntryTime];
        if (![nextEntryTime3 isEqual:nextEntryTime4])
        {
          v24 = 0;
LABEL_22:

LABEL_23:
          goto LABEL_15;
        }

        v31 = nextEntryTime3;
      }

      date = [(TAPredictedLocationOfInterest *)self date];
      date2 = [(TAPredictedLocationOfInterest *)v6 date];
      v28 = date2;
      if (date == date2)
      {

        v24 = 1;
      }

      else
      {
        date3 = [(TAPredictedLocationOfInterest *)self date];
        date4 = [(TAPredictedLocationOfInterest *)v6 date];
        v24 = [date3 isEqual:date4];
      }

      nextEntryTime3 = v31;
      if (nextEntryTime == nextEntryTime2)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v24 = 0;
  }

LABEL_16:

  return v24;
}

- (id)descriptionDictionary
{
  v20[9] = *MEMORY[0x277D85DE8];
  v19[0] = @"EventType";
  v4 = objc_opt_class();
  v18 = NSStringFromClass(v4);
  v20[0] = v18;
  v19[1] = @"Type";
  v17 = TALocationOfInterestTypeToString(self->_type);
  v20[1] = v17;
  v19[2] = @"Latitude";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
  v20[2] = v16;
  v19[3] = @"Longitude";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  v20[3] = v5;
  v19[4] = @"HorizontalAccuracy";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_horizontalAccuracy];
  v20[4] = v6;
  v19[5] = @"ReferenceFrame";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_referenceFrame];
  v20[5] = v7;
  v19[6] = @"Confidence";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v20[6] = v8;
  v19[7] = @"NextEntryTime";
  nextEntryTime = [(TAPredictedLocationOfInterest *)self nextEntryTime];
  if (nextEntryTime)
  {
    nextEntryTime2 = [(TAPredictedLocationOfInterest *)self nextEntryTime];
    getDateString = [nextEntryTime2 getDateString];
  }

  else
  {
    getDateString = &stru_287F632C0;
  }

  v20[7] = getDateString;
  v19[8] = @"Date";
  date = [(TAPredictedLocationOfInterest *)self date];
  getDateString2 = [date getDateString];
  v20[8] = getDateString2;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:9];

  if (nextEntryTime)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  descriptionDictionary = [(TAPredictedLocationOfInterest *)self descriptionDictionary];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TAPredictedLocationOfInterest alloc];
  type = self->_type;
  latitude = self->_latitude;
  longitude = self->_longitude;
  horizontalAccuracy = self->_horizontalAccuracy;
  confidence = self->_confidence;
  nextEntryTime = self->_nextEntryTime;
  date = self->_date;

  return [(TAPredictedLocationOfInterest *)v4 initWithType:type latitude:nextEntryTime longitude:date horizontalAccuracy:latitude confidence:longitude nextEntryTime:horizontalAccuracy date:confidence];
}

- (TAPredictedLocationOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"Type"];
  [coderCopy decodeDoubleForKey:@"Latitude"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"Longitude"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"HorizontalAccuracy"];
  v11 = v10;
  v12 = [coderCopy decodeIntegerForKey:@"ReferenceFrame"];
  [coderCopy decodeDoubleForKey:@"Confidence"];
  v14 = v13;
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NextEntryTime"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v17 = [(TAPredictedLocationOfInterest *)self initWithType:v5 latitude:v12 longitude:v15 horizontalAccuracy:v16 referenceFrame:v7 confidence:v9 nextEntryTime:v11 date:v14];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"Type"];
  [coderCopy encodeDouble:@"Latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"Longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"HorizontalAccuracy" forKey:self->_horizontalAccuracy];
  [coderCopy encodeInteger:self->_referenceFrame forKey:@"ReferenceFrame"];
  [coderCopy encodeDouble:@"Confidence" forKey:self->_confidence];
  [coderCopy encodeObject:self->_nextEntryTime forKey:@"NextEntryTime"];
  [coderCopy encodeObject:self->_date forKey:@"Date"];
}

- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [coderCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

@end