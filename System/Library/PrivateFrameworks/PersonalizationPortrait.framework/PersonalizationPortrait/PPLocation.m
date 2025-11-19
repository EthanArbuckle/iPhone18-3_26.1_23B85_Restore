@interface PPLocation
+ (id)clusterIdentifierFromPlacemark:(id)a3;
+ (id)describeCategory:(unsigned __int16)a3;
+ (unsigned)categoryForDescription:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLocation:(id)a3;
- (NSSet)featureNames;
- (PPLocation)initWithCoder:(id)a3;
- (PPLocation)initWithPlacemark:(id)a3 category:(unsigned __int16)a4 mostRelevantRecord:(id)a5;
- (id)customizedDescription;
- (id)description;
- (id)featureValueForName:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPLocation

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"category_"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithInt64:{-[PPLocation category](self, "category")}];
    goto LABEL_9;
  }

  if ([v4 hasPrefix:@"placemark_"])
  {
    v6 = [(PPLocation *)self placemark];
    v7 = [v4 substringFromIndex:{objc_msgSend(@"placemark_", "length")}];
    v8 = [v6 pp_featureValueForName:v7];
LABEL_7:
    v5 = v8;

    goto LABEL_9;
  }

  if ([v4 hasPrefix:@"record_"])
  {
    v6 = [(PPLocation *)self mostRelevantRecord];
    v7 = [v4 substringFromIndex:{objc_msgSend(@"record_", "length")}];
    v8 = [v6 featureValueForName:v7];
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
  v3 = [(CLPlacemark *)self->_placemark name];
  v4 = [v3 hash];

  v5 = [(CLPlacemark *)self->_placemark thoroughfare];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(CLPlacemark *)self->_placemark subThoroughfare];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(CLPlacemark *)self->_placemark locality];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = [(CLPlacemark *)self->_placemark subLocality];
  v12 = [v11 hash] - v10 + 32 * v10;

  v13 = [(CLPlacemark *)self->_placemark administrativeArea];
  v14 = [v13 hash] - v12 + 32 * v12;

  v15 = [(CLPlacemark *)self->_placemark subAdministrativeArea];
  v16 = [v15 hash] - v14 + 32 * v14;

  v17 = [(CLPlacemark *)self->_placemark postalCode];
  v18 = [v17 hash] - v16 + 32 * v16;

  v19 = [(CLPlacemark *)self->_placemark country];
  v20 = [v19 hash] - v18 + 32 * v18;

  return self->_category - v20 + 32 * v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPLocation *)self isEqualToLocation:v5];
  }

  return v6;
}

- (id)customizedDescription
{
  placemark = self->_placemark;
  v4 = &stru_1F1B327D8;
  if (placemark)
  {
    v5 = [(CLPlacemark *)placemark postalAddress];
    v6 = [v5 mutableCopy];

    v7 = [v6 street];
    v8 = [v7 length];

    if (!v8)
    {
      v9 = objc_opt_new();
      v10 = [(CLPlacemark *)self->_placemark subThoroughfare];

      if (v10)
      {
        v11 = [(CLPlacemark *)self->_placemark subThoroughfare];
        [v9 appendString:v11];
      }

      v12 = [(CLPlacemark *)self->_placemark thoroughfare];

      if (v12)
      {
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v14 = [(CLPlacemark *)self->_placemark thoroughfare];
        v15 = [v13 initWithFormat:@" %@", v14];
        [v9 appendString:v15];
      }

      [v6 setStreet:v9];
    }

    v16 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:v6 addCountryName:0];
    if ([v16 length])
    {
      v17 = v16;
    }

    else
    {
      v17 = [(CLPlacemark *)self->_placemark name];
    }

    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_1F1B327D8;
    }

    v4 = v19;
  }

  return v4;
}

- (BOOL)isEqualToLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v16 = 1;
    goto LABEL_52;
  }

  if (!v4)
  {
    goto LABEL_51;
  }

  v6 = [(CLPlacemark *)self->_placemark name];
  v7 = [(CLPlacemark *)v5->_placemark name];
  if (v6 | v7)
  {
    v17 = v7;
    if (!v6 || !v7)
    {
      goto LABEL_50;
    }

    v18 = [v6 isEqualToString:v7];

    if (!v18)
    {
      goto LABEL_51;
    }
  }

  v6 = [(CLPlacemark *)self->_placemark thoroughfare];
  v8 = [(CLPlacemark *)v5->_placemark thoroughfare];
  if (v6 | v8)
  {
    v17 = v8;
    if (!v6 || !v8)
    {
      goto LABEL_50;
    }

    v19 = [v6 isEqualToString:v8];

    if (!v19)
    {
      goto LABEL_51;
    }
  }

  v6 = [(CLPlacemark *)self->_placemark subThoroughfare];
  v9 = [(CLPlacemark *)v5->_placemark subThoroughfare];
  if (v6 | v9)
  {
    v17 = v9;
    if (!v6 || !v9)
    {
      goto LABEL_50;
    }

    v20 = [v6 isEqualToString:v9];

    if (!v20)
    {
      goto LABEL_51;
    }
  }

  v6 = [(CLPlacemark *)self->_placemark locality];
  v10 = [(CLPlacemark *)v5->_placemark locality];
  if (v6 | v10)
  {
    v17 = v10;
    if (!v6 || !v10)
    {
      goto LABEL_50;
    }

    v21 = [v6 isEqualToString:v10];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  v6 = [(CLPlacemark *)self->_placemark subLocality];
  v11 = [(CLPlacemark *)v5->_placemark subLocality];
  if (v6 | v11)
  {
    v17 = v11;
    if (!v6 || !v11)
    {
      goto LABEL_50;
    }

    v22 = [v6 isEqualToString:v11];

    if (!v22)
    {
      goto LABEL_51;
    }
  }

  v6 = [(CLPlacemark *)self->_placemark administrativeArea];
  v12 = [(CLPlacemark *)v5->_placemark administrativeArea];
  if (v6 | v12)
  {
    v17 = v12;
    if (!v6 || !v12)
    {
      goto LABEL_50;
    }

    v23 = [v6 isEqualToString:v12];

    if (!v23)
    {
      goto LABEL_51;
    }
  }

  v6 = [(CLPlacemark *)self->_placemark subAdministrativeArea];
  v13 = [(CLPlacemark *)v5->_placemark subAdministrativeArea];
  if (v6 | v13)
  {
    v17 = v13;
    if (!v6 || !v13)
    {
      goto LABEL_50;
    }

    v24 = [v6 isEqualToString:v13];

    if (!v24)
    {
      goto LABEL_51;
    }
  }

  v6 = [(CLPlacemark *)self->_placemark postalCode];
  v14 = [(CLPlacemark *)v5->_placemark postalCode];
  if (v6 | v14)
  {
    v17 = v14;
    if (!v6 || !v14)
    {
      goto LABEL_50;
    }

    v25 = [v6 isEqualToString:v14];

    if (!v25)
    {
      goto LABEL_51;
    }
  }

  v6 = [(CLPlacemark *)self->_placemark country];
  v15 = [(CLPlacemark *)v5->_placemark country];
  if (v6 | v15)
  {
    v17 = v15;
    if (v6 && v15)
    {
      v26 = [v6 isEqualToString:v15];

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

- (void)encodeWithCoder:(id)a3
{
  placemark = self->_placemark;
  v5 = a3;
  [v5 encodeObject:placemark forKey:@"pmk"];
  [v5 encodeInt32:self->_category forKey:@"cat"];
  [v5 encodeObject:self->_mostRelevantRecord forKey:@"mrr"];
}

- (PPLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pmk"];
  v6 = [v4 decodeInt32ForKey:@"cat"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mrr"];

  if (v5)
  {
    self = [(PPLocation *)self initWithPlacemark:v5 category:v6 mostRelevantRecord:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PPLocation)initWithPlacemark:(id)a3 category:(unsigned __int16)a4 mostRelevantRecord:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"placemark"}];
  }

  v18.receiver = self;
  v18.super_class = PPLocation;
  v12 = [(PPLocation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_placemark, a3);
    v13->_category = a4;
    objc_storeStrong(&v13->_mostRelevantRecord, a5);
    v14 = [PPLocation clusterIdentifierFromPlacemark:v10];
    clusterIdentifier = v13->_clusterIdentifier;
    v13->_clusterIdentifier = v14;
  }

  return v13;
}

+ (id)clusterIdentifierFromPlacemark:(id)a3
{
  v28[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 name];
  v6 = [v5 length];

  v7 = [v3 subThoroughfare];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [v3 thoroughfare];

      if (v9)
      {
        v8 = [v3 name];
        v28[0] = v8;
        v10 = [v3 subThoroughfare];
        v28[1] = v10;
        v11 = [v3 thoroughfare];
        v28[2] = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
        v13 = [v12 _pas_componentsJoinedByString:@" "];

LABEL_11:
        v8 = v13;
        goto LABEL_12;
      }
    }

    v14 = [v3 thoroughfare];

    v15 = [v3 name];
    v8 = v15;
    if (!v14)
    {
      goto LABEL_12;
    }

    v27[0] = v15;
    v10 = [v3 thoroughfare];
    v27[1] = v10;
    v16 = MEMORY[0x1E695DEC8];
    v17 = v27;
LABEL_10:
    v11 = [v16 arrayWithObjects:v17 count:2];
    v13 = [v11 _pas_componentsJoinedByString:@" "];
    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v18 = [v3 thoroughfare];

  if (v18)
  {
    v8 = [v3 subThoroughfare];
    v10 = [v3 thoroughfare];
    v26[1] = v10;
    v16 = MEMORY[0x1E695DEC8];
    v17 = v26;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v4);
  if (![v8 length])
  {
    v19 = [v3 thoroughfare];

    v8 = v19;
  }

  if (![v8 length])
  {
    v20 = [v3 locality];

    v8 = v20;
  }

  if (![v8 length])
  {
    v21 = [v3 administrativeArea];

    v8 = v21;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = [v8 lowercaseString];
  objc_autoreleasePoolPop(v22);

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (unsigned)categoryForDescription:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"restaurant"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"organization"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"activity location"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"tourist attraction"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"work"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"home"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"dynamic"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)describeCategory:(unsigned __int16)a3
{
  if (a3 > 7u)
  {
    return @"restaurant";
  }

  else
  {
    return off_1E77F6BD8[a3];
  }
}

@end