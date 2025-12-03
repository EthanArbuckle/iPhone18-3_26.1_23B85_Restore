@interface TALocationLite
+ ($1AB5FA073B851C12C2339EC22442E995)estimateSpeedFrom:(id)from to:(id)to;
+ (BOOL)distanceFromLocation:(id)location toLocation:(id)toLocation satisfyNSigma:(unint64_t)sigma satisfyMinDistance:(double)distance;
+ (double)residualDistanceFromLocation:(id)location toLocation:(id)toLocation nSigma:(unint64_t)sigma;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TALocationLite)initWithCoder:(id)coder;
- (TALocationLite)initWithTimestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy altitude:(double)altitude verticalAccuracy:(double)verticalAccuracy speed:(double)speed speedAccuracy:(double)self0 course:(double)self1 courseAccuracy:(double)self2 deltaDistance:(double)self3 deltaDistanceAccuracy:(double)self4 groundAltitude:(double)self5 groundAltitudeUncertainty:(double)self6 pressure:(double)self7 pressureUncertainty:(double)self8 isSimulatedOrSpoofed:(BOOL)self9;
- (double)distanceFromLocation:(id)location;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TALocationLite

- (NSString)description
{
  descriptionDictionary = [(TALocationLite *)self descriptionDictionary];
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

- (id)descriptionDictionary
{
  v42[18] = *MEMORY[0x277D85DE8];
  v41[0] = @"EventType";
  v3 = objc_opt_class();
  v40 = NSStringFromClass(v3);
  v42[0] = v40;
  v41[1] = @"Latitude";
  v4 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self latitude];
  v39 = [v4 numberWithDouble:?];
  v42[1] = v39;
  v41[2] = @"Longitude";
  v5 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self longitude];
  v38 = [v5 numberWithDouble:?];
  v42[2] = v38;
  v41[3] = @"HorizontalAccuracy";
  v6 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self horizontalAccuracy];
  v37 = [v6 numberWithDouble:?];
  v42[3] = v37;
  v41[4] = @"Altitude";
  v7 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self altitude];
  v36 = [v7 numberWithDouble:?];
  v42[4] = v36;
  v41[5] = @"VerticalAccuracy";
  v8 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self verticalAccuracy];
  v35 = [v8 numberWithDouble:?];
  v42[5] = v35;
  v41[6] = @"Speed";
  v9 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self speed];
  v34 = [v9 numberWithDouble:?];
  v42[6] = v34;
  v41[7] = @"SpeedAccuracy";
  v10 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self speedAccuracy];
  v33 = [v10 numberWithDouble:?];
  v42[7] = v33;
  v41[8] = @"Course";
  v11 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self course];
  v32 = [v11 numberWithDouble:?];
  v42[8] = v32;
  v41[9] = @"CourseAccuracy";
  v12 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self courseAccuracy];
  v31 = [v12 numberWithDouble:?];
  v42[9] = v31;
  v41[10] = @"DeltaDistance";
  v13 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self deltaDistance];
  v14 = [v13 numberWithDouble:?];
  v42[10] = v14;
  v41[11] = @"DeltaDistanceAccuracy";
  v15 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self deltaDistanceAccuracy];
  v16 = [v15 numberWithDouble:?];
  v42[11] = v16;
  v41[12] = @"GroundAltitude";
  v17 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self groundAltitude];
  v18 = [v17 numberWithDouble:?];
  v42[12] = v18;
  v41[13] = @"GroundAltitudeUncertainty";
  v19 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self groundAltitudeUncertainty];
  v20 = [v19 numberWithDouble:?];
  v42[13] = v20;
  v41[14] = @"Pressure";
  v21 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self pressure];
  v22 = [v21 numberWithDouble:?];
  v42[14] = v22;
  v41[15] = @"PressureUncertainty";
  v23 = MEMORY[0x277CCABB0];
  [(TALocationLite *)self pressureUncertainty];
  v24 = [v23 numberWithDouble:?];
  v42[15] = v24;
  v41[16] = @"IsSimulated";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[TALocationLite isSimulatedOrSpoofed](self, "isSimulatedOrSpoofed")}];
  v42[16] = v25;
  v41[17] = @"Date";
  timestamp = [(TALocationLite *)self timestamp];
  getDateString = [timestamp getDateString];
  v42[17] = getDateString;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:18];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (TALocationLite)initWithTimestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy altitude:(double)altitude verticalAccuracy:(double)verticalAccuracy speed:(double)speed speedAccuracy:(double)self0 course:(double)self1 courseAccuracy:(double)self2 deltaDistance:(double)self3 deltaDistanceAccuracy:(double)self4 groundAltitude:(double)self5 groundAltitudeUncertainty:(double)self6 pressure:(double)self7 pressureUncertainty:(double)self8 isSimulatedOrSpoofed:(BOOL)self9
{
  timestampCopy = timestamp;
  v35.receiver = self;
  v35.super_class = TALocationLite;
  v30 = [(TALocationLite *)&v35 init];
  if (v30)
  {
    if (!timestampCopy)
    {
      v33 = 0;
      goto LABEL_6;
    }

    v31 = [timestampCopy copy];
    timestamp = v30->_timestamp;
    v30->_timestamp = v31;

    v30->_latitude = latitude;
    v30->_longitude = longitude;
    v30->_horizontalAccuracy = accuracy;
    v30->_altitude = altitude;
    v30->_verticalAccuracy = verticalAccuracy;
    v30->_speed = speed;
    v30->_speedAccuracy = speedAccuracy;
    v30->_course = course;
    v30->_courseAccuracy = courseAccuracy;
    v30->_deltaDistance = distance;
    v30->_deltaDistanceAccuracy = distanceAccuracy;
    v30->_groundAltitude = groundAltitude;
    v30->_groundAltitudeUncertainty = uncertainty;
    v30->_pressure = pressure;
    v30->_pressureUncertainty = pressureUncertainty;
    v30->_isSimulatedOrSpoofed = spoofed;
  }

  v33 = v30;
LABEL_6:

  return v33;
}

- (double)distanceFromLocation:(id)location
{
  v4 = MEMORY[0x277CE41F8];
  locationCopy = location;
  v6 = [v4 alloc];
  v7 = CLLocationCoordinate2DMake(self->_latitude, self->_longitude);
  v8 = [v6 initWithCoordinate:self->_timestamp altitude:v7.latitude horizontalAccuracy:v7.longitude verticalAccuracy:self->_altitude timestamp:{self->_horizontalAccuracy, self->_verticalAccuracy}];
  v9 = objc_alloc(MEMORY[0x277CE41F8]);
  [locationCopy latitude];
  v11 = v10;
  [locationCopy longitude];
  v13 = CLLocationCoordinate2DMake(v11, v12);
  [locationCopy altitude];
  v15 = v14;
  [locationCopy horizontalAccuracy];
  v17 = v16;
  [locationCopy verticalAccuracy];
  v19 = v18;
  timestamp = [locationCopy timestamp];

  v21 = [v9 initWithCoordinate:timestamp altitude:v13.latitude horizontalAccuracy:v13.longitude verticalAccuracy:v15 timestamp:{v17, v19}];
  [v8 distanceFromLocation:v21];
  v23 = v22;

  return v23;
}

+ (BOOL)distanceFromLocation:(id)location toLocation:(id)toLocation satisfyNSigma:(unint64_t)sigma satisfyMinDistance:(double)distance
{
  locationCopy = location;
  toLocationCopy = toLocation;
  v11 = toLocationCopy;
  v12 = 0;
  if (locationCopy && toLocationCopy)
  {
    [locationCopy horizontalAccuracy];
    if (v13 >= 0.0 && ([v11 horizontalAccuracy], v14 >= 0.0))
    {
      [locationCopy distanceFromLocation:v11];
      v16 = v15;
      [TALocationLite residualDistanceFromLocation:locationCopy toLocation:v11 nSigma:sigma];
      v12 = v16 >= distance && v17 > 0.0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (double)residualDistanceFromLocation:(id)location toLocation:(id)toLocation nSigma:(unint64_t)sigma
{
  locationCopy = location;
  toLocationCopy = toLocation;
  v9 = toLocationCopy;
  v10 = 0.0;
  if (locationCopy)
  {
    if (toLocationCopy)
    {
      [locationCopy horizontalAccuracy];
      if (v11 >= 0.0)
      {
        [v9 horizontalAccuracy];
        if (v12 >= 0.0)
        {
          [locationCopy distanceFromLocation:v9];
          v14 = v13;
          [locationCopy horizontalAccuracy];
          v16 = v14 - sigma * v15;
          [v9 horizontalAccuracy];
          v10 = v16 - sigma * v17;
        }
      }
    }
  }

  return v10;
}

+ ($1AB5FA073B851C12C2339EC22442E995)estimateSpeedFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v7 = toCopy;
  v8 = -1.0;
  if (!fromCopy)
  {
    goto LABEL_9;
  }

  if (!toCopy)
  {
    goto LABEL_9;
  }

  getDate = [fromCopy getDate];
  if (!getDate)
  {
    goto LABEL_9;
  }

  v10 = getDate;
  getDate2 = [v7 getDate];
  if (!getDate2)
  {
LABEL_8:

LABEL_9:
    v16 = -1.0;
    v17 = -1.0;
    goto LABEL_10;
  }

  v12 = getDate2;
  getDate3 = [fromCopy getDate];
  getDate4 = [v7 getDate];
  if ([getDate3 compare:getDate4] == 1 || (objc_msgSend(fromCopy, "horizontalAccuracy"), v15 < 0.0))
  {

    goto LABEL_8;
  }

  [v7 horizontalAccuracy];
  v22 = v21;

  v16 = -1.0;
  v17 = -1.0;
  if (v22 >= 0.0)
  {
    getDate5 = [v7 getDate];
    getDate6 = [fromCopy getDate];
    [getDate5 timeIntervalSinceDate:getDate6];
    v26 = v25;

    v8 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    if (v26 != 0.0)
    {
      [v7 distanceFromLocation:fromCopy];
      v28 = v27;
      [fromCopy horizontalAccuracy];
      v30 = v28 - v29;
      [v7 horizontalAccuracy];
      v32 = v30 - v31;
      [fromCopy horizontalAccuracy];
      v34 = v28 + v33;
      [v7 horizontalAccuracy];
      v36 = v34 + v35;
      if (v32 >= 0.0)
      {
        v8 = v32 / v26;
      }

      else
      {
        v8 = 0.0;
      }

      v16 = v36 / v26;
      v17 = v28 / v26;
    }
  }

LABEL_10:

  v18 = v8;
  v19 = v16;
  v20 = v17;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TALocationLite alloc];
  timestamp = [(TALocationLite *)self timestamp];
  [(TALocationLite *)self latitude];
  v36 = v6;
  [(TALocationLite *)self longitude];
  v35 = v7;
  [(TALocationLite *)self horizontalAccuracy];
  v34 = v8;
  [(TALocationLite *)self altitude];
  v33 = v9;
  [(TALocationLite *)self verticalAccuracy];
  v32 = v10;
  [(TALocationLite *)self speed];
  v31 = v11;
  [(TALocationLite *)self speedAccuracy];
  v30 = v12;
  [(TALocationLite *)self course];
  v14 = v13;
  [(TALocationLite *)self courseAccuracy];
  v16 = v15;
  [(TALocationLite *)self deltaDistance];
  v18 = v17;
  [(TALocationLite *)self deltaDistanceAccuracy];
  v20 = v19;
  [(TALocationLite *)self groundAltitude];
  v22 = v21;
  [(TALocationLite *)self groundAltitudeUncertainty];
  v24 = v23;
  [(TALocationLite *)self pressure];
  v26 = v25;
  [(TALocationLite *)self pressureUncertainty];
  v28 = [(TALocationLite *)v4 initWithTimestamp:timestamp latitude:[(TALocationLite *)self isSimulatedOrSpoofed] longitude:v36 horizontalAccuracy:v35 altitude:v34 verticalAccuracy:v33 speed:v32 speedAccuracy:v31 course:v30 courseAccuracy:v14 deltaDistance:v16 deltaDistanceAccuracy:v18 groundAltitude:v20 groundAltitudeUncertainty:v22 pressure:v24 pressureUncertainty:v26 isSimulatedOrSpoofed:v27];

  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"Date"];
  [coderCopy encodeDouble:@"Latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"Longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"HorizontalAccuracy" forKey:self->_horizontalAccuracy];
  [coderCopy encodeDouble:@"Altitude" forKey:self->_altitude];
  [coderCopy encodeDouble:@"VerticalAccuracy" forKey:self->_verticalAccuracy];
  [coderCopy encodeDouble:@"Speed" forKey:self->_speed];
  [coderCopy encodeDouble:@"SpeedAccuracy" forKey:self->_speedAccuracy];
  [coderCopy encodeDouble:@"Course" forKey:self->_course];
  [coderCopy encodeDouble:@"CourseAccuracy" forKey:self->_courseAccuracy];
  [coderCopy encodeDouble:@"DeltaDistance" forKey:self->_deltaDistance];
  [coderCopy encodeDouble:@"DeltaDistanceAccuracy" forKey:self->_deltaDistanceAccuracy];
  [coderCopy encodeDouble:@"GroundAltitude" forKey:self->_groundAltitude];
  [coderCopy encodeDouble:@"GroundAltitudeUncertainty" forKey:self->_groundAltitudeUncertainty];
  [coderCopy encodeDouble:@"Pressure" forKey:self->_pressure];
  [coderCopy encodeDouble:@"PressureUncertainty" forKey:self->_pressureUncertainty];
  [coderCopy encodeBool:self->_isSimulatedOrSpoofed forKey:@"IsSimulated"];
}

- (TALocationLite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  [coderCopy decodeDoubleForKey:@"Latitude"];
  v38 = v6;
  [coderCopy decodeDoubleForKey:@"Longitude"];
  v37 = v7;
  [coderCopy decodeDoubleForKey:@"HorizontalAccuracy"];
  v36 = v8;
  [coderCopy decodeDoubleForKey:@"Altitude"];
  v35 = v9;
  [coderCopy decodeDoubleForKey:@"VerticalAccuracy"];
  v34 = v10;
  [coderCopy decodeDoubleForKey:@"Speed"];
  v33 = v11;
  [coderCopy decodeDoubleForKey:@"SpeedAccuracy"];
  v32 = v12;
  [coderCopy decodeDoubleForKey:@"Course"];
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"CourseAccuracy"];
  v16 = v15;
  [coderCopy decodeDoubleForKey:@"DeltaDistance"];
  v18 = v17;
  [coderCopy decodeDoubleForKey:@"DeltaDistanceAccuracy"];
  v20 = v19;
  [coderCopy decodeDoubleForKey:@"GroundAltitude"];
  v22 = v21;
  [coderCopy decodeDoubleForKey:@"GroundAltitudeUncertainty"];
  v24 = v23;
  [coderCopy decodeDoubleForKey:@"Pressure"];
  v26 = v25;
  [coderCopy decodeDoubleForKey:@"PressureUncertainty"];
  v28 = v27;
  v29 = [coderCopy decodeBoolForKey:@"IsSimulated"];

  v30 = [(TALocationLite *)self initWithTimestamp:v5 latitude:v29 longitude:v38 horizontalAccuracy:v37 altitude:v36 verticalAccuracy:v35 speed:v34 speedAccuracy:v33 course:v32 courseAccuracy:v14 deltaDistance:v16 deltaDistanceAccuracy:v18 groundAltitude:v20 groundAltitudeUncertainty:v22 pressure:v24 pressureUncertainty:v26 isSimulatedOrSpoofed:v28];
  return v30;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_timestamp hash];
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
  v4 = [v36 hash] ^ v3;
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  v5 = [v35 hash];
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:self->_horizontalAccuracy];
  v6 = v4 ^ v5 ^ [v34 hash];
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_altitude];
  v7 = [v33 hash];
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:self->_verticalAccuracy];
  v8 = v7 ^ [v32 hash];
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:self->_speed];
  v9 = v6 ^ v8 ^ [v31 hash];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_speedAccuracy];
  v10 = [v30 hash];
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:self->_course];
  v11 = v10 ^ [v29 hash];
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:self->_courseAccuracy];
  v12 = v11 ^ [v28 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_deltaDistance];
  v14 = v9 ^ v12 ^ [v13 hash];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_deltaDistanceAccuracy];
  v16 = [v15 hash];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_groundAltitude];
  v18 = v16 ^ [v17 hash];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_groundAltitudeUncertainty];
  v20 = v18 ^ [v19 hash];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pressure];
  v22 = v20 ^ [v21 hash];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pressureUncertainty];
  v24 = v14 ^ v22 ^ [v23 hash];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSimulatedOrSpoofed];
  v26 = [v25 hash];

  return v24 ^ v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(TALocationLite *)self distanceFromLocation:v5];
      if (v6 == 0.0)
      {
        timestamp = self->_timestamp;
        timestamp = [(TALocationLite *)v5 timestamp];
        v9 = [(NSDate *)timestamp isEqual:timestamp];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
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