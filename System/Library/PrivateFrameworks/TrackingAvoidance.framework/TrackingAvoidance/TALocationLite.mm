@interface TALocationLite
+ ($1AB5FA073B851C12C2339EC22442E995)estimateSpeedFrom:(id)a3 to:(id)a4;
+ (BOOL)distanceFromLocation:(id)a3 toLocation:(id)a4 satisfyNSigma:(unint64_t)a5 satisfyMinDistance:(double)a6;
+ (double)residualDistanceFromLocation:(id)a3 toLocation:(id)a4 nSigma:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TALocationLite)initWithCoder:(id)a3;
- (TALocationLite)initWithTimestamp:(id)a3 latitude:(double)a4 longitude:(double)a5 horizontalAccuracy:(double)a6 altitude:(double)a7 verticalAccuracy:(double)a8 speed:(double)a9 speedAccuracy:(double)a10 course:(double)a11 courseAccuracy:(double)a12 deltaDistance:(double)a13 deltaDistanceAccuracy:(double)a14 groundAltitude:(double)a15 groundAltitudeUncertainty:(double)a16 pressure:(double)a17 pressureUncertainty:(double)a18 isSimulatedOrSpoofed:(BOOL)a19;
- (double)distanceFromLocation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TALocationLite

- (NSString)description
{
  v3 = [(TALocationLite *)self descriptionDictionary];
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
  v26 = [(TALocationLite *)self timestamp];
  v27 = [v26 getDateString];
  v42[17] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:18];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (TALocationLite)initWithTimestamp:(id)a3 latitude:(double)a4 longitude:(double)a5 horizontalAccuracy:(double)a6 altitude:(double)a7 verticalAccuracy:(double)a8 speed:(double)a9 speedAccuracy:(double)a10 course:(double)a11 courseAccuracy:(double)a12 deltaDistance:(double)a13 deltaDistanceAccuracy:(double)a14 groundAltitude:(double)a15 groundAltitudeUncertainty:(double)a16 pressure:(double)a17 pressureUncertainty:(double)a18 isSimulatedOrSpoofed:(BOOL)a19
{
  v29 = a3;
  v35.receiver = self;
  v35.super_class = TALocationLite;
  v30 = [(TALocationLite *)&v35 init];
  if (v30)
  {
    if (!v29)
    {
      v33 = 0;
      goto LABEL_6;
    }

    v31 = [v29 copy];
    timestamp = v30->_timestamp;
    v30->_timestamp = v31;

    v30->_latitude = a4;
    v30->_longitude = a5;
    v30->_horizontalAccuracy = a6;
    v30->_altitude = a7;
    v30->_verticalAccuracy = a8;
    v30->_speed = a9;
    v30->_speedAccuracy = a10;
    v30->_course = a11;
    v30->_courseAccuracy = a12;
    v30->_deltaDistance = a13;
    v30->_deltaDistanceAccuracy = a14;
    v30->_groundAltitude = a15;
    v30->_groundAltitudeUncertainty = a16;
    v30->_pressure = a17;
    v30->_pressureUncertainty = a18;
    v30->_isSimulatedOrSpoofed = a19;
  }

  v33 = v30;
LABEL_6:

  return v33;
}

- (double)distanceFromLocation:(id)a3
{
  v4 = MEMORY[0x277CE41F8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = CLLocationCoordinate2DMake(self->_latitude, self->_longitude);
  v8 = [v6 initWithCoordinate:self->_timestamp altitude:v7.latitude horizontalAccuracy:v7.longitude verticalAccuracy:self->_altitude timestamp:{self->_horizontalAccuracy, self->_verticalAccuracy}];
  v9 = objc_alloc(MEMORY[0x277CE41F8]);
  [v5 latitude];
  v11 = v10;
  [v5 longitude];
  v13 = CLLocationCoordinate2DMake(v11, v12);
  [v5 altitude];
  v15 = v14;
  [v5 horizontalAccuracy];
  v17 = v16;
  [v5 verticalAccuracy];
  v19 = v18;
  v20 = [v5 timestamp];

  v21 = [v9 initWithCoordinate:v20 altitude:v13.latitude horizontalAccuracy:v13.longitude verticalAccuracy:v15 timestamp:{v17, v19}];
  [v8 distanceFromLocation:v21];
  v23 = v22;

  return v23;
}

+ (BOOL)distanceFromLocation:(id)a3 toLocation:(id)a4 satisfyNSigma:(unint64_t)a5 satisfyMinDistance:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    [v9 horizontalAccuracy];
    if (v13 >= 0.0 && ([v11 horizontalAccuracy], v14 >= 0.0))
    {
      [v9 distanceFromLocation:v11];
      v16 = v15;
      [TALocationLite residualDistanceFromLocation:v9 toLocation:v11 nSigma:a5];
      v12 = v16 >= a6 && v17 > 0.0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (double)residualDistanceFromLocation:(id)a3 toLocation:(id)a4 nSigma:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0.0;
  if (v7)
  {
    if (v8)
    {
      [v7 horizontalAccuracy];
      if (v11 >= 0.0)
      {
        [v9 horizontalAccuracy];
        if (v12 >= 0.0)
        {
          [v7 distanceFromLocation:v9];
          v14 = v13;
          [v7 horizontalAccuracy];
          v16 = v14 - a5 * v15;
          [v9 horizontalAccuracy];
          v10 = v16 - a5 * v17;
        }
      }
    }
  }

  return v10;
}

+ ($1AB5FA073B851C12C2339EC22442E995)estimateSpeedFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = -1.0;
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = [v5 getDate];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v7 getDate];
  if (!v11)
  {
LABEL_8:

LABEL_9:
    v16 = -1.0;
    v17 = -1.0;
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v5 getDate];
  v14 = [v7 getDate];
  if ([v13 compare:v14] == 1 || (objc_msgSend(v5, "horizontalAccuracy"), v15 < 0.0))
  {

    goto LABEL_8;
  }

  [v7 horizontalAccuracy];
  v22 = v21;

  v16 = -1.0;
  v17 = -1.0;
  if (v22 >= 0.0)
  {
    v23 = [v7 getDate];
    v24 = [v5 getDate];
    [v23 timeIntervalSinceDate:v24];
    v26 = v25;

    v8 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    if (v26 != 0.0)
    {
      [v7 distanceFromLocation:v5];
      v28 = v27;
      [v5 horizontalAccuracy];
      v30 = v28 - v29;
      [v7 horizontalAccuracy];
      v32 = v30 - v31;
      [v5 horizontalAccuracy];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TALocationLite alloc];
  v5 = [(TALocationLite *)self timestamp];
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
  v28 = [(TALocationLite *)v4 initWithTimestamp:v5 latitude:[(TALocationLite *)self isSimulatedOrSpoofed] longitude:v36 horizontalAccuracy:v35 altitude:v34 verticalAccuracy:v33 speed:v32 speedAccuracy:v31 course:v30 courseAccuracy:v14 deltaDistance:v16 deltaDistanceAccuracy:v18 groundAltitude:v20 groundAltitudeUncertainty:v22 pressure:v24 pressureUncertainty:v26 isSimulatedOrSpoofed:v27];

  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"Date"];
  [v5 encodeDouble:@"Latitude" forKey:self->_latitude];
  [v5 encodeDouble:@"Longitude" forKey:self->_longitude];
  [v5 encodeDouble:@"HorizontalAccuracy" forKey:self->_horizontalAccuracy];
  [v5 encodeDouble:@"Altitude" forKey:self->_altitude];
  [v5 encodeDouble:@"VerticalAccuracy" forKey:self->_verticalAccuracy];
  [v5 encodeDouble:@"Speed" forKey:self->_speed];
  [v5 encodeDouble:@"SpeedAccuracy" forKey:self->_speedAccuracy];
  [v5 encodeDouble:@"Course" forKey:self->_course];
  [v5 encodeDouble:@"CourseAccuracy" forKey:self->_courseAccuracy];
  [v5 encodeDouble:@"DeltaDistance" forKey:self->_deltaDistance];
  [v5 encodeDouble:@"DeltaDistanceAccuracy" forKey:self->_deltaDistanceAccuracy];
  [v5 encodeDouble:@"GroundAltitude" forKey:self->_groundAltitude];
  [v5 encodeDouble:@"GroundAltitudeUncertainty" forKey:self->_groundAltitudeUncertainty];
  [v5 encodeDouble:@"Pressure" forKey:self->_pressure];
  [v5 encodeDouble:@"PressureUncertainty" forKey:self->_pressureUncertainty];
  [v5 encodeBool:self->_isSimulatedOrSpoofed forKey:@"IsSimulated"];
}

- (TALocationLite)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  [v4 decodeDoubleForKey:@"Latitude"];
  v38 = v6;
  [v4 decodeDoubleForKey:@"Longitude"];
  v37 = v7;
  [v4 decodeDoubleForKey:@"HorizontalAccuracy"];
  v36 = v8;
  [v4 decodeDoubleForKey:@"Altitude"];
  v35 = v9;
  [v4 decodeDoubleForKey:@"VerticalAccuracy"];
  v34 = v10;
  [v4 decodeDoubleForKey:@"Speed"];
  v33 = v11;
  [v4 decodeDoubleForKey:@"SpeedAccuracy"];
  v32 = v12;
  [v4 decodeDoubleForKey:@"Course"];
  v14 = v13;
  [v4 decodeDoubleForKey:@"CourseAccuracy"];
  v16 = v15;
  [v4 decodeDoubleForKey:@"DeltaDistance"];
  v18 = v17;
  [v4 decodeDoubleForKey:@"DeltaDistanceAccuracy"];
  v20 = v19;
  [v4 decodeDoubleForKey:@"GroundAltitude"];
  v22 = v21;
  [v4 decodeDoubleForKey:@"GroundAltitudeUncertainty"];
  v24 = v23;
  [v4 decodeDoubleForKey:@"Pressure"];
  v26 = v25;
  [v4 decodeDoubleForKey:@"PressureUncertainty"];
  v28 = v27;
  v29 = [v4 decodeBoolForKey:@"IsSimulated"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(TALocationLite *)self distanceFromLocation:v5];
      if (v6 == 0.0)
      {
        timestamp = self->_timestamp;
        v8 = [(TALocationLite *)v5 timestamp];
        v9 = [(NSDate *)timestamp isEqual:v8];
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

- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5
{
  v8 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v8 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

@end