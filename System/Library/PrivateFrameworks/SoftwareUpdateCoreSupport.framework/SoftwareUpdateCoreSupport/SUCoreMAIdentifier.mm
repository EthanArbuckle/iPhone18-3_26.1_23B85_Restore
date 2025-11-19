@interface SUCoreMAIdentifier
- (BOOL)isEqual:(id)a3;
- (SUCoreMAIdentifier)initWithCoder:(id)a3;
- (SUCoreMAIdentifier)initWithProductVersion:(id)a3 productBuildVersion:(id)a4 releaseType:(id)a5 measurement:(id)a6 measurementAlgorithm:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreMAIdentifier

- (SUCoreMAIdentifier)initWithProductVersion:(id)a3 productBuildVersion:(id)a4 releaseType:(id)a5 measurement:(id)a6 measurementAlgorithm:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SUCoreMAIdentifier;
  v17 = [(SUCoreMAIdentifier *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_productVersion, a3);
    objc_storeStrong(&v18->_productBuildVersion, a4);
    objc_storeStrong(&v18->_releaseType, a5);
    objc_storeStrong(&v18->_measurement, a6);
    objc_storeStrong(&v18->_measurementAlgorithm, a7);
  }

  return v18;
}

- (SUCoreMAIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SUCoreMAIdentifier;
  v5 = [(SUCoreMAIdentifier *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductBuildVersion"];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseType"];
    releaseType = v5->_releaseType;
    v5->_releaseType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Measurement"];
    measurement = v5->_measurement;
    v5->_measurement = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MeasurementAlgorithm"];
    measurementAlgorithm = v5->_measurementAlgorithm;
    v5->_measurementAlgorithm = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreMAIdentifier *)self productVersion];
  [v4 encodeObject:v5 forKey:@"ProductVersion"];

  v6 = [(SUCoreMAIdentifier *)self productBuildVersion];
  [v4 encodeObject:v6 forKey:@"ProductBuildVersion"];

  v7 = [(SUCoreMAIdentifier *)self releaseType];
  [v4 encodeObject:v7 forKey:@"ReleaseType"];

  v8 = [(SUCoreMAIdentifier *)self measurement];
  [v4 encodeObject:v8 forKey:@"Measurement"];

  v9 = [(SUCoreMAIdentifier *)self measurementAlgorithm];
  [v4 encodeObject:v9 forKey:@"MeasurementAlgorithm"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCoreMAIdentifier *)self productVersion];
      v7 = [(SUCoreMAIdentifier *)v5 productVersion];
      if ([SUCore stringIsEqual:v6 to:v7])
      {
        v8 = [(SUCoreMAIdentifier *)self productBuildVersion];
        v9 = [(SUCoreMAIdentifier *)v5 productBuildVersion];
        if ([SUCore stringIsEqual:v8 to:v9])
        {
          v10 = [(SUCoreMAIdentifier *)self releaseType];
          v11 = [(SUCoreMAIdentifier *)v5 releaseType];
          v21 = v10;
          v12 = v10;
          v13 = v11;
          if ([SUCore stringIsEqual:v12 to:v11])
          {
            v14 = [(SUCoreMAIdentifier *)self measurement];
            v19 = [(SUCoreMAIdentifier *)v5 measurement];
            v20 = v14;
            if ([SUCore dataIsEqual:v14 to:?])
            {
              v15 = [(SUCoreMAIdentifier *)self measurementAlgorithm];
              v16 = [(SUCoreMAIdentifier *)v5 measurementAlgorithm];
              v17 = [SUCore stringIsEqual:v15 to:v16];
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SUCoreMAIdentifier *)self productVersion];
  v5 = [(SUCoreMAIdentifier *)self productBuildVersion];
  v6 = [(SUCoreMAIdentifier *)self releaseType];
  v7 = [(SUCoreMAIdentifier *)self measurement];
  v8 = [(SUCoreMAIdentifier *)self measurementAlgorithm];
  v9 = [v3 stringWithFormat:@"\n[>>>\n        productVersion: %@\n   productBuildVersion: %@\n           releaseType: %@\n           measurement: %@\n  measurementAlgorithm: %@\n<<<]", v4, v5, v6, v7, v8];

  return v9;
}

@end