@interface TACLVisit
- (BOOL)hasArrivalDate;
- (BOOL)hasDepartureDate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTemporalOrderSensical;
- (CLLocationCoordinate2D)coordinate;
- (NSDateInterval)dateInterval;
- (NSString)description;
- (TACLVisit)initWithCoder:(id)coder;
- (TACLVisit)initWithCoordinate:(CLLocationCoordinate2D)coordinate horizontalAccuracy:(double)accuracy arrivalDate:(id)date departureDate:(id)departureDate detectionDate:(id)detectionDate confidence:(unint64_t)confidence;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
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

- (TACLVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"Latitude"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"Longitude"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"HorizontalAccuracy"];
  v10 = v9;
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ArrivalDate"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DepartureDate"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  v14 = [coderCopy decodeIntegerForKey:@"Confidence"];

  v15 = [(TACLVisit *)self initWithCoordinate:v11 horizontalAccuracy:v12 arrivalDate:v13 departureDate:v14 detectionDate:v6 confidence:v8, v10];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(TACLVisit *)self coordinate];
  [coderCopy encodeDouble:@"Latitude" forKey:?];
  [(TACLVisit *)self coordinate];
  [coderCopy encodeDouble:@"Longitude" forKey:v4];
  [(TACLVisit *)self horizontalAccuracy];
  [coderCopy encodeDouble:@"HorizontalAccuracy" forKey:?];
  arrivalDate = [(TACLVisit *)self arrivalDate];
  [coderCopy encodeObject:arrivalDate forKey:@"ArrivalDate"];

  departureDate = [(TACLVisit *)self departureDate];
  [coderCopy encodeObject:departureDate forKey:@"DepartureDate"];

  detectionDate = [(TACLVisit *)self detectionDate];
  [coderCopy encodeObject:detectionDate forKey:@"Date"];

  [coderCopy encodeInteger:-[TACLVisit confidence](self forKey:{"confidence"), @"Confidence"}];
}

- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [coderCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TACLVisit allocWithZone:zone];
  [(TACLVisit *)self coordinate];
  v6 = v5;
  v8 = v7;
  [(TACLVisit *)self horizontalAccuracy];
  v10 = v9;
  arrivalDate = [(TACLVisit *)self arrivalDate];
  departureDate = [(TACLVisit *)self departureDate];
  detectionDate = [(TACLVisit *)self detectionDate];
  v14 = [(TACLVisit *)v4 initWithCoordinate:arrivalDate horizontalAccuracy:departureDate arrivalDate:detectionDate departureDate:[(TACLVisit *)self confidence] detectionDate:v6 confidence:v8, v10];

  return v14;
}

- (TACLVisit)initWithCoordinate:(CLLocationCoordinate2D)coordinate horizontalAccuracy:(double)accuracy arrivalDate:(id)date departureDate:(id)departureDate detectionDate:(id)detectionDate confidence:(unint64_t)confidence
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  dateCopy = date;
  departureDateCopy = departureDate;
  detectionDateCopy = detectionDate;
  v27.receiver = self;
  v27.super_class = TACLVisit;
  v18 = [(TACLVisit *)&v27 init];
  if (!v18)
  {
    goto LABEL_7;
  }

  if (!detectionDateCopy)
  {
LABEL_9:
    v25 = 0;
    goto LABEL_10;
  }

  if (!(dateCopy | departureDateCopy))
  {
    dateCopy = 0;
    departureDateCopy = 0;
    goto LABEL_9;
  }

  if (!departureDateCopy)
  {
    departureDateCopy = [MEMORY[0x277CBEAA8] distantFuture];
    if (dateCopy)
    {
      goto LABEL_6;
    }

LABEL_12:
    dateCopy = [MEMORY[0x277CBEAA8] distantPast];
    goto LABEL_6;
  }

  if (!dateCopy)
  {
    goto LABEL_12;
  }

LABEL_6:
  v18->_coordinate.latitude = latitude;
  v18->_coordinate.longitude = longitude;
  v18->_horizontalAccuracy = accuracy;
  v19 = [dateCopy copy];
  arrivalDate = v18->_arrivalDate;
  v18->_arrivalDate = v19;

  v21 = [departureDateCopy copy];
  departureDate = v18->_departureDate;
  v18->_departureDate = v21;

  v23 = [detectionDateCopy copy];
  detectionDate = v18->_detectionDate;
  v18->_detectionDate = v23;

  v18->_confidence = confidence;
LABEL_7:
  v25 = v18;
LABEL_10:

  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      [(TACLVisit *)self coordinate];
      v8 = v7;
      [(TACLVisit *)v6 coordinate];
      if (v8 != v9 || ([(TACLVisit *)self coordinate], v11 = v10, [(TACLVisit *)v6 coordinate], v11 != v12) || ([(TACLVisit *)self horizontalAccuracy], v14 = v13, [(TACLVisit *)v6 horizontalAccuracy], v14 != v15))
      {
        v19 = 0;
LABEL_29:

        goto LABEL_30;
      }

      arrivalDate = [(TACLVisit *)self arrivalDate];
      arrivalDate2 = [(TACLVisit *)v6 arrivalDate];
      if (arrivalDate != arrivalDate2)
      {
        arrivalDate3 = [(TACLVisit *)self arrivalDate];
        arrivalDate4 = [(TACLVisit *)v6 arrivalDate];
        if (![arrivalDate3 isEqual:arrivalDate4])
        {
          v19 = 0;
          goto LABEL_27;
        }

        v32 = arrivalDate4;
        v33 = arrivalDate3;
      }

      departureDate = [(TACLVisit *)self departureDate];
      departureDate2 = [(TACLVisit *)v6 departureDate];
      if (departureDate != departureDate2)
      {
        arrivalDate3 = [(TACLVisit *)self departureDate];
        departureDate3 = [(TACLVisit *)v6 departureDate];
        if (![arrivalDate3 isEqual:departureDate3])
        {
          v19 = 0;
LABEL_25:

LABEL_26:
          arrivalDate4 = v32;
          arrivalDate3 = v33;
          if (arrivalDate == arrivalDate2)
          {
LABEL_28:

            goto LABEL_29;
          }

LABEL_27:

          goto LABEL_28;
        }

        v30 = departureDate3;
        v31 = arrivalDate3;
      }

      detectionDate = [(TACLVisit *)self detectionDate];
      detectionDate2 = [(TACLVisit *)v6 detectionDate];
      if (detectionDate != detectionDate2)
      {
        v28 = departureDate;
        detectionDate3 = [(TACLVisit *)self detectionDate];
        arrivalDate3 = [(TACLVisit *)v6 detectionDate];
        v29 = detectionDate3;
        if (![detectionDate3 isEqual:arrivalDate3])
        {
          v19 = 0;
          departureDate = v28;
          goto LABEL_23;
        }

        departureDate = v28;
      }

      confidence = [(TACLVisit *)self confidence];
      v19 = confidence == [(TACLVisit *)v6 confidence];
      if (detectionDate == detectionDate2)
      {
LABEL_24:

        departureDate3 = v30;
        arrivalDate3 = v31;
        if (departureDate == departureDate2)
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
    arrivalDate = [(TACLVisit *)self arrivalDate];
    getDateString = [arrivalDate getDateString];
  }

  else
  {
    getDateString = @"-";
  }

  if ([(TACLVisit *)self hasDepartureDate])
  {
    departureDate = [(TACLVisit *)self departureDate];
    getDateString2 = [departureDate getDateString];
  }

  else
  {
    getDateString2 = @"-";
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
  v20[4] = getDateString;
  v19[4] = @"ArrivalDate";
  v19[5] = @"DepartureDate";
  v20[5] = getDateString2;
  v19[6] = @"Date";
  detectionDate = [(TACLVisit *)self detectionDate];
  getDateString3 = [detectionDate getDateString];
  v20[6] = getDateString3;
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
  descriptionDictionary = [(TACLVisit *)self descriptionDictionary];
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

- (BOOL)hasArrivalDate
{
  arrivalDate = [(TACLVisit *)self arrivalDate];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [arrivalDate isEqual:distantPast];

  return v4 ^ 1;
}

- (BOOL)hasDepartureDate
{
  departureDate = [(TACLVisit *)self departureDate];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v4 = [departureDate isEqual:distantFuture];

  return v4 ^ 1;
}

- (BOOL)isTemporalOrderSensical
{
  arrivalDate = [(TACLVisit *)self arrivalDate];
  departureDate = [(TACLVisit *)self departureDate];
  v5 = [arrivalDate earlierDate:departureDate];
  detectionDate = [(TACLVisit *)self detectionDate];
  v7 = [v5 earlierDate:detectionDate];
  arrivalDate2 = [(TACLVisit *)self arrivalDate];
  v9 = [v7 isEqual:arrivalDate2];

  return v9;
}

- (NSDateInterval)dateInterval
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(TACLVisit *)self isTemporalOrderSensical])
  {
    v3 = objc_alloc(MEMORY[0x277CCA970]);
    arrivalDate = [(TACLVisit *)self arrivalDate];
    departureDate = [(TACLVisit *)self departureDate];
    v6 = [v3 initWithStartDate:arrivalDate endDate:departureDate];
  }

  else
  {
    v7 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      arrivalDate2 = [(TACLVisit *)self arrivalDate];
      departureDate2 = [(TACLVisit *)self departureDate];
      v14[0] = 68289539;
      v14[1] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2113;
      v18 = arrivalDate2;
      v19 = 2113;
      v20 = departureDate2;
      _os_log_impl(&dword_26F2E2000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TACLVisit attempted to create dateInterval with nonsensical arrival and departure dates, arrivalDate:%{private}@, departureDate:%{private}@}", v14, 0x26u);
    }

    v11 = objc_alloc(MEMORY[0x277CCA970]);
    arrivalDate = [(TACLVisit *)self arrivalDate];
    v6 = [v11 initWithStartDate:arrivalDate duration:0.0];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end