@interface SUCoreMAIdentifier
- (BOOL)isEqual:(id)equal;
- (SUCoreMAIdentifier)initWithCoder:(id)coder;
- (SUCoreMAIdentifier)initWithProductVersion:(id)version productBuildVersion:(id)buildVersion releaseType:(id)type measurement:(id)measurement measurementAlgorithm:(id)algorithm;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreMAIdentifier

- (SUCoreMAIdentifier)initWithProductVersion:(id)version productBuildVersion:(id)buildVersion releaseType:(id)type measurement:(id)measurement measurementAlgorithm:(id)algorithm
{
  versionCopy = version;
  buildVersionCopy = buildVersion;
  typeCopy = type;
  measurementCopy = measurement;
  algorithmCopy = algorithm;
  v21.receiver = self;
  v21.super_class = SUCoreMAIdentifier;
  v17 = [(SUCoreMAIdentifier *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_productVersion, version);
    objc_storeStrong(&v18->_productBuildVersion, buildVersion);
    objc_storeStrong(&v18->_releaseType, type);
    objc_storeStrong(&v18->_measurement, measurement);
    objc_storeStrong(&v18->_measurementAlgorithm, algorithm);
  }

  return v18;
}

- (SUCoreMAIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SUCoreMAIdentifier;
  v5 = [(SUCoreMAIdentifier *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductBuildVersion"];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseType"];
    releaseType = v5->_releaseType;
    v5->_releaseType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Measurement"];
    measurement = v5->_measurement;
    v5->_measurement = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MeasurementAlgorithm"];
    measurementAlgorithm = v5->_measurementAlgorithm;
    v5->_measurementAlgorithm = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  productVersion = [(SUCoreMAIdentifier *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"ProductVersion"];

  productBuildVersion = [(SUCoreMAIdentifier *)self productBuildVersion];
  [coderCopy encodeObject:productBuildVersion forKey:@"ProductBuildVersion"];

  releaseType = [(SUCoreMAIdentifier *)self releaseType];
  [coderCopy encodeObject:releaseType forKey:@"ReleaseType"];

  measurement = [(SUCoreMAIdentifier *)self measurement];
  [coderCopy encodeObject:measurement forKey:@"Measurement"];

  measurementAlgorithm = [(SUCoreMAIdentifier *)self measurementAlgorithm];
  [coderCopy encodeObject:measurementAlgorithm forKey:@"MeasurementAlgorithm"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      productVersion = [(SUCoreMAIdentifier *)self productVersion];
      productVersion2 = [(SUCoreMAIdentifier *)v5 productVersion];
      if ([SUCore stringIsEqual:productVersion to:productVersion2])
      {
        productBuildVersion = [(SUCoreMAIdentifier *)self productBuildVersion];
        productBuildVersion2 = [(SUCoreMAIdentifier *)v5 productBuildVersion];
        if ([SUCore stringIsEqual:productBuildVersion to:productBuildVersion2])
        {
          releaseType = [(SUCoreMAIdentifier *)self releaseType];
          releaseType2 = [(SUCoreMAIdentifier *)v5 releaseType];
          v21 = releaseType;
          v12 = releaseType;
          v13 = releaseType2;
          if ([SUCore stringIsEqual:v12 to:releaseType2])
          {
            measurement = [(SUCoreMAIdentifier *)self measurement];
            measurement2 = [(SUCoreMAIdentifier *)v5 measurement];
            v20 = measurement;
            if ([SUCore dataIsEqual:measurement to:?])
            {
              measurementAlgorithm = [(SUCoreMAIdentifier *)self measurementAlgorithm];
              measurementAlgorithm2 = [(SUCoreMAIdentifier *)v5 measurementAlgorithm];
              v17 = [SUCore stringIsEqual:measurementAlgorithm to:measurementAlgorithm2];
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
  productVersion = [(SUCoreMAIdentifier *)self productVersion];
  productBuildVersion = [(SUCoreMAIdentifier *)self productBuildVersion];
  releaseType = [(SUCoreMAIdentifier *)self releaseType];
  measurement = [(SUCoreMAIdentifier *)self measurement];
  measurementAlgorithm = [(SUCoreMAIdentifier *)self measurementAlgorithm];
  v9 = [v3 stringWithFormat:@"\n[>>>\n        productVersion: %@\n   productBuildVersion: %@\n           releaseType: %@\n           measurement: %@\n  measurementAlgorithm: %@\n<<<]", productVersion, productBuildVersion, releaseType, measurement, measurementAlgorithm];

  return v9;
}

@end