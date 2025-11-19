@interface PPLocationRecord
+ (id)algorithmForName:(id)a3;
+ (id)sharedAmbiguousRecord;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLocationRecord:(id)a3;
- (NSSet)featureNames;
- (PPLocationRecord)initWithCoder:(id)a3;
- (id)description;
- (id)featureValueForName:(id)a3;
- (id)initAmbiguousRecord;
- (id)init_;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)supplementFieldsWithClusterID:(id)a3 locationWithLatLong:(id)a4;
@end

@implementation PPLocationRecord

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"location_"])
  {
    v5 = [(PPLocationRecord *)self location];
    v6 = @"location_";
LABEL_5:
    v7 = [v4 substringFromIndex:{-[__CFString length](v6, "length")}];
    v8 = [v5 featureValueForName:v7];

    goto LABEL_6;
  }

  if ([v4 hasPrefix:@"source_"])
  {
    v5 = [(PPLocationRecord *)self source];
    v6 = @"source_";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"extractionAssetVersion"])
  {
    v10 = MEMORY[0x1E695FE60];
    extractionAssetVersion = self->_extractionAssetVersion;
LABEL_11:
    v12 = [v10 featureValueWithInt64:extractionAssetVersion];
LABEL_12:
    v8 = v12;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"extractionOsBuild"])
  {
    v13 = MEMORY[0x1E695FE60];
    v14 = [(PPLocationRecord *)self extractionOsBuild];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1F1B327D8;
    }

    v17 = [v13 featureValueWithString:v16];
LABEL_18:
    v8 = v17;

    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"algorithm"])
  {
    v10 = MEMORY[0x1E695FE60];
    extractionAssetVersion = self->_algorithm;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"contextualNamedEntities"])
  {
    v18 = MEMORY[0x1E695FE60];
    if (self->_contextualNamedEntities)
    {
      contextualNamedEntities = self->_contextualNamedEntities;
    }

    else
    {
      contextualNamedEntities = MEMORY[0x1E695E0F0];
    }

    v15 = [MEMORY[0x1E695FF10] sequenceWithStringArray:contextualNamedEntities];
    v17 = [v18 featureValueWithSequence:v15];
    goto LABEL_18;
  }

  if ([v4 isEqualToString:@"decayRate"])
  {
    v20 = MEMORY[0x1E695FE60];
    decayRate = self->_decayRate;
LABEL_30:
    v22 = decayRate;
LABEL_31:
    v12 = [v20 featureValueWithDouble:v22];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"initialScore"])
  {
    v20 = MEMORY[0x1E695FE60];
    decayRate = self->_initialScore;
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"sentimentScore"])
  {
    v23 = MEMORY[0x1E695FE60];
    [(PPLocationRecord *)self sentimentScore];
    v20 = v23;
    goto LABEL_31;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (NSSet)featureNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PPLocationRecord_featureNames__block_invoke;
  block[3] = &unk_1E77F7CC8;
  block[4] = self;
  if (featureNames__pasOnceToken14 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken14, block);
  }

  return featureNames__pasExprOnceResult_308;
}

void __32__PPLocationRecord_featureNames__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"extractionOsBuild", @"extractionAssetVersion", @"contextualNamedEntities", @"decayRate", @"initialScore", @"sentimentScore", @"algorithm", 0}];
  objc_autoreleasePoolPop(v3);
  v5 = [*(a1 + 32) location];
  v6 = [v5 featureNames];
  v7 = [v6 allObjects];
  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_310];

  v9 = [*(a1 + 32) source];
  v10 = [v9 featureNames];
  v11 = [v10 allObjects];
  v12 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_312];

  v13 = [v4 setByAddingObjectsFromArray:v12];
  v14 = [v13 setByAddingObjectsFromArray:v8];

  v15 = featureNames__pasExprOnceResult_308;
  featureNames__pasExprOnceResult_308 = v14;

  objc_autoreleasePoolPop(v2);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uuid = self->_uuid;
  location = self->_location;
  v6 = [(PPSource *)self->_source bundleId];
  v7 = [PPLocationRecord describeAlgorithm:self->_algorithm];
  initialScore = self->_initialScore;
  decayRate = self->_decayRate;
  [(PPLocationRecord *)self sentimentScore];
  v11 = [v3 initWithFormat:@"<PPLocationRecord u:%@ l:%@ src:%@ a:'%@' is:%f dr:%f ss:%f cne:%@ eos:%@ eav:%u>", uuid, location, v6, v7, *&initialScore, *&decayRate, v10, self->_contextualNamedEntities, self->_extractionOsBuild, self->_extractionAssetVersion];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_uuid hash];
  v4 = [(PPLocation *)self->_location hash]- v3 + 32 * v3;
  v5 = [(PPSource *)self->_source hash];
  v6 = self->_algorithm - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  *&v7 = self->_initialScore;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v9 = [v8 hash] - v6 + 32 * v6;

  *&v10 = self->_decayRate;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v12 = [v11 hash] - v9 + 32 * v9;

  v13 = self->_bucketizedSentimentScore - v12 + 32 * v12;
  v14 = [(NSArray *)self->_contextualNamedEntities hash]- v13 + 32 * v13;
  v15 = [(NSString *)self->_extractionOsBuild hash];
  return self->_extractionAssetVersion - (v15 - v14 + 32 * v14) + 32 * (v15 - v14 + 32 * v14);
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
    v6 = v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [(PPLocationRecord *)self isEqualToLocationRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToLocationRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_33;
  }

  uuid = self->_uuid;
  v6 = *(v4 + 1);
  if (uuid)
  {
    if (!v6 || ![(NSUUID *)uuid isEqual:?])
    {
      goto LABEL_33;
    }
  }

  else if (v6)
  {
    goto LABEL_33;
  }

  location = self->_location;
  v8 = *(v4 + 2);
  if (location)
  {
    if (!v8 || ![(PPLocation *)location isEqual:?])
    {
      goto LABEL_33;
    }
  }

  else if (v8)
  {
    goto LABEL_33;
  }

  v9 = self->_source;
  v10 = *(v4 + 3);
  if (v9 | v10)
  {
    v14 = v10;
    if (!v9 || !v10)
    {
      goto LABEL_32;
    }

    v15 = [(PPSource *)v9 isEqualToSource:v10];

    if (!v15)
    {
      goto LABEL_33;
    }
  }

  if (self->_algorithm != v4[32] || self->_initialScore != *(v4 + 9) || self->_decayRate != *(v4 + 10) || self->_bucketizedSentimentScore != v4[68])
  {
    goto LABEL_33;
  }

  v9 = self->_contextualNamedEntities;
  v11 = *(v4 + 6);
  if (v9 | v11)
  {
    v14 = v11;
    if (!v9 || !v11)
    {
      goto LABEL_32;
    }

    v16 = [(PPSource *)v9 isEqualToArray:v11];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  v9 = self->_extractionOsBuild;
  v12 = *(v4 + 7);
  if (v9 | v12)
  {
    v14 = v12;
    if (v9 && v12)
    {
      v17 = [(PPSource *)v9 isEqualToString:v12];

      if (v17)
      {
        goto LABEL_19;
      }

LABEL_33:
      v13 = 0;
      goto LABEL_34;
    }

LABEL_32:

    goto LABEL_33;
  }

LABEL_19:
  v13 = self->_extractionAssetVersion == *(v4 + 16);
LABEL_34:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v7 = a3;
  [v7 encodeObject:uuid forKey:@"uuid"];
  [v7 encodeObject:self->_location forKey:@"loc"];
  [v7 encodeObject:self->_source forKey:@"src"];
  [v7 encodeInt32:self->_algorithm forKey:@"alg"];
  *&v5 = self->_initialScore;
  [v7 encodeFloat:@"iscr" forKey:v5];
  *&v6 = self->_decayRate;
  [v7 encodeFloat:@"dr" forKey:v6];
  [v7 encodeInt32:self->_bucketizedSentimentScore forKey:@"bss"];
  [v7 encodeObject:self->_contextualNamedEntities forKey:@"cne"];
  [v7 encodeObject:self->_extractionOsBuild forKey:@"eob"];
  [v7 encodeInt64:self->_extractionAssetVersion forKey:@"eav"];
}

- (PPLocationRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PPLocationRecord;
  v5 = [(PPLocationRecord *)&v24 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  uuid = v5->_uuid;
  v5->_uuid = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loc"];
  location = v5->_location;
  v5->_location = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"src"];
  source = v5->_source;
  v5->_source = v10;

  v5->_algorithm = [v4 decodeInt32ForKey:@"alg"];
  [v4 decodeFloatForKey:@"iscr"];
  v5->_initialScore = v12;
  [v4 decodeFloatForKey:@"dr"];
  v5->_decayRate = v13;
  v5->_bucketizedSentimentScore = [v4 decodeInt32ForKey:@"bss"];
  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v14);
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"cne"];
  contextualNamedEntities = v5->_contextualNamedEntities;
  v5->_contextualNamedEntities = v18;

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eob"];
  extractionOsBuild = v5->_extractionOsBuild;
  v5->_extractionOsBuild = v20;

  v5->_extractionAssetVersion = [v4 decodeInt64ForKey:@"eav"];
  if (!v5->_uuid)
  {
    goto LABEL_6;
  }

  if (v5->_location && v5->_source)
  {
LABEL_5:
    v22 = v5;
  }

  else
  {
LABEL_6:
    v22 = 0;
  }

  return v22;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [+[PPMutableLocationRecord allocWithZone:](PPMutableLocationRecord init];
  v6 = [(NSUUID *)self->_uuid copyWithZone:a3];
  [(PPMutableLocationRecord *)v5 setUuid:v6];

  v7 = [(PPLocation *)self->_location copyWithZone:a3];
  [(PPMutableLocationRecord *)v5 setLocation:v7];

  [(PPMutableLocationRecord *)v5 setSource:self->_source];
  [(PPMutableLocationRecord *)v5 setAlgorithm:self->_algorithm];
  [(PPMutableLocationRecord *)v5 setInitialScore:self->_initialScore];
  [(PPMutableLocationRecord *)v5 setDecayRate:self->_decayRate];
  v8 = [(NSArray *)self->_contextualNamedEntities copyWithZone:a3];
  [(PPMutableLocationRecord *)v5 setContextualNamedEntities:v8];

  [(PPMutableLocationRecord *)v5 setExtractionOsBuild:self->_extractionOsBuild];
  [(PPMutableLocationRecord *)v5 setExtractionAssetVersion:self->_extractionAssetVersion];
  v5->super._bucketizedSentimentScore = self->_bucketizedSentimentScore;
  return v5;
}

+ (id)algorithmForName:(id)a3
{
  v12[12] = *MEMORY[0x1E69E9840];
  v11[0] = @"CoreNLP";
  v11[1] = @"Lookup Hints";
  v12[0] = &unk_1F1B46018;
  v12[1] = &unk_1F1B46030;
  v11[2] = @"Data Detectors";
  v11[3] = @"Custom Tagger";
  v12[2] = &unk_1F1B46048;
  v12[3] = &unk_1F1B46060;
  v11[4] = @"Core Routine";
  v11[5] = @"NSUA Structured Location";
  v12[4] = &unk_1F1B46078;
  v12[5] = &unk_1F1B46090;
  v11[6] = @"Trusted Location";
  v11[7] = @"Maps Interaction";
  v12[6] = &unk_1F1B460A8;
  v12[7] = &unk_1F1B460C0;
  v11[8] = @"EventKit Import";
  v11[9] = @"Photos Knowledge Graph";
  v12[8] = &unk_1F1B460D8;
  v12[9] = &unk_1F1B460F0;
  v11[10] = @"Augmented Gazetteer";
  v11[11] = @"Knowledge Graph";
  v12[10] = &unk_1F1B46108;
  v12[11] = &unk_1F1B46120;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v12 forKeys:v11 count:12];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_1F1B46138;
  }

  v8 = v7;

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)sharedAmbiguousRecord
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PPLocationRecord_sharedAmbiguousRecord__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedAmbiguousRecord__pasOnceToken9 != -1)
  {
    dispatch_once(&sharedAmbiguousRecord__pasOnceToken9, block);
  }

  v2 = sharedAmbiguousRecord__pasExprOnceResult;

  return v2;
}

void __41__PPLocationRecord_sharedAmbiguousRecord__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initAmbiguousRecord];
  v4 = sharedAmbiguousRecord__pasExprOnceResult;
  sharedAmbiguousRecord__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

- (void)supplementFieldsWithClusterID:(id)a3 locationWithLatLong:(id)a4
{
  v44 = a3;
  v40 = self;
  location = self->_location;
  v7 = a4;
  v8 = [(PPLocation *)location placemark];
  v9 = v7;
  v39 = v7;
  if (!v7)
  {
    v9 = [v8 location];
  }

  v41 = v9;
  v38 = [v8 name];
  v10 = v44;
  if (v38)
  {
    v10 = v8;
  }

  v43 = [v10 name];
  v37 = [v8 thoroughfare];
  v11 = v44;
  if (v37)
  {
    v11 = v8;
  }

  v42 = [v11 thoroughfare];
  v36 = [v8 subThoroughfare];
  v12 = v44;
  if (v36)
  {
    v12 = v8;
  }

  v31 = [v12 subThoroughfare];
  v35 = [v8 locality];
  v13 = v44;
  if (v35)
  {
    v13 = v8;
  }

  v30 = [v13 locality];
  v33 = [v8 subLocality];
  v14 = v44;
  if (v33)
  {
    v14 = v8;
  }

  v15 = [v14 subLocality];
  v32 = [v8 administrativeArea];
  v16 = v44;
  if (v32)
  {
    v16 = v8;
  }

  v29 = [v16 administrativeArea];
  v28 = [v8 subAdministrativeArea];
  v17 = [v8 postalCode];
  v18 = [v8 ISOcountryCode];
  v19 = [v8 country];
  v20 = [v8 inlandWater];
  v21 = [v8 ocean];
  v22 = [v8 areasOfInterest];
  v34 = [PPLocationStore placemarkWithLocation:v41 name:v43 thoroughfare:v42 subthoroughFare:v31 locality:v30 subLocality:v15 administrativeArea:v29 subAdministrativeArea:v28 postalCode:v17 countryCode:v18 country:v19 inlandWater:v20 ocean:v21 areasOfInterest:v22];

  if (!v39)
  {
  }

  v23 = [PPLocation alloc];
  v24 = [(PPLocation *)v40->_location category];
  v25 = [(PPLocation *)v40->_location mostRelevantRecord];
  v26 = [(PPLocation *)v23 initWithPlacemark:v34 category:v24 mostRelevantRecord:v25];
  v27 = v40->_location;
  v40->_location = v26;
}

- (id)initAmbiguousRecord
{
  v3.receiver = self;
  v3.super_class = PPLocationRecord;
  result = [(PPLocationRecord *)&v3 init];
  if (result)
  {
    *(result + 69) = 1;
  }

  return result;
}

- (id)init_
{
  v3.receiver = self;
  v3.super_class = PPLocationRecord;
  return [(PPLocationRecord *)&v3 init];
}

@end