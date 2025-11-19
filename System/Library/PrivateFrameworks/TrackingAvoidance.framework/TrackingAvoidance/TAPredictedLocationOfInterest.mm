@interface TAPredictedLocationOfInterest
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TAPredictedLocationOfInterest)initWithCoder:(id)a3;
- (TAPredictedLocationOfInterest)initWithType:(unint64_t)a3 latitude:(double)a4 longitude:(double)a5 horizontalAccuracy:(double)a6 referenceFrame:(unint64_t)a7 confidence:(double)a8 nextEntryTime:(id)a9 date:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TAPredictedLocationOfInterest

- (TAPredictedLocationOfInterest)initWithType:(unint64_t)a3 latitude:(double)a4 longitude:(double)a5 horizontalAccuracy:(double)a6 referenceFrame:(unint64_t)a7 confidence:(double)a8 nextEntryTime:(id)a9 date:(id)a10
{
  v18 = a9;
  v19 = a10;
  v28.receiver = self;
  v28.super_class = TAPredictedLocationOfInterest;
  v20 = [(TAPredictedLocationOfInterest *)&v28 init];
  v21 = v20;
  if (v20)
  {
    if (!v19)
    {
      v26 = 0;
      goto LABEL_6;
    }

    v20->_type = a3;
    v20->_latitude = a4;
    v20->_longitude = a5;
    v20->_horizontalAccuracy = a6;
    v20->_referenceFrame = a7;
    v20->_confidence = a8;
    v22 = [v18 copy];
    nextEntryTime = v21->_nextEntryTime;
    v21->_nextEntryTime = v22;

    v24 = [v19 copy];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(TAPredictedLocationOfInterest *)self type];
      if (v7 != [(TAPredictedLocationOfInterest *)v6 type])
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

      v21 = [(TAPredictedLocationOfInterest *)self nextEntryTime];
      v22 = [(TAPredictedLocationOfInterest *)v6 nextEntryTime];
      if (v21 != v22)
      {
        v23 = [(TAPredictedLocationOfInterest *)self nextEntryTime];
        v3 = [(TAPredictedLocationOfInterest *)v6 nextEntryTime];
        if (![v23 isEqual:v3])
        {
          v24 = 0;
LABEL_22:

LABEL_23:
          goto LABEL_15;
        }

        v31 = v23;
      }

      v26 = [(TAPredictedLocationOfInterest *)self date];
      v27 = [(TAPredictedLocationOfInterest *)v6 date];
      v28 = v27;
      if (v26 == v27)
      {

        v24 = 1;
      }

      else
      {
        v29 = [(TAPredictedLocationOfInterest *)self date];
        v30 = [(TAPredictedLocationOfInterest *)v6 date];
        v24 = [v29 isEqual:v30];
      }

      v23 = v31;
      if (v21 == v22)
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
  v9 = [(TAPredictedLocationOfInterest *)self nextEntryTime];
  if (v9)
  {
    v2 = [(TAPredictedLocationOfInterest *)self nextEntryTime];
    v10 = [v2 getDateString];
  }

  else
  {
    v10 = &stru_287F632C0;
  }

  v20[7] = v10;
  v19[8] = @"Date";
  v11 = [(TAPredictedLocationOfInterest *)self date];
  v12 = [v11 getDateString];
  v20[8] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:9];

  if (v9)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  v3 = [(TAPredictedLocationOfInterest *)self descriptionDictionary];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (TAPredictedLocationOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"Type"];
  [v4 decodeDoubleForKey:@"Latitude"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"Longitude"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"HorizontalAccuracy"];
  v11 = v10;
  v12 = [v4 decodeIntegerForKey:@"ReferenceFrame"];
  [v4 decodeDoubleForKey:@"Confidence"];
  v14 = v13;
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NextEntryTime"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v17 = [(TAPredictedLocationOfInterest *)self initWithType:v5 latitude:v12 longitude:v15 horizontalAccuracy:v16 referenceFrame:v7 confidence:v9 nextEntryTime:v11 date:v14];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"Type"];
  [v5 encodeDouble:@"Latitude" forKey:self->_latitude];
  [v5 encodeDouble:@"Longitude" forKey:self->_longitude];
  [v5 encodeDouble:@"HorizontalAccuracy" forKey:self->_horizontalAccuracy];
  [v5 encodeInteger:self->_referenceFrame forKey:@"ReferenceFrame"];
  [v5 encodeDouble:@"Confidence" forKey:self->_confidence];
  [v5 encodeObject:self->_nextEntryTime forKey:@"NextEntryTime"];
  [v5 encodeObject:self->_date forKey:@"Date"];
}

- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5
{
  v8 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v8 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

@end