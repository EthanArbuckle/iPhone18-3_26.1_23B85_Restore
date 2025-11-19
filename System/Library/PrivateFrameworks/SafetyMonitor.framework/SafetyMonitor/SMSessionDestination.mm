@interface SMSessionDestination
+ (id)destinationTypeToString:(unint64_t)a3;
+ (unint64_t)convertPlaceTypeToDestinationType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CLLocation)clLocation;
- (SMSessionDestination)initWithCLLocation:(id)a3 eta:(id)a4 radius:(double)a5 destinationType:(unint64_t)a6 destinationMapItem:(id)a7;
- (SMSessionDestination)initWithCoder:(id)a3;
- (SMSessionDestination)initWithDictionary:(id)a3;
- (SMSessionDestination)initWithLocation:(id)a3 eta:(id)a4 radius:(double)a5 destinationType:(unint64_t)a6 destinationMapItem:(id)a7;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionDestination

- (SMSessionDestination)initWithCLLocation:(id)a3 eta:(id)a4 radius:(double)a5 destinationType:(unint64_t)a6 destinationMapItem:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  if ([v14 type] == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = objc_alloc(MEMORY[0x277D01160]);
  [v14 coordinate];
  v18 = v17;
  [v14 coordinate];
  v20 = v19;
  [v14 horizontalAccuracy];
  v22 = v21;
  [v14 altitude];
  v24 = v23;
  [v14 verticalAccuracy];
  v26 = v25;
  v27 = [v14 timestamp];
  v28 = [v14 referenceFrame];
  [v14 speed];
  v30 = v29;

  v31 = [v16 initWithLatitude:v27 longitude:v28 horizontalUncertainty:v15 altitude:v18 verticalUncertainty:v20 date:v22 referenceFrame:v24 speed:v26 sourceAccuracy:v30];
  v32 = [(SMSessionDestination *)self initWithLocation:v31 eta:v13 radius:a6 destinationType:v12 destinationMapItem:a5];

  return v32;
}

- (SMSessionDestination)initWithLocation:(id)a3 eta:(id)a4 radius:(double)a5 destinationType:(unint64_t)a6 destinationMapItem:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = SMSessionDestination;
  v16 = [(SMSessionDestination *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_location, a3);
    objc_storeStrong(&v17->_eta, a4);
    v17->_radius = a5;
    v17->_destinationType = a6;
    objc_storeStrong(&v17->_destinationMapItem, a7);
  }

  return v17;
}

- (CLLocation)clLocation
{
  v3 = objc_alloc(MEMORY[0x277CE41F8]);
  v4 = [(SMSessionDestination *)self location];
  [v4 latitude];
  v6 = v5;
  v7 = [(SMSessionDestination *)self location];
  [v7 longitude];
  v9 = CLLocationCoordinate2DMake(v6, v8);
  v10 = [(SMSessionDestination *)self location];
  [v10 altitude];
  v12 = v11;
  v13 = [(SMSessionDestination *)self location];
  [v13 horizontalUncertainty];
  v15 = v14;
  v16 = [(SMSessionDestination *)self location];
  [v16 verticalUncertainty];
  v18 = v17;
  v19 = [(SMSessionDestination *)self location];
  v20 = [v19 date];
  v21 = [(SMSessionDestination *)self location];
  v22 = [v3 initWithCoordinate:v20 altitude:objc_msgSend(v21 horizontalAccuracy:"referenceFrame") verticalAccuracy:v9.latitude timestamp:v9.longitude referenceFrame:{v12, v15, v18}];

  return v22;
}

- (SMSessionDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionDestinationLocationKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionDestinationEtaKey"];
  [v4 decodeDoubleForKey:@"__kSMSessionDestinationRadiusKey"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"__kSMSessionDestinationDestinationTypeKey"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionDestinationDestinationMapItem"];

  v11 = [(SMSessionDestination *)self initWithLocation:v5 eta:v6 radius:v9 destinationType:v10 destinationMapItem:v8];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SMSessionDestination *)self location];
  [v4 encodeObject:v5 forKey:@"__kSMSessionDestinationLocationKey"];

  v6 = [(SMSessionDestination *)self eta];
  [v4 encodeObject:v6 forKey:@"__kSMSessionDestinationEtaKey"];

  [(SMSessionDestination *)self radius];
  [v4 encodeDouble:@"__kSMSessionDestinationRadiusKey" forKey:?];
  [v4 encodeInteger:-[SMSessionDestination destinationType](self forKey:{"destinationType"), @"__kSMSessionDestinationDestinationTypeKey"}];
  v7 = [(SMSessionDestination *)self destinationMapItem];
  [v4 encodeObject:v7 forKey:@"__kSMSessionDestinationDestinationMapItem"];
}

- (unint64_t)hash
{
  v3 = [(SMSessionDestination *)self location];
  v4 = [v3 hash];
  v5 = [(SMSessionDestination *)self eta];
  v6 = [v5 hash] ^ v4;
  [(SMSessionDestination *)self radius];
  v8 = v7;
  v9 = v6 ^ [(SMSessionDestination *)self destinationType];
  v10 = [(SMSessionDestination *)self destinationMapItem];
  v11 = v9 ^ [v10 hash];

  return v11 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMSessionDestination *)self location];
      [v6 latitude];
      v8 = v7;
      v9 = [(SMSessionDestination *)v5 location];
      [v9 latitude];
      v11 = v10;
      if (v8 != v10)
      {
        v47 = [(SMSessionDestination *)self location];
        [v47 latitude];
        v13 = v12;
        v14 = [(SMSessionDestination *)v5 location];
        [v14 latitude];
        if (vabdd_f64(v13, v15) >= 2.22044605e-16)
        {
          v16 = 0;
          goto LABEL_29;
        }

        v46 = v14;
      }

      v17 = [(SMSessionDestination *)self location];
      [v17 longitude];
      v19 = v18;
      v20 = [(SMSessionDestination *)v5 location];
      [v20 longitude];
      v22 = v21;
      if (v19 != v21)
      {
        v23 = [(SMSessionDestination *)self location];
        [v23 longitude];
        v25 = v24;
        v26 = [(SMSessionDestination *)v5 location];
        [v26 longitude];
        if (vabdd_f64(v25, v27) >= 2.22044605e-16)
        {
          v16 = 0;
LABEL_27:

LABEL_28:
          v14 = v46;
          if (v8 == v11)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }

        v44 = v26;
        v45 = v23;
      }

      v28 = [(SMSessionDestination *)self eta];
      v29 = [(SMSessionDestination *)v5 eta];
      if (v28 == v29)
      {
        v43 = v17;
      }

      else
      {
        v30 = [(SMSessionDestination *)self eta];
        v41 = [(SMSessionDestination *)v5 eta];
        v42 = v30;
        if (![v30 isEqual:v41])
        {
          v16 = 0;
          goto LABEL_25;
        }

        v43 = v17;
      }

      [(SMSessionDestination *)self radius];
      v32 = v31;
      [(SMSessionDestination *)v5 radius];
      if (v32 == v33 && (v34 = [(SMSessionDestination *)self destinationType], v34 == [(SMSessionDestination *)v5 destinationType]))
      {
        v35 = [(SMSessionDestination *)self destinationMapItem];
        v36 = [(SMSessionDestination *)v5 destinationMapItem];
        if (v35 == v36)
        {

          v16 = 1;
        }

        else
        {
          v40 = v36;
          v39 = [(SMSessionDestination *)self destinationMapItem];
          v37 = [(SMSessionDestination *)v5 destinationMapItem];
          v16 = [v39 isEqual:v37];
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v43;
      if (v28 == v29)
      {
LABEL_26:

        v26 = v44;
        v23 = v45;
        if (v19 == v22)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_25:

      goto LABEL_26;
    }

    v16 = 0;
  }

LABEL_31:

  return v16;
}

- (SMSessionDestination)initWithDictionary:(id)a3
{
  v4 = MEMORY[0x277D01160];
  v5 = a3;
  v6 = [[v4 alloc] initWithDictionary:v5];
  v7 = [[SMSessionDestinationEta alloc] initWithDictionary:v5];
  v8 = [v5 valueForKey:@"__kSMSessionDestinationRadiusKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v5 valueForKey:@"__kSMSessionDestinationDestinationTypeKey"];
  v12 = [v11 integerValue];

  v13 = [v5 valueForKey:@"__kSMSessionDestinationDestinationMapItem"];

  v14 = [(SMSessionDestination *)self initWithLocation:v6 eta:v7 radius:v12 destinationType:v13 destinationMapItem:v10];
  return v14;
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  v4 = [(SMSessionDestination *)self location];
  v5 = [v4 outputToDictionary];
  [v3 addEntriesFromDictionary:v5];

  v6 = MEMORY[0x277CCABB0];
  [(SMSessionDestination *)self radius];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKey:@"__kSMSessionDestinationRadiusKey"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionDestination destinationType](self, "destinationType")}];
  [v3 setObject:v8 forKey:@"__kSMSessionDestinationDestinationTypeKey"];

  v9 = [(SMSessionDestination *)self destinationMapItem];
  [v3 setObject:v9 forKey:@"__kSMSessionDestinationDestinationMapItem"];

  v10 = [(SMSessionDestination *)self eta];

  if (v10)
  {
    v11 = [(SMSessionDestination *)self eta];
    v12 = [v11 outputToDictionary];
    [v3 addEntriesFromDictionary:v12];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMSessionDestination *)self location];
  [v4 latitude];
  v6 = v5;
  v7 = [(SMSessionDestination *)self location];
  [v7 longitude];
  v9 = v8;
  v10 = [(SMSessionDestination *)self location];
  [v10 horizontalUncertainty];
  v12 = v11;
  v13 = [(SMSessionDestination *)self location];
  v14 = [v13 referenceFrame];
  [(SMSessionDestination *)self radius];
  v16 = v15;
  v17 = [(SMSessionDestination *)self eta];
  v18 = [objc_opt_class() destinationTypeToString:{-[SMSessionDestination destinationType](self, "destinationType")}];
  v19 = [(SMSessionDestination *)self destinationMapItem];
  v20 = [v3 stringWithFormat:@"location, <%.8f, %.8f> +/- %.2f, referenceFrame %d, radius, %.3f, eta, %@, destinationType, %@, destinationMapItem, %lu", v6, v9, v12, v14, v16, v17, v18, objc_msgSend(v19, "length")];

  return v20;
}

+ (id)destinationTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279B65040[a3 - 1];
  }
}

+ (unint64_t)convertPlaceTypeToDestinationType:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_2645DA7F8[a3];
  }
}

@end