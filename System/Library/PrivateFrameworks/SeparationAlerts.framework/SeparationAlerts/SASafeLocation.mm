@interface SASafeLocation
- (BOOL)isEqual:(id)a3;
- (BOOL)isReallyEqual:(id)a3;
- (NSString)description;
- (SASafeLocation)initWithCoder:(id)a3;
- (SASafeLocation)initWithLocationUUID:(id)a3 latitude:(double)a4 longitude:(double)a5 radius:(double)a6 referenceFrame:(unint64_t)a7 name:(id)a8 date:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation SASafeLocation

- (SASafeLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"SASafeLocationIdentifier"];
  [v4 decodeDoubleForKey:@"SASafeLocationLatitude"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"SASafeLocationLongitude"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"SASafeLocationRadius"];
  v11 = v10;
  v12 = [v4 decodeIntegerForKey:@"SASafeLocationReferenceFrame"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASafeLocationNameString"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASafeLocationDate"];

  v15 = [(SASafeLocation *)self initWithLocationUUID:v5 latitude:v12 longitude:v13 radius:v14 referenceFrame:v7 name:v9 date:v11];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SASafeLocation *)self identifier];
  [v4 encodeObject:v5 forKey:@"SASafeLocationIdentifier"];

  [(SASafeLocation *)self latitude];
  [v4 encodeDouble:@"SASafeLocationLatitude" forKey:?];
  [(SASafeLocation *)self longitude];
  [v4 encodeDouble:@"SASafeLocationLongitude" forKey:?];
  [(SASafeLocation *)self radius];
  [v4 encodeDouble:@"SASafeLocationRadius" forKey:?];
  [v4 encodeInteger:-[SASafeLocation referenceFrame](self forKey:{"referenceFrame"), @"SASafeLocationReferenceFrame"}];
  v6 = [(SASafeLocation *)self name];
  [v4 encodeObject:v6 forKey:@"SASafeLocationNameString"];

  v7 = [(SASafeLocation *)self date];
  [v4 encodeObject:v7 forKey:@"SASafeLocationDate"];
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
  v4 = [SASafeLocation allocWithZone:a3];
  v5 = [(SASafeLocation *)self identifier];
  [(SASafeLocation *)self latitude];
  v7 = v6;
  [(SASafeLocation *)self longitude];
  v9 = v8;
  [(SASafeLocation *)self radius];
  v11 = v10;
  v12 = [(SASafeLocation *)self referenceFrame];
  v13 = [(SASafeLocation *)self name];
  v14 = [(SASafeLocation *)self date];
  v15 = [(SASafeLocation *)v4 initWithLocationUUID:v5 latitude:v12 longitude:v13 radius:v14 referenceFrame:v7 name:v9 date:v11];

  return v15;
}

- (SASafeLocation)initWithLocationUUID:(id)a3 latitude:(double)a4 longitude:(double)a5 radius:(double)a6 referenceFrame:(unint64_t)a7 name:(id)a8 date:(id)a9
{
  v16 = a3;
  v17 = a8;
  v18 = a9;
  v28.receiver = self;
  v28.super_class = SASafeLocation;
  v19 = [(SASafeLocation *)&v28 init];
  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = 0;
  if (v16 && v18)
  {
    v21 = [v16 copy];
    identifier = v19->_identifier;
    v19->_identifier = v21;

    v19->_latitude = a4;
    v19->_longitude = a5;
    v19->_radius = a6;
    v19->_referenceFrame = a7;
    v23 = [v17 copy];
    name = v19->_name;
    v19->_name = v23;

    v25 = [v18 copy];
    date = v19->_date;
    v19->_date = v25;

LABEL_5:
    v20 = v19;
  }

  return v20;
}

- (BOOL)isReallyEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SASafeLocation *)self identifier];
      v9 = [(SASafeLocation *)v7 identifier];
      if (v8 == v9 || (-[SASafeLocation identifier](self, "identifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SASafeLocation identifier](v7, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        [(SASafeLocation *)self latitude];
        v13 = v12;
        [(SASafeLocation *)v7 latitude];
        if (v13 == v14 && ([(SASafeLocation *)self longitude], v16 = v15, [(SASafeLocation *)v7 longitude], v16 == v17) && ([(SASafeLocation *)self radius], v19 = v18, [(SASafeLocation *)v7 radius], v19 == v20))
        {
          v21 = [(SASafeLocation *)self referenceFrame];
          v10 = v21 == [(SASafeLocation *)v7 referenceFrame];
          v11 = v10;
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }

        if (v8 == v9)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SASafeLocation *)self identifier];
      v7 = [(SASafeLocation *)v5 identifier];

      v8 = [v6 isEqual:v7];
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
  v2 = [(SASafeLocation *)self identifier];
  v3 = [v2 hash];

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
  v20 = [(SASafeLocation *)self identifier];
  v19 = [v20 description];
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
  v12 = [(SASafeLocation *)self name];
  if (v12)
  {
    v2 = [(SASafeLocation *)self name];
    v13 = [v2 description];
  }

  else
  {
    v13 = &stru_287709218;
  }

  v23[6] = v13;
  v22[7] = @"SASafeLocationDate";
  v14 = [(SASafeLocation *)self date];
  v15 = [v14 getDateString];
  v23[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:8];

  if (v12)
  {
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (NSString)description
{
  v3 = [(SASafeLocation *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SAConnectionEvent *)v6 description];
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

@end