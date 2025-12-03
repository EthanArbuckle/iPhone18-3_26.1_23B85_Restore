@interface SASafeLocation
- (BOOL)isEqual:(id)equal;
- (BOOL)isReallyEqual:(id)equal;
- (NSString)description;
- (SASafeLocation)initWithCoder:(id)coder;
- (SASafeLocation)initWithLocationUUID:(id)d latitude:(double)latitude longitude:(double)longitude radius:(double)radius referenceFrame:(unint64_t)frame name:(id)name date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation SASafeLocation

- (SASafeLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"SASafeLocationIdentifier"];
  [coderCopy decodeDoubleForKey:@"SASafeLocationLatitude"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"SASafeLocationLongitude"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"SASafeLocationRadius"];
  v11 = v10;
  v12 = [coderCopy decodeIntegerForKey:@"SASafeLocationReferenceFrame"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASafeLocationNameString"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASafeLocationDate"];

  v15 = [(SASafeLocation *)self initWithLocationUUID:v5 latitude:v12 longitude:v13 radius:v14 referenceFrame:v7 name:v9 date:v11];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SASafeLocation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"SASafeLocationIdentifier"];

  [(SASafeLocation *)self latitude];
  [coderCopy encodeDouble:@"SASafeLocationLatitude" forKey:?];
  [(SASafeLocation *)self longitude];
  [coderCopy encodeDouble:@"SASafeLocationLongitude" forKey:?];
  [(SASafeLocation *)self radius];
  [coderCopy encodeDouble:@"SASafeLocationRadius" forKey:?];
  [coderCopy encodeInteger:-[SASafeLocation referenceFrame](self forKey:{"referenceFrame"), @"SASafeLocationReferenceFrame"}];
  name = [(SASafeLocation *)self name];
  [coderCopy encodeObject:name forKey:@"SASafeLocationNameString"];

  date = [(SASafeLocation *)self date];
  [coderCopy encodeObject:date forKey:@"SASafeLocationDate"];
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
  v4 = [SASafeLocation allocWithZone:zone];
  identifier = [(SASafeLocation *)self identifier];
  [(SASafeLocation *)self latitude];
  v7 = v6;
  [(SASafeLocation *)self longitude];
  v9 = v8;
  [(SASafeLocation *)self radius];
  v11 = v10;
  referenceFrame = [(SASafeLocation *)self referenceFrame];
  name = [(SASafeLocation *)self name];
  date = [(SASafeLocation *)self date];
  v15 = [(SASafeLocation *)v4 initWithLocationUUID:identifier latitude:referenceFrame longitude:name radius:date referenceFrame:v7 name:v9 date:v11];

  return v15;
}

- (SASafeLocation)initWithLocationUUID:(id)d latitude:(double)latitude longitude:(double)longitude radius:(double)radius referenceFrame:(unint64_t)frame name:(id)name date:(id)date
{
  dCopy = d;
  nameCopy = name;
  dateCopy = date;
  v28.receiver = self;
  v28.super_class = SASafeLocation;
  v19 = [(SASafeLocation *)&v28 init];
  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = 0;
  if (dCopy && dateCopy)
  {
    v21 = [dCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v21;

    v19->_latitude = latitude;
    v19->_longitude = longitude;
    v19->_radius = radius;
    v19->_referenceFrame = frame;
    v23 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v23;

    v25 = [dateCopy copy];
    date = v19->_date;
    v19->_date = v25;

LABEL_5:
    v20 = v19;
  }

  return v20;
}

- (BOOL)isReallyEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      identifier = [(SASafeLocation *)self identifier];
      identifier2 = [(SASafeLocation *)v7 identifier];
      if (identifier == identifier2 || (-[SASafeLocation identifier](self, "identifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SASafeLocation identifier](v7, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        [(SASafeLocation *)self latitude];
        v13 = v12;
        [(SASafeLocation *)v7 latitude];
        if (v13 == v14 && ([(SASafeLocation *)self longitude], v16 = v15, [(SASafeLocation *)v7 longitude], v16 == v17) && ([(SASafeLocation *)self radius], v19 = v18, [(SASafeLocation *)v7 radius], v19 == v20))
        {
          referenceFrame = [(SASafeLocation *)self referenceFrame];
          v10 = referenceFrame == [(SASafeLocation *)v7 referenceFrame];
          v11 = v10;
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }

        if (identifier == identifier2)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
LABEL_15:

      goto LABEL_16;
    }

    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SASafeLocation *)self identifier];
      identifier2 = [(SASafeLocation *)v5 identifier];

      v8 = [identifier isEqual:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(SASafeLocation *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)descriptionDictionary
{
  v23[8] = *MEMORY[0x277D85DE8];
  v22[0] = @"EventType";
  v4 = objc_opt_class();
  v21 = NSStringFromClass(v4);
  v23[0] = v21;
  v22[1] = @"SASafeLocationIdentifier";
  identifier = [(SASafeLocation *)self identifier];
  v19 = [identifier description];
  v23[1] = v19;
  v22[2] = @"SASafeLocationLatitude";
  v5 = MEMORY[0x277CCABB0];
  [(SASafeLocation *)self latitude];
  v6 = [v5 numberWithDouble:?];
  v23[2] = v6;
  v22[3] = @"SASafeLocationLongitude";
  v7 = MEMORY[0x277CCABB0];
  [(SASafeLocation *)self longitude];
  v8 = [v7 numberWithDouble:?];
  v23[3] = v8;
  v22[4] = @"SASafeLocationRadius";
  v9 = MEMORY[0x277CCABB0];
  [(SASafeLocation *)self radius];
  v10 = [v9 numberWithDouble:?];
  v23[4] = v10;
  v22[5] = @"SASafeLocationReferenceFrame";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SASafeLocation referenceFrame](self, "referenceFrame")}];
  v23[5] = v11;
  v22[6] = @"SASafeLocationNameString";
  name = [(SASafeLocation *)self name];
  if (name)
  {
    name2 = [(SASafeLocation *)self name];
    v13 = [name2 description];
  }

  else
  {
    v13 = &stru_287709218;
  }

  v23[6] = v13;
  v22[7] = @"SASafeLocationDate";
  date = [(SASafeLocation *)self date];
  getDateString = [date getDateString];
  v23[7] = getDateString;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:8];

  if (name)
  {
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (NSString)description
{
  descriptionDictionary = [(SASafeLocation *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SAConnectionEvent *)v6 description];
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

@end