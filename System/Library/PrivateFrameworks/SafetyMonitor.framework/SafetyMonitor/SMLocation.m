@interface SMLocation
+ (BOOL)isCLLocationValid:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (BOOL)isValid;
- (SMLocation)initWithCLLocation:(id)a3;
- (SMLocation)initWithCoder:(id)a3;
- (SMLocation)initWithDictionary:(id)a3;
- (SMLocation)initWithIdentifier:(id)a3 latitude:(double)a4 longitude:(double)a5 hunc:(double)a6 altitude:(double)a7 vunc:(double)a8 date:(id)a9;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMLocation

- (SMLocation)initWithIdentifier:(id)a3 latitude:(double)a4 longitude:(double)a5 hunc:(double)a6 altitude:(double)a7 vunc:(double)a8 date:(id)a9
{
  v17 = a3;
  v18 = a9;
  v19 = v18;
  v20 = 0;
  if (v17 && v18)
  {
    v24.receiver = self;
    v24.super_class = SMLocation;
    v21 = [(SMLocation *)&v24 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_identifier, a3);
      v22->_hunc = a6;
      v22->_altitude = a7;
      v22->_latitude = a4;
      v22->_longitude = a5;
      objc_storeStrong(&v22->_date, a9);
      v22->_vunc = a8;
      v22->_referenceFrame = 1;
    }

    self = v22;
    v20 = self;
  }

  return v20;
}

- (SMLocation)initWithCLLocation:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v4 coordinate];
  v7 = v6;
  [v4 coordinate];
  v9 = v8;
  [v4 horizontalAccuracy];
  v11 = v10;
  [v4 altitude];
  v13 = v12;
  [v4 verticalAccuracy];
  v15 = v14;
  v16 = [v4 timestamp];

  v17 = [(SMLocation *)self initWithIdentifier:v5 latitude:v16 longitude:v7 hunc:v9 altitude:v11 vunc:v13 date:v15];
  return v17;
}

+ (BOOL)isCLLocationValid:(id)a3
{
  v3 = a3;
  v4 = [[SMLocation alloc] initWithCLLocation:v3];

  LOBYTE(v3) = [(SMLocation *)v4 isValid];
  return v3;
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

  v9 = [(SMLocation *)self date];
  v10 = v9 != 0;

  return v10;
}

- (SMLocation)initWithDictionary:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAD78];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v5 valueForKey:@"identifier"];
    v8 = [v6 initWithUUIDString:v7];

    v9 = [v5 valueForKey:@"latitude"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v5 valueForKey:@"longitude"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v5 valueForKey:@"hunc"];
    [v15 doubleValue];
    v17 = v16;

    v18 = [v5 valueForKey:@"altitude"];
    [v18 doubleValue];
    v20 = v19;

    v21 = [v5 valueForKey:@"vunc"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [v5 valueForKey:@"date"];

    [v24 doubleValue];
    v26 = v25;

    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v26];
    self = [(SMLocation *)self initWithIdentifier:v8 latitude:v27 longitude:v11 hunc:v14 altitude:v17 vunc:v20 date:v23];

    v28 = self;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(SMLocation *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"identifier"];

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
  v17 = [(SMLocation *)self date];
  [v17 timeIntervalSince1970];
  v18 = [v16 numberWithDouble:?];
  [v3 setObject:v18 forKey:@"date"];

  return v3;
}

- (SMLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [v4 decodeDoubleForKey:@"latitude"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"longitude"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"hunc"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"altitude"];
  v13 = v12;
  [v4 decodeDoubleForKey:@"vunc"];
  v15 = v14;
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v17 = [(SMLocation *)self initWithIdentifier:v5 latitude:v16 longitude:v7 hunc:v9 altitude:v11 vunc:v13 date:v15];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SMLocation *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [(SMLocation *)self latitude];
  [v4 encodeDouble:@"latitude" forKey:?];
  [(SMLocation *)self longitude];
  [v4 encodeDouble:@"longitude" forKey:?];
  [(SMLocation *)self hunc];
  [v4 encodeDouble:@"hunc" forKey:?];
  [(SMLocation *)self altitude];
  [v4 encodeDouble:@"altitude" forKey:?];
  [(SMLocation *)self vunc];
  [v4 encodeDouble:@"vunc" forKey:?];
  v6 = [(SMLocation *)self date];
  [v4 encodeObject:v6 forKey:@"date"];
}

- (BOOL)isEquivalent:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(SMLocation *)self identifier];
      v10 = [(SMLocation *)v8 identifier];
      if (v9 != v10)
      {
        v3 = [(SMLocation *)self identifier];
        v4 = [(SMLocation *)v8 identifier];
        if (![v3 isEqual:v4])
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

      v42 = [(SMLocation *)self date];
      [v42 timeIntervalSince1970];
      v44 = v43;
      v45 = [(SMLocation *)v8 date];
      [v45 timeIntervalSince1970];
      v47 = v46;
      if (v44 == v46 || (-[SMLocation date](self, "date"), v53 = objc_claimAutoreleasedReturnValue(), [v53 timeIntervalSince1970], v49 = v48, -[SMLocation date](v8, "date"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeIntervalSince1970"), vabdd_f64(v49, v50) < 2.22044605e-16))
      {
        v51 = [(SMLocation *)self referenceFrame];
        v11 = v51 == [(SMLocation *)v8 referenceFrame];
        if (v44 == v47)
        {
LABEL_24:

LABEL_25:
          if (v9 == v10)
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
  v24 = [(SMLocation *)self identifier];
  v3 = [v24 hash];
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
  v19 = [(SMLocation *)self date];
  v20 = v12 ^ v18 ^ [v19 hash];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SMLocation referenceFrame](self, "referenceFrame")}];
  v22 = [v21 hash];

  return v20 ^ v22;
}

- (BOOL)isEqual:(id)a3
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
      v8 = [(SMLocation *)self identifier];
      v9 = [(SMLocation *)v7 identifier];
      if (v8 != v9)
      {
        v3 = [(SMLocation *)self identifier];
        v4 = [(SMLocation *)v7 identifier];
        if (![v3 isEqual:v4])
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
                v27 = [(SMLocation *)self date];
                v28 = [(SMLocation *)v7 date];
                if ([v27 isEqualToDate:v28])
                {
                  v29 = [(SMLocation *)self referenceFrame];
                  v10 = v29 == [(SMLocation *)v7 referenceFrame];

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
      if (v8 == v9)
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
  v4 = [(SMLocation *)self identifier];
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
  v15 = [(SMLocation *)self date];
  v16 = [v15 stringFromDate];
  v17 = [v3 stringWithFormat:@"identifier, %@, latitude, %f, longitude, %f, hunc, %f, altitude, %f, vunc, %f, date, %@", v4, v6, v8, v10, v12, v14, v16];

  return v17;
}

@end