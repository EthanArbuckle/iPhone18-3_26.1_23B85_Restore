@interface SMSessionDestination
+ (id)destinationTypeToString:(unint64_t)string;
+ (unint64_t)convertPlaceTypeToDestinationType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (CLLocation)clLocation;
- (SMSessionDestination)initWithCLLocation:(id)location eta:(id)eta radius:(double)radius destinationType:(unint64_t)type destinationMapItem:(id)item;
- (SMSessionDestination)initWithCoder:(id)coder;
- (SMSessionDestination)initWithDictionary:(id)dictionary;
- (SMSessionDestination)initWithLocation:(id)location eta:(id)eta radius:(double)radius destinationType:(unint64_t)type destinationMapItem:(id)item;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionDestination

- (SMSessionDestination)initWithCLLocation:(id)location eta:(id)eta radius:(double)radius destinationType:(unint64_t)type destinationMapItem:(id)item
{
  itemCopy = item;
  etaCopy = eta;
  locationCopy = location;
  if ([locationCopy type] == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = objc_alloc(MEMORY[0x277D01160]);
  [locationCopy coordinate];
  v18 = v17;
  [locationCopy coordinate];
  v20 = v19;
  [locationCopy horizontalAccuracy];
  v22 = v21;
  [locationCopy altitude];
  v24 = v23;
  [locationCopy verticalAccuracy];
  v26 = v25;
  timestamp = [locationCopy timestamp];
  referenceFrame = [locationCopy referenceFrame];
  [locationCopy speed];
  v30 = v29;

  v31 = [v16 initWithLatitude:timestamp longitude:referenceFrame horizontalUncertainty:v15 altitude:v18 verticalUncertainty:v20 date:v22 referenceFrame:v24 speed:v26 sourceAccuracy:v30];
  v32 = [(SMSessionDestination *)self initWithLocation:v31 eta:etaCopy radius:type destinationType:itemCopy destinationMapItem:radius];

  return v32;
}

- (SMSessionDestination)initWithLocation:(id)location eta:(id)eta radius:(double)radius destinationType:(unint64_t)type destinationMapItem:(id)item
{
  locationCopy = location;
  etaCopy = eta;
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = SMSessionDestination;
  v16 = [(SMSessionDestination *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_location, location);
    objc_storeStrong(&v17->_eta, eta);
    v17->_radius = radius;
    v17->_destinationType = type;
    objc_storeStrong(&v17->_destinationMapItem, item);
  }

  return v17;
}

- (CLLocation)clLocation
{
  v3 = objc_alloc(MEMORY[0x277CE41F8]);
  location = [(SMSessionDestination *)self location];
  [location latitude];
  v6 = v5;
  location2 = [(SMSessionDestination *)self location];
  [location2 longitude];
  v9 = CLLocationCoordinate2DMake(v6, v8);
  location3 = [(SMSessionDestination *)self location];
  [location3 altitude];
  v12 = v11;
  location4 = [(SMSessionDestination *)self location];
  [location4 horizontalUncertainty];
  v15 = v14;
  location5 = [(SMSessionDestination *)self location];
  [location5 verticalUncertainty];
  v18 = v17;
  location6 = [(SMSessionDestination *)self location];
  date = [location6 date];
  location7 = [(SMSessionDestination *)self location];
  v22 = [v3 initWithCoordinate:date altitude:objc_msgSend(location7 horizontalAccuracy:"referenceFrame") verticalAccuracy:v9.latitude timestamp:v9.longitude referenceFrame:{v12, v15, v18}];

  return v22;
}

- (SMSessionDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionDestinationLocationKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionDestinationEtaKey"];
  [coderCopy decodeDoubleForKey:@"__kSMSessionDestinationRadiusKey"];
  v8 = v7;
  v9 = [coderCopy decodeIntegerForKey:@"__kSMSessionDestinationDestinationTypeKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionDestinationDestinationMapItem"];

  v11 = [(SMSessionDestination *)self initWithLocation:v5 eta:v6 radius:v9 destinationType:v10 destinationMapItem:v8];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(SMSessionDestination *)self location];
  [coderCopy encodeObject:location forKey:@"__kSMSessionDestinationLocationKey"];

  v6 = [(SMSessionDestination *)self eta];
  [coderCopy encodeObject:v6 forKey:@"__kSMSessionDestinationEtaKey"];

  [(SMSessionDestination *)self radius];
  [coderCopy encodeDouble:@"__kSMSessionDestinationRadiusKey" forKey:?];
  [coderCopy encodeInteger:-[SMSessionDestination destinationType](self forKey:{"destinationType"), @"__kSMSessionDestinationDestinationTypeKey"}];
  destinationMapItem = [(SMSessionDestination *)self destinationMapItem];
  [coderCopy encodeObject:destinationMapItem forKey:@"__kSMSessionDestinationDestinationMapItem"];
}

- (unint64_t)hash
{
  location = [(SMSessionDestination *)self location];
  v4 = [location hash];
  v5 = [(SMSessionDestination *)self eta];
  v6 = [v5 hash] ^ v4;
  [(SMSessionDestination *)self radius];
  v8 = v7;
  v9 = v6 ^ [(SMSessionDestination *)self destinationType];
  destinationMapItem = [(SMSessionDestination *)self destinationMapItem];
  v11 = v9 ^ [destinationMapItem hash];

  return v11 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      location = [(SMSessionDestination *)self location];
      [location latitude];
      v8 = v7;
      location2 = [(SMSessionDestination *)v5 location];
      [location2 latitude];
      v11 = v10;
      if (v8 != v10)
      {
        location3 = [(SMSessionDestination *)self location];
        [location3 latitude];
        v13 = v12;
        location4 = [(SMSessionDestination *)v5 location];
        [location4 latitude];
        if (vabdd_f64(v13, v15) >= 2.22044605e-16)
        {
          v16 = 0;
          goto LABEL_29;
        }

        v46 = location4;
      }

      location5 = [(SMSessionDestination *)self location];
      [location5 longitude];
      v19 = v18;
      location6 = [(SMSessionDestination *)v5 location];
      [location6 longitude];
      v22 = v21;
      if (v19 != v21)
      {
        location7 = [(SMSessionDestination *)self location];
        [location7 longitude];
        v25 = v24;
        location8 = [(SMSessionDestination *)v5 location];
        [location8 longitude];
        if (vabdd_f64(v25, v27) >= 2.22044605e-16)
        {
          v16 = 0;
LABEL_27:

LABEL_28:
          location4 = v46;
          if (v8 == v11)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }

        v44 = location8;
        v45 = location7;
      }

      v28 = [(SMSessionDestination *)self eta];
      v29 = [(SMSessionDestination *)v5 eta];
      if (v28 == v29)
      {
        v43 = location5;
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

        v43 = location5;
      }

      [(SMSessionDestination *)self radius];
      v32 = v31;
      [(SMSessionDestination *)v5 radius];
      if (v32 == v33 && (v34 = [(SMSessionDestination *)self destinationType], v34 == [(SMSessionDestination *)v5 destinationType]))
      {
        destinationMapItem = [(SMSessionDestination *)self destinationMapItem];
        destinationMapItem2 = [(SMSessionDestination *)v5 destinationMapItem];
        if (destinationMapItem == destinationMapItem2)
        {

          v16 = 1;
        }

        else
        {
          v40 = destinationMapItem2;
          destinationMapItem3 = [(SMSessionDestination *)self destinationMapItem];
          destinationMapItem4 = [(SMSessionDestination *)v5 destinationMapItem];
          v16 = [destinationMapItem3 isEqual:destinationMapItem4];
        }
      }

      else
      {
        v16 = 0;
      }

      location5 = v43;
      if (v28 == v29)
      {
LABEL_26:

        location8 = v44;
        location7 = v45;
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

- (SMSessionDestination)initWithDictionary:(id)dictionary
{
  v4 = MEMORY[0x277D01160];
  dictionaryCopy = dictionary;
  v6 = [[v4 alloc] initWithDictionary:dictionaryCopy];
  v7 = [[SMSessionDestinationEta alloc] initWithDictionary:dictionaryCopy];
  v8 = [dictionaryCopy valueForKey:@"__kSMSessionDestinationRadiusKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [dictionaryCopy valueForKey:@"__kSMSessionDestinationDestinationTypeKey"];
  integerValue = [v11 integerValue];

  v13 = [dictionaryCopy valueForKey:@"__kSMSessionDestinationDestinationMapItem"];

  v14 = [(SMSessionDestination *)self initWithLocation:v6 eta:v7 radius:integerValue destinationType:v13 destinationMapItem:v10];
  return v14;
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  location = [(SMSessionDestination *)self location];
  outputToDictionary = [location outputToDictionary];
  [v3 addEntriesFromDictionary:outputToDictionary];

  v6 = MEMORY[0x277CCABB0];
  [(SMSessionDestination *)self radius];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKey:@"__kSMSessionDestinationRadiusKey"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionDestination destinationType](self, "destinationType")}];
  [v3 setObject:v8 forKey:@"__kSMSessionDestinationDestinationTypeKey"];

  destinationMapItem = [(SMSessionDestination *)self destinationMapItem];
  [v3 setObject:destinationMapItem forKey:@"__kSMSessionDestinationDestinationMapItem"];

  v10 = [(SMSessionDestination *)self eta];

  if (v10)
  {
    v11 = [(SMSessionDestination *)self eta];
    outputToDictionary2 = [v11 outputToDictionary];
    [v3 addEntriesFromDictionary:outputToDictionary2];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  location = [(SMSessionDestination *)self location];
  [location latitude];
  v6 = v5;
  location2 = [(SMSessionDestination *)self location];
  [location2 longitude];
  v9 = v8;
  location3 = [(SMSessionDestination *)self location];
  [location3 horizontalUncertainty];
  v12 = v11;
  location4 = [(SMSessionDestination *)self location];
  referenceFrame = [location4 referenceFrame];
  [(SMSessionDestination *)self radius];
  v16 = v15;
  v17 = [(SMSessionDestination *)self eta];
  v18 = [objc_opt_class() destinationTypeToString:{-[SMSessionDestination destinationType](self, "destinationType")}];
  destinationMapItem = [(SMSessionDestination *)self destinationMapItem];
  v20 = [v3 stringWithFormat:@"location, <%.8f, %.8f> +/- %.2f, referenceFrame %d, radius, %.3f, eta, %@, destinationType, %@, destinationMapItem, %lu", v6, v9, v12, referenceFrame, v16, v17, v18, objc_msgSend(destinationMapItem, "length")];

  return v20;
}

+ (id)destinationTypeToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279B65040[string - 1];
  }
}

+ (unint64_t)convertPlaceTypeToDestinationType:(unint64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return qword_2645DA7F8[type];
  }
}

@end