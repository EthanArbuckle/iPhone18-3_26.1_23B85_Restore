@interface TALocationOfInterest
+ (unint64_t)convertRTToTALocationOfInterestType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TALocationOfInterest)initWithCoder:(id)coder;
- (TALocationOfInterest)initWithType:(unint64_t)type latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy referenceFrame:(unint64_t)frame date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TALocationOfInterest

- (TALocationOfInterest)initWithType:(unint64_t)type latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy referenceFrame:(unint64_t)frame date:(id)date
{
  dateCopy = date;
  v21.receiver = self;
  v21.super_class = TALocationOfInterest;
  v15 = [(TALocationOfInterest *)&v21 init];
  v16 = v15;
  if (v15)
  {
    if (!dateCopy)
    {
      v19 = 0;
      goto LABEL_6;
    }

    v15->_type = type;
    v15->_latitude = latitude;
    v15->_longitude = longitude;
    v15->_horizontalAccuracy = accuracy;
    v15->_referenceFrame = frame;
    v17 = [dateCopy copy];
    date = v16->_date;
    v16->_date = v17;
  }

  v19 = v16;
LABEL_6:

  return v19;
}

+ (unint64_t)convertRTToTALocationOfInterestType:(int64_t)type
{
  if (type)
  {
    return 2 * (type == 1);
  }

  else
  {
    return 1;
  }
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
  v10 = [(NSDate *)self->_date hash];

  return v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(TALocationOfInterest *)self type];
      if (type != [(TALocationOfInterest *)v5 type])
      {
        goto LABEL_12;
      }

      [(TALocationOfInterest *)self latitude];
      v8 = v7;
      [(TALocationOfInterest *)v5 latitude];
      if (v8 != v9)
      {
        goto LABEL_12;
      }

      [(TALocationOfInterest *)self longitude];
      v11 = v10;
      [(TALocationOfInterest *)v5 longitude];
      if (v11 == v12 && ([(TALocationOfInterest *)self horizontalAccuracy], v14 = v13, [(TALocationOfInterest *)v5 horizontalAccuracy], v14 == v15) && (v16 = [(TALocationOfInterest *)self referenceFrame], v16 == [(TALocationOfInterest *)v5 referenceFrame]))
      {
        date = [(TALocationOfInterest *)self date];
        date2 = [(TALocationOfInterest *)v5 date];
        if (date == date2)
        {
          v21 = 1;
        }

        else
        {
          date3 = [(TALocationOfInterest *)self date];
          date4 = [(TALocationOfInterest *)v5 date];
          v21 = [date3 isEqual:date4];
        }
      }

      else
      {
LABEL_12:
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)descriptionDictionary
{
  v17[7] = *MEMORY[0x277D85DE8];
  v16[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v17[0] = v4;
  v16[1] = @"Type";
  type = self->_type;
  if (type > 2)
  {
    v6 = @"<invalid>";
  }

  else
  {
    v6 = off_279DD1E58[type];
  }

  v17[1] = v6;
  v16[2] = @"Latitude";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
  v17[2] = v7;
  v16[3] = @"Longitude";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  v17[3] = v8;
  v16[4] = @"HorizontalAccuracy";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_horizontalAccuracy];
  v17[4] = v9;
  v16[5] = @"ReferenceFrame";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_referenceFrame];
  v17[5] = v10;
  v16[6] = @"Date";
  date = [(TALocationOfInterest *)self date];
  getDateString = [date getDateString];
  v17[6] = getDateString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  descriptionDictionary = [(TALocationOfInterest *)self descriptionDictionary];
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
  v4 = [TALocationOfInterest alloc];
  type = self->_type;
  latitude = self->_latitude;
  longitude = self->_longitude;
  horizontalAccuracy = self->_horizontalAccuracy;
  date = self->_date;

  return [(TALocationOfInterest *)v4 initWithType:type latitude:date longitude:latitude horizontalAccuracy:longitude date:horizontalAccuracy];
}

- (TALocationOfInterest)initWithCoder:(id)coder
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
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v14 = [(TALocationOfInterest *)self initWithType:v5 latitude:v12 longitude:v13 horizontalAccuracy:v7 referenceFrame:v9 date:v11];
  return v14;
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