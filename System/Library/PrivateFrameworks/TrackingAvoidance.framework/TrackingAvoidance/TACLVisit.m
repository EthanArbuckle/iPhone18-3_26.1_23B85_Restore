@interface TACLVisit
- (BOOL)hasArrivalDate;
- (BOOL)hasDepartureDate;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTemporalOrderSensical;
- (CLLocationCoordinate2D)coordinate;
- (NSDateInterval)dateInterval;
- (NSString)description;
- (TACLVisit)initWithCoder:(id)a3;
- (TACLVisit)initWithCoordinate:(CLLocationCoordinate2D)a3 horizontalAccuracy:(double)a4 arrivalDate:(id)a5 departureDate:(id)a6 detectionDate:(id)a7 confidence:(unint64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TACLVisit

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (TACLVisit)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"Latitude"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"Longitude"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"HorizontalAccuracy"];
  v10 = v9;
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ArrivalDate"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DepartureDate"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  v14 = [v4 decodeIntegerForKey:@"Confidence"];

  v15 = [(TACLVisit *)self initWithCoordinate:v11 horizontalAccuracy:v12 arrivalDate:v13 departureDate:v14 detectionDate:v6 confidence:v8, v10];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [(TACLVisit *)self coordinate];
  [v8 encodeDouble:@"Latitude" forKey:?];
  [(TACLVisit *)self coordinate];
  [v8 encodeDouble:@"Longitude" forKey:v4];
  [(TACLVisit *)self horizontalAccuracy];
  [v8 encodeDouble:@"HorizontalAccuracy" forKey:?];
  v5 = [(TACLVisit *)self arrivalDate];
  [v8 encodeObject:v5 forKey:@"ArrivalDate"];

  v6 = [(TACLVisit *)self departureDate];
  [v8 encodeObject:v6 forKey:@"DepartureDate"];

  v7 = [(TACLVisit *)self detectionDate];
  [v8 encodeObject:v7 forKey:@"Date"];

  [v8 encodeInteger:-[TACLVisit confidence](self forKey:{"confidence"), @"Confidence"}];
}

- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5
{
  v8 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v8 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TACLVisit allocWithZone:a3];
  [(TACLVisit *)self coordinate];
  v6 = v5;
  v8 = v7;
  [(TACLVisit *)self horizontalAccuracy];
  v10 = v9;
  v11 = [(TACLVisit *)self arrivalDate];
  v12 = [(TACLVisit *)self departureDate];
  v13 = [(TACLVisit *)self detectionDate];
  v14 = [(TACLVisit *)v4 initWithCoordinate:v11 horizontalAccuracy:v12 arrivalDate:v13 departureDate:[(TACLVisit *)self confidence] detectionDate:v6 confidence:v8, v10];

  return v14;
}

- (TACLVisit)initWithCoordinate:(CLLocationCoordinate2D)a3 horizontalAccuracy:(double)a4 arrivalDate:(id)a5 departureDate:(id)a6 detectionDate:(id)a7 confidence:(unint64_t)a8
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v27.receiver = self;
  v27.super_class = TACLVisit;
  v18 = [(TACLVisit *)&v27 init];
  if (!v18)
  {
    goto LABEL_7;
  }

  if (!v17)
  {
LABEL_9:
    v25 = 0;
    goto LABEL_10;
  }

  if (!(v15 | v16))
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_9;
  }

  if (!v16)
  {
    v16 = [MEMORY[0x277CBEAA8] distantFuture];
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_12:
    v15 = [MEMORY[0x277CBEAA8] distantPast];
    goto LABEL_6;
  }

  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_6:
  v18->_coordinate.latitude = latitude;
  v18->_coordinate.longitude = longitude;
  v18->_horizontalAccuracy = a4;
  v19 = [v15 copy];
  arrivalDate = v18->_arrivalDate;
  v18->_arrivalDate = v19;

  v21 = [v16 copy];
  departureDate = v18->_departureDate;
  v18->_departureDate = v21;

  v23 = [v17 copy];
  detectionDate = v18->_detectionDate;
  v18->_detectionDate = v23;

  v18->_confidence = a8;
LABEL_7:
  v25 = v18;
LABEL_10:

  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      [(TACLVisit *)self coordinate];
      v8 = v7;
      [(TACLVisit *)v6 coordinate];
      if (v8 != v9 || ([(TACLVisit *)self coordinate], v11 = v10, [(TACLVisit *)v6 coordinate], v11 != v12) || ([(TACLVisit *)self horizontalAccuracy], v14 = v13, [(TACLVisit *)v6 horizontalAccuracy], v14 != v15))
      {
        v19 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v16 = [(TACLVisit *)self arrivalDate];
      v17 = [(TACLVisit *)v6 arrivalDate];
      if (v16 != v17)
      {
        v3 = [(TACLVisit *)self arrivalDate];
        v18 = [(TACLVisit *)v6 arrivalDate];
        if (![v3 isEqual:v18])
        {
          v19 = 0;
          goto LABEL_27;
        }

        v32 = v18;
        v33 = v3;
      }

      v20 = [(TACLVisit *)self departureDate];
      v21 = [(TACLVisit *)v6 departureDate];
      if (v20 != v21)
      {
        v3 = [(TACLVisit *)self departureDate];
        v22 = [(TACLVisit *)v6 departureDate];
        if (![v3 isEqual:v22])
        {
          v19 = 0;
LABEL_25:

LABEL_26:
          v18 = v32;
          v3 = v33;
          if (v16 == v17)
          {
LABEL_28:

            goto LABEL_29;
          }

LABEL_27:

          goto LABEL_28;
        }

        v30 = v22;
        v31 = v3;
      }

      v23 = [(TACLVisit *)self detectionDate];
      v24 = [(TACLVisit *)v6 detectionDate];
      if (v23 != v24)
      {
        v28 = v20;
        v25 = [(TACLVisit *)self detectionDate];
        v3 = [(TACLVisit *)v6 detectionDate];
        v29 = v25;
        if (![v25 isEqual:v3])
        {
          v19 = 0;
          v20 = v28;
          goto LABEL_23;
        }

        v20 = v28;
      }

      v26 = [(TACLVisit *)self confidence];
      v19 = v26 == [(TACLVisit *)v6 confidence];
      if (v23 == v24)
      {
LABEL_24:

        v22 = v30;
        v3 = v31;
        if (v20 == v21)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_23:

      goto LABEL_24;
    }

    v19 = 0;
  }

LABEL_30:

  return v19;
}

- (id)descriptionDictionary
{
  v20[8] = *MEMORY[0x277D85DE8];
  if ([(TACLVisit *)self hasArrivalDate])
  {
    v3 = [(TACLVisit *)self arrivalDate];
    v4 = [v3 getDateString];
  }

  else
  {
    v4 = @"-";
  }

  if ([(TACLVisit *)self hasDepartureDate])
  {
    v5 = [(TACLVisit *)self departureDate];
    v6 = [v5 getDateString];
  }

  else
  {
    v6 = @"-";
  }

  v19[0] = @"EventType";
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v20[0] = v8;
  v19[1] = @"Latitude";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coordinate.latitude];
  v20[1] = v9;
  v19[2] = @"Longitude";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coordinate.longitude];
  v20[2] = v10;
  v19[3] = @"HorizontalAccuracy";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_horizontalAccuracy];
  v20[3] = v11;
  v20[4] = v4;
  v19[4] = @"ArrivalDate";
  v19[5] = @"DepartureDate";
  v20[5] = v6;
  v19[6] = @"Date";
  v12 = [(TACLVisit *)self detectionDate];
  v13 = [v12 getDateString];
  v20[6] = v13;
  v19[7] = @"Confidence";
  confidence = self->_confidence;
  if (confidence > 2)
  {
    v15 = @"<invalid>";
  }

  else
  {
    v15 = off_279DD1D70[confidence];
  }

  v20[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:8];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (NSString)description
{
  v3 = [(TACLVisit *)self descriptionDictionary];
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

- (BOOL)hasArrivalDate
{
  v2 = [(TACLVisit *)self arrivalDate];
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1;
}

- (BOOL)hasDepartureDate
{
  v2 = [(TACLVisit *)self departureDate];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1;
}

- (BOOL)isTemporalOrderSensical
{
  v3 = [(TACLVisit *)self arrivalDate];
  v4 = [(TACLVisit *)self departureDate];
  v5 = [v3 earlierDate:v4];
  v6 = [(TACLVisit *)self detectionDate];
  v7 = [v5 earlierDate:v6];
  v8 = [(TACLVisit *)self arrivalDate];
  v9 = [v7 isEqual:v8];

  return v9;
}

- (NSDateInterval)dateInterval
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(TACLVisit *)self isTemporalOrderSensical])
  {
    v3 = objc_alloc(MEMORY[0x277CCA970]);
    v4 = [(TACLVisit *)self arrivalDate];
    v5 = [(TACLVisit *)self departureDate];
    v6 = [v3 initWithStartDate:v4 endDate:v5];
  }

  else
  {
    v7 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(TACLVisit *)self arrivalDate];
      v10 = [(TACLVisit *)self departureDate];
      v14[0] = 68289539;
      v14[1] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2113;
      v18 = v9;
      v19 = 2113;
      v20 = v10;
      _os_log_impl(&dword_26F2E2000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TACLVisit attempted to create dateInterval with nonsensical arrival and departure dates, arrivalDate:%{private}@, departureDate:%{private}@}", v14, 0x26u);
    }

    v11 = objc_alloc(MEMORY[0x277CCA970]);
    v4 = [(TACLVisit *)self arrivalDate];
    v6 = [v11 initWithStartDate:v4 duration:0.0];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end