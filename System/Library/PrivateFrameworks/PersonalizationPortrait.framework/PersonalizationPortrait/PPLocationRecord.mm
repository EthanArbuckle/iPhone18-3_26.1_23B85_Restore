@interface PPLocationRecord
+ (id)algorithmForName:(id)name;
+ (id)sharedAmbiguousRecord;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLocationRecord:(id)record;
- (NSSet)featureNames;
- (PPLocationRecord)initWithCoder:(id)coder;
- (id)description;
- (id)featureValueForName:(id)name;
- (id)initAmbiguousRecord;
- (id)init_;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)supplementFieldsWithClusterID:(id)d locationWithLatLong:(id)long;
@end

@implementation PPLocationRecord

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy hasPrefix:@"location_"])
  {
    location = [(PPLocationRecord *)self location];
    v6 = @"location_";
LABEL_5:
    v7 = [nameCopy substringFromIndex:{-[__CFString length](v6, "length")}];
    v8 = [location featureValueForName:v7];

    goto LABEL_6;
  }

  if ([nameCopy hasPrefix:@"source_"])
  {
    location = [(PPLocationRecord *)self source];
    v6 = @"source_";
    goto LABEL_5;
  }

  if ([nameCopy isEqualToString:@"extractionAssetVersion"])
  {
    v10 = MEMORY[0x1E695FE60];
    extractionAssetVersion = self->_extractionAssetVersion;
LABEL_11:
    v12 = [v10 featureValueWithInt64:extractionAssetVersion];
LABEL_12:
    v8 = v12;
    goto LABEL_6;
  }

  if ([nameCopy isEqualToString:@"extractionOsBuild"])
  {
    v13 = MEMORY[0x1E695FE60];
    extractionOsBuild = [(PPLocationRecord *)self extractionOsBuild];
    v15 = extractionOsBuild;
    if (extractionOsBuild)
    {
      v16 = extractionOsBuild;
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

  if ([nameCopy isEqualToString:@"algorithm"])
  {
    v10 = MEMORY[0x1E695FE60];
    extractionAssetVersion = self->_algorithm;
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"contextualNamedEntities"])
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

  if ([nameCopy isEqualToString:@"decayRate"])
  {
    v20 = MEMORY[0x1E695FE60];
    decayRate = self->_decayRate;
LABEL_30:
    v22 = decayRate;
LABEL_31:
    v12 = [v20 featureValueWithDouble:v22];
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"initialScore"])
  {
    v20 = MEMORY[0x1E695FE60];
    decayRate = self->_initialScore;
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"sentimentScore"])
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
  bundleId = [(PPSource *)self->_source bundleId];
  v7 = [PPLocationRecord describeAlgorithm:self->_algorithm];
  initialScore = self->_initialScore;
  decayRate = self->_decayRate;
  [(PPLocationRecord *)self sentimentScore];
  v11 = [v3 initWithFormat:@"<PPLocationRecord u:%@ l:%@ src:%@ a:'%@' is:%f dr:%f ss:%f cne:%@ eos:%@ eav:%u>", uuid, location, bundleId, v7, *&initialScore, *&decayRate, v10, self->_contextualNamedEntities, self->_extractionOsBuild, self->_extractionAssetVersion];

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
    v6 = equalCopy && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [(PPLocationRecord *)self isEqualToLocationRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToLocationRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_33;
  }

  uuid = self->_uuid;
  v6 = *(recordCopy + 1);
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
  v8 = *(recordCopy + 2);
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
  v10 = *(recordCopy + 3);
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

  if (self->_algorithm != recordCopy[32] || self->_initialScore != *(recordCopy + 9) || self->_decayRate != *(recordCopy + 10) || self->_bucketizedSentimentScore != recordCopy[68])
  {
    goto LABEL_33;
  }

  v9 = self->_contextualNamedEntities;
  v11 = *(recordCopy + 6);
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
  v12 = *(recordCopy + 7);
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
  v13 = self->_extractionAssetVersion == *(recordCopy + 16);
LABEL_34:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_location forKey:@"loc"];
  [coderCopy encodeObject:self->_source forKey:@"src"];
  [coderCopy encodeInt32:self->_algorithm forKey:@"alg"];
  *&v5 = self->_initialScore;
  [coderCopy encodeFloat:@"iscr" forKey:v5];
  *&v6 = self->_decayRate;
  [coderCopy encodeFloat:@"dr" forKey:v6];
  [coderCopy encodeInt32:self->_bucketizedSentimentScore forKey:@"bss"];
  [coderCopy encodeObject:self->_contextualNamedEntities forKey:@"cne"];
  [coderCopy encodeObject:self->_extractionOsBuild forKey:@"eob"];
  [coderCopy encodeInt64:self->_extractionAssetVersion forKey:@"eav"];
}

- (PPLocationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = PPLocationRecord;
  v5 = [(PPLocationRecord *)&v24 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  uuid = v5->_uuid;
  v5->_uuid = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loc"];
  location = v5->_location;
  v5->_location = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"src"];
  source = v5->_source;
  v5->_source = v10;

  v5->_algorithm = [coderCopy decodeInt32ForKey:@"alg"];
  [coderCopy decodeFloatForKey:@"iscr"];
  v5->_initialScore = v12;
  [coderCopy decodeFloatForKey:@"dr"];
  v5->_decayRate = v13;
  v5->_bucketizedSentimentScore = [coderCopy decodeInt32ForKey:@"bss"];
  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v14);
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"cne"];
  contextualNamedEntities = v5->_contextualNamedEntities;
  v5->_contextualNamedEntities = v18;

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eob"];
  extractionOsBuild = v5->_extractionOsBuild;
  v5->_extractionOsBuild = v20;

  v5->_extractionAssetVersion = [coderCopy decodeInt64ForKey:@"eav"];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[PPMutableLocationRecord allocWithZone:](PPMutableLocationRecord init];
  v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
  [(PPMutableLocationRecord *)v5 setUuid:v6];

  v7 = [(PPLocation *)self->_location copyWithZone:zone];
  [(PPMutableLocationRecord *)v5 setLocation:v7];

  [(PPMutableLocationRecord *)v5 setSource:self->_source];
  [(PPMutableLocationRecord *)v5 setAlgorithm:self->_algorithm];
  [(PPMutableLocationRecord *)v5 setInitialScore:self->_initialScore];
  [(PPMutableLocationRecord *)v5 setDecayRate:self->_decayRate];
  v8 = [(NSArray *)self->_contextualNamedEntities copyWithZone:zone];
  [(PPMutableLocationRecord *)v5 setContextualNamedEntities:v8];

  [(PPMutableLocationRecord *)v5 setExtractionOsBuild:self->_extractionOsBuild];
  [(PPMutableLocationRecord *)v5 setExtractionAssetVersion:self->_extractionAssetVersion];
  v5->super._bucketizedSentimentScore = self->_bucketizedSentimentScore;
  return v5;
}

+ (id)algorithmForName:(id)name
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
  nameCopy = name;
  v5 = [v3 dictionaryWithObjects:v12 forKeys:v11 count:12];
  v6 = [v5 objectForKeyedSubscript:nameCopy];

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
  block[4] = self;
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

- (void)supplementFieldsWithClusterID:(id)d locationWithLatLong:(id)long
{
  dCopy = d;
  selfCopy = self;
  location = self->_location;
  longCopy = long;
  placemark = [(PPLocation *)location placemark];
  location = longCopy;
  v39 = longCopy;
  if (!longCopy)
  {
    location = [placemark location];
  }

  v41 = location;
  name = [placemark name];
  v10 = dCopy;
  if (name)
  {
    v10 = placemark;
  }

  name2 = [v10 name];
  thoroughfare = [placemark thoroughfare];
  v11 = dCopy;
  if (thoroughfare)
  {
    v11 = placemark;
  }

  thoroughfare2 = [v11 thoroughfare];
  subThoroughfare = [placemark subThoroughfare];
  v12 = dCopy;
  if (subThoroughfare)
  {
    v12 = placemark;
  }

  subThoroughfare2 = [v12 subThoroughfare];
  locality = [placemark locality];
  v13 = dCopy;
  if (locality)
  {
    v13 = placemark;
  }

  locality2 = [v13 locality];
  subLocality = [placemark subLocality];
  v14 = dCopy;
  if (subLocality)
  {
    v14 = placemark;
  }

  subLocality2 = [v14 subLocality];
  administrativeArea = [placemark administrativeArea];
  v16 = dCopy;
  if (administrativeArea)
  {
    v16 = placemark;
  }

  administrativeArea2 = [v16 administrativeArea];
  subAdministrativeArea = [placemark subAdministrativeArea];
  postalCode = [placemark postalCode];
  iSOcountryCode = [placemark ISOcountryCode];
  country = [placemark country];
  inlandWater = [placemark inlandWater];
  ocean = [placemark ocean];
  areasOfInterest = [placemark areasOfInterest];
  v34 = [PPLocationStore placemarkWithLocation:v41 name:name2 thoroughfare:thoroughfare2 subthoroughFare:subThoroughfare2 locality:locality2 subLocality:subLocality2 administrativeArea:administrativeArea2 subAdministrativeArea:subAdministrativeArea postalCode:postalCode countryCode:iSOcountryCode country:country inlandWater:inlandWater ocean:ocean areasOfInterest:areasOfInterest];

  if (!v39)
  {
  }

  v23 = [PPLocation alloc];
  category = [(PPLocation *)selfCopy->_location category];
  mostRelevantRecord = [(PPLocation *)selfCopy->_location mostRelevantRecord];
  v26 = [(PPLocation *)v23 initWithPlacemark:v34 category:category mostRelevantRecord:mostRelevantRecord];
  v27 = selfCopy->_location;
  selfCopy->_location = v26;
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