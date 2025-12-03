@interface PPLocation
+ (id)clusterIdentifierFromPlacemark:(id)placemark;
+ (id)describeCategory:(unsigned __int16)category;
+ (unsigned)categoryForDescription:(id)description;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLocation:(id)location;
- (NSSet)featureNames;
- (PPLocation)initWithCoder:(id)coder;
- (PPLocation)initWithPlacemark:(id)placemark category:(unsigned __int16)category mostRelevantRecord:(id)record;
- (id)customizedDescription;
- (id)description;
- (id)featureValueForName:(id)name;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPLocation

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"category_"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithInt64:{-[PPLocation category](self, "category")}];
    goto LABEL_9;
  }

  if ([nameCopy hasPrefix:@"placemark_"])
  {
    placemark = [(PPLocation *)self placemark];
    v7 = [nameCopy substringFromIndex:{objc_msgSend(@"placemark_", "length")}];
    v8 = [placemark pp_featureValueForName:v7];
LABEL_7:
    v5 = v8;

    goto LABEL_9;
  }

  if ([nameCopy hasPrefix:@"record_"])
  {
    placemark = [(PPLocation *)self mostRelevantRecord];
    v7 = [nameCopy substringFromIndex:{objc_msgSend(@"record_", "length")}];
    v8 = [placemark featureValueForName:v7];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (NSSet)featureNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__PPLocation_featureNames__block_invoke;
  block[3] = &unk_1E77F7CC8;
  block[4] = self;
  if (featureNames__pasOnceToken8 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken8, block);
  }

  return featureNames__pasExprOnceResult_3781;
}

void __26__PPLocation_featureNames__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"category_", 0}];
  objc_autoreleasePoolPop(v3);
  v5 = [*(a1 + 32) placemark];
  v6 = [v5 pp_featureNames];
  v7 = [v6 allObjects];
  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_3783];

  v9 = [*(a1 + 32) mostRelevantRecord];
  v10 = [v9 featureNames];
  v11 = [v10 allObjects];
  v12 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_207];

  v13 = [v4 setByAddingObjectsFromArray:v8];
  v14 = [v13 setByAddingObjectsFromArray:v12];

  v15 = featureNames__pasExprOnceResult_3781;
  featureNames__pasExprOnceResult_3781 = v14;

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)hash
{
  name = [(CLPlacemark *)self->_placemark name];
  v4 = [name hash];

  thoroughfare = [(CLPlacemark *)self->_placemark thoroughfare];
  v6 = [thoroughfare hash] - v4 + 32 * v4;

  subThoroughfare = [(CLPlacemark *)self->_placemark subThoroughfare];
  v8 = [subThoroughfare hash] - v6 + 32 * v6;

  locality = [(CLPlacemark *)self->_placemark locality];
  v10 = [locality hash] - v8 + 32 * v8;

  subLocality = [(CLPlacemark *)self->_placemark subLocality];
  v12 = [subLocality hash] - v10 + 32 * v10;

  administrativeArea = [(CLPlacemark *)self->_placemark administrativeArea];
  v14 = [administrativeArea hash] - v12 + 32 * v12;

  subAdministrativeArea = [(CLPlacemark *)self->_placemark subAdministrativeArea];
  v16 = [subAdministrativeArea hash] - v14 + 32 * v14;

  postalCode = [(CLPlacemark *)self->_placemark postalCode];
  v18 = [postalCode hash] - v16 + 32 * v16;

  country = [(CLPlacemark *)self->_placemark country];
  v20 = [country hash] - v18 + 32 * v18;

  return self->_category - v20 + 32 * v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPLocation *)self isEqualToLocation:v5];
  }

  return v6;
}

- (id)customizedDescription
{
  placemark = self->_placemark;
  v4 = &stru_1F1B327D8;
  if (placemark)
  {
    postalAddress = [(CLPlacemark *)placemark postalAddress];
    v6 = [postalAddress mutableCopy];

    street = [v6 street];
    v8 = [street length];

    if (!v8)
    {
      v9 = objc_opt_new();
      subThoroughfare = [(CLPlacemark *)self->_placemark subThoroughfare];

      if (subThoroughfare)
      {
        subThoroughfare2 = [(CLPlacemark *)self->_placemark subThoroughfare];
        [v9 appendString:subThoroughfare2];
      }

      thoroughfare = [(CLPlacemark *)self->_placemark thoroughfare];

      if (thoroughfare)
      {
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        thoroughfare2 = [(CLPlacemark *)self->_placemark thoroughfare];
        v15 = [v13 initWithFormat:@" %@", thoroughfare2];
        [v9 appendString:v15];
      }

      [v6 setStreet:v9];
    }

    v16 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:v6 addCountryName:0];
    if ([v16 length])
    {
      name = v16;
    }

    else
    {
      name = [(CLPlacemark *)self->_placemark name];
    }

    v18 = name;
    if (name)
    {
      v19 = name;
    }

    else
    {
      v19 = &stru_1F1B327D8;
    }

    v4 = v19;
  }

  return v4;
}

- (BOOL)isEqualToLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  if (locationCopy == self)
  {
    v16 = 1;
    goto LABEL_52;
  }

  if (!locationCopy)
  {
    goto LABEL_51;
  }

  name = [(CLPlacemark *)self->_placemark name];
  name2 = [(CLPlacemark *)v5->_placemark name];
  if (name | name2)
  {
    v17 = name2;
    if (!name || !name2)
    {
      goto LABEL_50;
    }

    v18 = [name isEqualToString:name2];

    if (!v18)
    {
      goto LABEL_51;
    }
  }

  name = [(CLPlacemark *)self->_placemark thoroughfare];
  thoroughfare = [(CLPlacemark *)v5->_placemark thoroughfare];
  if (name | thoroughfare)
  {
    v17 = thoroughfare;
    if (!name || !thoroughfare)
    {
      goto LABEL_50;
    }

    v19 = [name isEqualToString:thoroughfare];

    if (!v19)
    {
      goto LABEL_51;
    }
  }

  name = [(CLPlacemark *)self->_placemark subThoroughfare];
  subThoroughfare = [(CLPlacemark *)v5->_placemark subThoroughfare];
  if (name | subThoroughfare)
  {
    v17 = subThoroughfare;
    if (!name || !subThoroughfare)
    {
      goto LABEL_50;
    }

    v20 = [name isEqualToString:subThoroughfare];

    if (!v20)
    {
      goto LABEL_51;
    }
  }

  name = [(CLPlacemark *)self->_placemark locality];
  locality = [(CLPlacemark *)v5->_placemark locality];
  if (name | locality)
  {
    v17 = locality;
    if (!name || !locality)
    {
      goto LABEL_50;
    }

    v21 = [name isEqualToString:locality];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  name = [(CLPlacemark *)self->_placemark subLocality];
  subLocality = [(CLPlacemark *)v5->_placemark subLocality];
  if (name | subLocality)
  {
    v17 = subLocality;
    if (!name || !subLocality)
    {
      goto LABEL_50;
    }

    v22 = [name isEqualToString:subLocality];

    if (!v22)
    {
      goto LABEL_51;
    }
  }

  name = [(CLPlacemark *)self->_placemark administrativeArea];
  administrativeArea = [(CLPlacemark *)v5->_placemark administrativeArea];
  if (name | administrativeArea)
  {
    v17 = administrativeArea;
    if (!name || !administrativeArea)
    {
      goto LABEL_50;
    }

    v23 = [name isEqualToString:administrativeArea];

    if (!v23)
    {
      goto LABEL_51;
    }
  }

  name = [(CLPlacemark *)self->_placemark subAdministrativeArea];
  subAdministrativeArea = [(CLPlacemark *)v5->_placemark subAdministrativeArea];
  if (name | subAdministrativeArea)
  {
    v17 = subAdministrativeArea;
    if (!name || !subAdministrativeArea)
    {
      goto LABEL_50;
    }

    v24 = [name isEqualToString:subAdministrativeArea];

    if (!v24)
    {
      goto LABEL_51;
    }
  }

  name = [(CLPlacemark *)self->_placemark postalCode];
  postalCode = [(CLPlacemark *)v5->_placemark postalCode];
  if (name | postalCode)
  {
    v17 = postalCode;
    if (!name || !postalCode)
    {
      goto LABEL_50;
    }

    v25 = [name isEqualToString:postalCode];

    if (!v25)
    {
      goto LABEL_51;
    }
  }

  name = [(CLPlacemark *)self->_placemark country];
  country = [(CLPlacemark *)v5->_placemark country];
  if (name | country)
  {
    v17 = country;
    if (name && country)
    {
      v26 = [name isEqualToString:country];

      if (v26)
      {
        goto LABEL_12;
      }

LABEL_51:
      v16 = 0;
      goto LABEL_52;
    }

LABEL_50:

    goto LABEL_51;
  }

LABEL_12:
  v16 = self->_category == v5->_category;
LABEL_52:

  return v16;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  placemark = self->_placemark;
  v5 = [PPLocation describeCategory:self->_category];
  v6 = [v3 initWithFormat:@"<PPLocation p:'%@' c:%@ r:%@>", placemark, v5, self->_mostRelevantRecord];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  placemark = self->_placemark;
  coderCopy = coder;
  [coderCopy encodeObject:placemark forKey:@"pmk"];
  [coderCopy encodeInt32:self->_category forKey:@"cat"];
  [coderCopy encodeObject:self->_mostRelevantRecord forKey:@"mrr"];
}

- (PPLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pmk"];
  v6 = [coderCopy decodeInt32ForKey:@"cat"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mrr"];

  if (v5)
  {
    self = [(PPLocation *)self initWithPlacemark:v5 category:v6 mostRelevantRecord:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PPLocation)initWithPlacemark:(id)placemark category:(unsigned __int16)category mostRelevantRecord:(id)record
{
  placemarkCopy = placemark;
  recordCopy = record;
  if (!placemarkCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"placemark"}];
  }

  v18.receiver = self;
  v18.super_class = PPLocation;
  v12 = [(PPLocation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_placemark, placemark);
    v13->_category = category;
    objc_storeStrong(&v13->_mostRelevantRecord, record);
    v14 = [PPLocation clusterIdentifierFromPlacemark:placemarkCopy];
    clusterIdentifier = v13->_clusterIdentifier;
    v13->_clusterIdentifier = v14;
  }

  return v13;
}

+ (id)clusterIdentifierFromPlacemark:(id)placemark
{
  v28[3] = *MEMORY[0x1E69E9840];
  placemarkCopy = placemark;
  v4 = objc_autoreleasePoolPush();
  name = [placemarkCopy name];
  v6 = [name length];

  subThoroughfare = [placemarkCopy subThoroughfare];
  name2 = subThoroughfare;
  if (v6)
  {
    if (subThoroughfare)
    {
      thoroughfare = [placemarkCopy thoroughfare];

      if (thoroughfare)
      {
        name2 = [placemarkCopy name];
        v28[0] = name2;
        subThoroughfare2 = [placemarkCopy subThoroughfare];
        v28[1] = subThoroughfare2;
        thoroughfare2 = [placemarkCopy thoroughfare];
        v28[2] = thoroughfare2;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
        v13 = [v12 _pas_componentsJoinedByString:@" "];

LABEL_11:
        name2 = v13;
        goto LABEL_12;
      }
    }

    thoroughfare3 = [placemarkCopy thoroughfare];

    name3 = [placemarkCopy name];
    name2 = name3;
    if (!thoroughfare3)
    {
      goto LABEL_12;
    }

    v27[0] = name3;
    subThoroughfare2 = [placemarkCopy thoroughfare];
    v27[1] = subThoroughfare2;
    v16 = MEMORY[0x1E695DEC8];
    v17 = v27;
LABEL_10:
    thoroughfare2 = [v16 arrayWithObjects:v17 count:2];
    v13 = [thoroughfare2 _pas_componentsJoinedByString:@" "];
    goto LABEL_11;
  }

  if (!subThoroughfare)
  {
    goto LABEL_12;
  }

  thoroughfare4 = [placemarkCopy thoroughfare];

  if (thoroughfare4)
  {
    name2 = [placemarkCopy subThoroughfare];
    subThoroughfare2 = [placemarkCopy thoroughfare];
    v26[1] = subThoroughfare2;
    v16 = MEMORY[0x1E695DEC8];
    v17 = v26;
    goto LABEL_10;
  }

  name2 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v4);
  if (![name2 length])
  {
    thoroughfare5 = [placemarkCopy thoroughfare];

    name2 = thoroughfare5;
  }

  if (![name2 length])
  {
    locality = [placemarkCopy locality];

    name2 = locality;
  }

  if (![name2 length])
  {
    administrativeArea = [placemarkCopy administrativeArea];

    name2 = administrativeArea;
  }

  v22 = objc_autoreleasePoolPush();
  lowercaseString = [name2 lowercaseString];
  objc_autoreleasePoolPop(v22);

  v24 = *MEMORY[0x1E69E9840];

  return lowercaseString;
}

+ (unsigned)categoryForDescription:(id)description
{
  descriptionCopy = description;
  if ([descriptionCopy isEqualToString:@"restaurant"])
  {
    v4 = 2;
  }

  else if ([descriptionCopy isEqualToString:@"organization"])
  {
    v4 = 1;
  }

  else if ([descriptionCopy isEqualToString:@"activity location"])
  {
    v4 = 3;
  }

  else if ([descriptionCopy isEqualToString:@"tourist attraction"])
  {
    v4 = 4;
  }

  else if ([descriptionCopy isEqualToString:@"work"])
  {
    v4 = 6;
  }

  else if ([descriptionCopy isEqualToString:@"home"])
  {
    v4 = 5;
  }

  else if ([descriptionCopy isEqualToString:@"dynamic"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)describeCategory:(unsigned __int16)category
{
  if (category > 7u)
  {
    return @"restaurant";
  }

  else
  {
    return off_1E77F6BD8[category];
  }
}

@end