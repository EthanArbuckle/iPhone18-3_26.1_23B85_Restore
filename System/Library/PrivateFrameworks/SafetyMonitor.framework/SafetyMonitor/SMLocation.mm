@interface SMLocation
+ (BOOL)isCLLocationValid:(id)valid;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalent:(id)equivalent;
- (BOOL)isValid;
- (SMLocation)initWithCLLocation:(id)location;
- (SMLocation)initWithCoder:(id)coder;
- (SMLocation)initWithDictionary:(id)dictionary;
- (SMLocation)initWithIdentifier:(id)identifier latitude:(double)latitude longitude:(double)longitude hunc:(double)hunc altitude:(double)altitude vunc:(double)vunc date:(id)date;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMLocation

- (SMLocation)initWithIdentifier:(id)identifier latitude:(double)latitude longitude:(double)longitude hunc:(double)hunc altitude:(double)altitude vunc:(double)vunc date:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v19 = dateCopy;
  selfCopy = 0;
  if (identifierCopy && dateCopy)
  {
    v24.receiver = self;
    v24.super_class = SMLocation;
    v21 = [(SMLocation *)&v24 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_identifier, identifier);
      v22->_hunc = hunc;
      v22->_altitude = altitude;
      v22->_latitude = latitude;
      v22->_longitude = longitude;
      objc_storeStrong(&v22->_date, date);
      v22->_vunc = vunc;
      v22->_referenceFrame = 1;
    }

    self = v22;
    selfCopy = self;
  }

  return selfCopy;
}

- (SMLocation)initWithCLLocation:(id)location
{
  locationCopy = location;
  v5 = objc_opt_new();
  [locationCopy coordinate];
  v7 = v6;
  [locationCopy coordinate];
  v9 = v8;
  [locationCopy horizontalAccuracy];
  v11 = v10;
  [locationCopy altitude];
  v13 = v12;
  [locationCopy verticalAccuracy];
  v15 = v14;
  timestamp = [locationCopy timestamp];

  v17 = [(SMLocation *)self initWithIdentifier:v5 latitude:timestamp longitude:v7 hunc:v9 altitude:v11 vunc:v13 date:v15];
  return v17;
}

+ (BOOL)isCLLocationValid:(id)valid
{
  validCopy = valid;
  v4 = [[SMLocation alloc] initWithCLLocation:validCopy];

  LOBYTE(validCopy) = [(SMLocation *)v4 isValid];
  return validCopy;
}

- (BOOL)isValid
{
  [(SMLocation *)self latitude];
  v4 = v3;
  [(SMLocation *)self longitude];
  v12 = CLLocationCoordinate2DMake(v4, v5);
  if (!CLLocationCoordinate2DIsValid(v12))
  {
    return 0;
  }

  [(SMLocation *)self latitude];
  if (v6 == 0.0)
  {
    [(SMLocation *)self longitude];
    if (v7 == 0.0)
    {
      return 0;
    }
  }

  [(SMLocation *)self hunc];
  if (v8 <= 0.0)
  {
    return 0;
  }

  date = [(SMLocation *)self date];
  v10 = date != 0;

  return v10;
}

- (SMLocation)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = MEMORY[0x277CCAD78];
    dictionaryCopy = dictionary;
    v6 = [v4 alloc];
    v7 = [dictionaryCopy valueForKey:@"identifier"];
    v8 = [v6 initWithUUIDString:v7];

    v9 = [dictionaryCopy valueForKey:@"latitude"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [dictionaryCopy valueForKey:@"longitude"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [dictionaryCopy valueForKey:@"hunc"];
    [v15 doubleValue];
    v17 = v16;

    v18 = [dictionaryCopy valueForKey:@"altitude"];
    [v18 doubleValue];
    v20 = v19;

    v21 = [dictionaryCopy valueForKey:@"vunc"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [dictionaryCopy valueForKey:@"date"];

    [v24 doubleValue];
    v26 = v25;

    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v26];
    self = [(SMLocation *)self initWithIdentifier:v8 latitude:v27 longitude:v11 hunc:v14 altitude:v17 vunc:v20 date:v23];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  identifier = [(SMLocation *)self identifier];
  uUIDString = [identifier UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"identifier"];

  v6 = MEMORY[0x277CCABB0];
  [(SMLocation *)self latitude];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKey:@"latitude"];

  v8 = MEMORY[0x277CCABB0];
  [(SMLocation *)self longitude];
  v9 = [v8 numberWithDouble:?];
  [v3 setObject:v9 forKey:@"longitude"];

  v10 = MEMORY[0x277CCABB0];
  [(SMLocation *)self hunc];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKey:@"hunc"];

  v12 = MEMORY[0x277CCABB0];
  [(SMLocation *)self altitude];
  v13 = [v12 numberWithDouble:?];
  [v3 setObject:v13 forKey:@"altitude"];

  v14 = MEMORY[0x277CCABB0];
  [(SMLocation *)self vunc];
  v15 = [v14 numberWithDouble:?];
  [v3 setObject:v15 forKey:@"vunc"];

  v16 = MEMORY[0x277CCABB0];
  date = [(SMLocation *)self date];
  [date timeIntervalSince1970];
  v18 = [v16 numberWithDouble:?];
  [v3 setObject:v18 forKey:@"date"];

  return v3;
}

- (SMLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [coderCopy decodeDoubleForKey:@"latitude"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"longitude"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"hunc"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"altitude"];
  v13 = v12;
  [coderCopy decodeDoubleForKey:@"vunc"];
  v15 = v14;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v17 = [(SMLocation *)self initWithIdentifier:v5 latitude:v16 longitude:v7 hunc:v9 altitude:v11 vunc:v13 date:v15];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SMLocation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [(SMLocation *)self latitude];
  [coderCopy encodeDouble:@"latitude" forKey:?];
  [(SMLocation *)self longitude];
  [coderCopy encodeDouble:@"longitude" forKey:?];
  [(SMLocation *)self hunc];
  [coderCopy encodeDouble:@"hunc" forKey:?];
  [(SMLocation *)self altitude];
  [coderCopy encodeDouble:@"altitude" forKey:?];
  [(SMLocation *)self vunc];
  [coderCopy encodeDouble:@"vunc" forKey:?];
  date = [(SMLocation *)self date];
  [coderCopy encodeObject:date forKey:@"date"];
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (self == equivalentCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equivalentCopy;
      identifier = [(SMLocation *)self identifier];
      identifier2 = [(SMLocation *)v8 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(SMLocation *)self identifier];
        identifier4 = [(SMLocation *)v8 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v11 = 0;
          goto LABEL_26;
        }
      }

      [(SMLocation *)self latitude];
      v13 = v12;
      [(SMLocation *)v8 latitude];
      if (v13 != v14)
      {
        [(SMLocation *)self latitude];
        v16 = v15;
        [(SMLocation *)v8 latitude];
        if (vabdd_f64(v16, v17) >= 2.22044605e-16)
        {
          goto LABEL_21;
        }
      }

      [(SMLocation *)self longitude];
      v19 = v18;
      [(SMLocation *)v8 longitude];
      if (v19 != v20)
      {
        [(SMLocation *)self longitude];
        v22 = v21;
        [(SMLocation *)v8 longitude];
        if (vabdd_f64(v22, v23) >= 2.22044605e-16)
        {
          goto LABEL_21;
        }
      }

      [(SMLocation *)self hunc];
      v25 = v24;
      [(SMLocation *)v8 hunc];
      if (v25 != v26)
      {
        [(SMLocation *)self hunc];
        v28 = v27;
        [(SMLocation *)v8 hunc];
        if (vabdd_f64(v28, v29) >= 2.22044605e-16)
        {
          goto LABEL_21;
        }
      }

      [(SMLocation *)self altitude];
      v31 = v30;
      [(SMLocation *)v8 altitude];
      if (v31 != v32)
      {
        [(SMLocation *)self altitude];
        v34 = v33;
        [(SMLocation *)v8 altitude];
        if (vabdd_f64(v34, v35) >= 2.22044605e-16)
        {
          goto LABEL_21;
        }
      }

      [(SMLocation *)self vunc];
      v37 = v36;
      [(SMLocation *)v8 vunc];
      if (v37 != v38)
      {
        [(SMLocation *)self vunc];
        v40 = v39;
        [(SMLocation *)v8 vunc];
        if (vabdd_f64(v40, v41) >= 2.22044605e-16)
        {
LABEL_21:
          v11 = 0;
          goto LABEL_25;
        }
      }

      date = [(SMLocation *)self date];
      [date timeIntervalSince1970];
      v44 = v43;
      date2 = [(SMLocation *)v8 date];
      [date2 timeIntervalSince1970];
      v47 = v46;
      if (v44 == v46 || (-[SMLocation date](self, "date"), v53 = objc_claimAutoreleasedReturnValue(), [v53 timeIntervalSince1970], v49 = v48, -[SMLocation date](v8, "date"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeIntervalSince1970"), vabdd_f64(v49, v50) < 2.22044605e-16))
      {
        referenceFrame = [(SMLocation *)self referenceFrame];
        v11 = referenceFrame == [(SMLocation *)v8 referenceFrame];
        if (v44 == v47)
        {
LABEL_24:

LABEL_25:
          if (identifier == identifier2)
          {
LABEL_27:

            goto LABEL_28;
          }

LABEL_26:

          goto LABEL_27;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_24;
    }

    v11 = 0;
  }

LABEL_28:

  return v11;
}

- (unint64_t)hash
{
  identifier = [(SMLocation *)self identifier];
  v3 = [identifier hash];
  v4 = MEMORY[0x277CCABB0];
  [(SMLocation *)self latitude];
  v5 = [v4 numberWithDouble:?];
  v6 = [v5 hash] ^ v3;
  v7 = MEMORY[0x277CCABB0];
  [(SMLocation *)self longitude];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 hash];
  v10 = MEMORY[0x277CCABB0];
  [(SMLocation *)self hunc];
  v11 = [v10 numberWithDouble:?];
  v12 = v6 ^ v9 ^ [v11 hash];
  v13 = MEMORY[0x277CCABB0];
  [(SMLocation *)self altitude];
  v14 = [v13 numberWithDouble:?];
  v15 = [v14 hash];
  v16 = MEMORY[0x277CCABB0];
  [(SMLocation *)self vunc];
  v17 = [v16 numberWithDouble:?];
  v18 = v15 ^ [v17 hash];
  date = [(SMLocation *)self date];
  v20 = v12 ^ v18 ^ [date hash];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SMLocation referenceFrame](self, "referenceFrame")}];
  v22 = [v21 hash];

  return v20 ^ v22;
}

- (BOOL)isEqual:(id)equal
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
      identifier = [(SMLocation *)self identifier];
      identifier2 = [(SMLocation *)v7 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(SMLocation *)self identifier];
        identifier4 = [(SMLocation *)v7 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
          goto LABEL_18;
        }
      }

      [(SMLocation *)self latitude];
      v13 = v12;
      [(SMLocation *)v7 latitude];
      if (v13 == v14)
      {
        [(SMLocation *)self longitude];
        v16 = v15;
        [(SMLocation *)v7 longitude];
        if (v16 == v17)
        {
          [(SMLocation *)self hunc];
          v19 = v18;
          [(SMLocation *)v7 hunc];
          if (v19 == v20)
          {
            [(SMLocation *)self altitude];
            v22 = v21;
            [(SMLocation *)v7 altitude];
            if (v22 == v23)
            {
              [(SMLocation *)self vunc];
              v25 = v24;
              [(SMLocation *)v7 vunc];
              if (v25 == v26)
              {
                date = [(SMLocation *)self date];
                date2 = [(SMLocation *)v7 date];
                if ([date isEqualToDate:date2])
                {
                  referenceFrame = [(SMLocation *)self referenceFrame];
                  v10 = referenceFrame == [(SMLocation *)v7 referenceFrame];

                  v11 = v10;
                  goto LABEL_17;
                }
              }
            }
          }
        }
      }

      v10 = 0;
      v11 = 0;
LABEL_17:
      if (identifier == identifier2)
      {
LABEL_19:

        goto LABEL_20;
      }

LABEL_18:

      v11 = v10;
      goto LABEL_19;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SMLocation *)self identifier];
  [(SMLocation *)self latitude];
  v6 = v5;
  [(SMLocation *)self longitude];
  v8 = v7;
  [(SMLocation *)self hunc];
  v10 = v9;
  [(SMLocation *)self altitude];
  v12 = v11;
  [(SMLocation *)self vunc];
  v14 = v13;
  date = [(SMLocation *)self date];
  stringFromDate = [date stringFromDate];
  v17 = [v3 stringWithFormat:@"identifier, %@, latitude, %f, longitude, %f, hunc, %f, altitude, %f, vunc, %f, date, %@", identifier, v6, v8, v10, v12, v14, stringFromDate];

  return v17;
}

@end