@interface PPNamedEntityRecord
+ (id)algorithmForName:(id)name;
+ (id)describeAlgorithm:(unint64_t)algorithm;
+ (id)describeChangeType:(unsigned __int8)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNamedEntityRecord:(id)record;
- (NSSet)featureNames;
- (PPNamedEntityRecord)initWithCoder:(id)coder;
- (id)description;
- (id)featureValueForName:(id)name;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPNamedEntityRecord

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"algorithm"])
  {
    v5 = MEMORY[0x1E695FE60];
    algorithm = self->_algorithm;
LABEL_3:
    v7 = [v5 featureValueWithInt64:algorithm];
LABEL_10:
    v11 = v7;
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"initialScore"])
  {
    v8 = MEMORY[0x1E695FE60];
    initialScore = self->_initialScore;
LABEL_8:
    v10 = initialScore;
LABEL_9:
    v7 = [v8 featureValueWithDouble:v10];
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"decayRate"])
  {
    v8 = MEMORY[0x1E695FE60];
    initialScore = self->_decayRate;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"extractionOsBuild"])
  {
    v7 = [MEMORY[0x1E695FE60] featureValueWithString:self->_extractionOsBuild];
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"extractionAssetVersion"])
  {
    v5 = MEMORY[0x1E695FE60];
    algorithm = self->_extractionAssetVersion;
    goto LABEL_3;
  }

  if ([nameCopy isEqualToString:@"sentimentScore"])
  {
    v13 = MEMORY[0x1E695FE60];
    [(PPNamedEntityRecord *)self sentimentScore];
    v8 = v13;
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"changeType"])
  {
    v5 = MEMORY[0x1E695FE60];
    algorithm = self->_changeType;
    goto LABEL_3;
  }

  if ([nameCopy hasPrefix:@"entity_"])
  {
    entity = self->_entity;
    v15 = @"entity_";
LABEL_28:
    v16 = [nameCopy substringFromIndex:{-[__CFString length](v15, "length")}];
    v11 = [entity featureValueForName:v16];

    goto LABEL_11;
  }

  if ([nameCopy hasPrefix:@"source_"])
  {
    entity = self->_source;
    v15 = @"source_";
    goto LABEL_28;
  }

  if ([nameCopy hasPrefix:@"meta_"])
  {
    entity = self->_metadata;
    v15 = @"meta_";
    goto LABEL_28;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (NSSet)featureNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PPNamedEntityRecord_featureNames__block_invoke;
  block[3] = &unk_1E77F7CC8;
  block[4] = self;
  if (featureNames__pasOnceToken9 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken9, block);
  }

  return featureNames__pasExprOnceResult_377;
}

void __35__PPNamedEntityRecord_featureNames__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 8) featureNames];
  v4 = [v3 allObjects];

  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_380];

  v6 = [*(*(a1 + 32) + 16) featureNames];
  v7 = [v6 allObjects];

  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_382];

  v9 = [*(*(a1 + 32) + 48) featureNames];
  v10 = [v9 allObjects];

  v11 = [v10 _pas_mappedArrayWithTransform:&__block_literal_global_384];

  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"algorithm", @"initialScore", @"decayRate", @"extractionOsBuild", @"extractionAssetVersion", @"changeType", @"sentimentScore", 0}];
  objc_autoreleasePoolPop(v12);
  v14 = [v13 setByAddingObjectsFromArray:v11];
  v15 = [v14 setByAddingObjectsFromArray:v5];
  v16 = [v15 setByAddingObjectsFromArray:v8];

  v17 = featureNames__pasExprOnceResult_377;
  featureNames__pasExprOnceResult_377 = v16;

  objc_autoreleasePoolPop(v2);
}

- (BOOL)isEqualToNamedEntityRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_23;
  }

  v5 = self->_entity;
  v6 = v5;
  if (v5 == recordCopy[1])
  {
  }

  else
  {
    v7 = [(PPNamedEntity *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = self->_source;
  v9 = v8;
  if (v8 == recordCopy[2])
  {
  }

  else
  {
    v10 = [(PPSource *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (self->_algorithm != *(recordCopy + 44) || self->_initialScore != *(recordCopy + 8) || self->_decayRate != *(recordCopy + 9))
  {
    goto LABEL_23;
  }

  v11 = self->_extractionOsBuild;
  v12 = v11;
  if (v11 == recordCopy[3])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v14 = self->_metadata;
  v15 = v14;
  if (v14 == recordCopy[6])
  {
  }

  else
  {
    v16 = [(PPNamedEntityMetadata *)v14 isEqual:?];

    if (!v16)
    {
      goto LABEL_23;
    }
  }

  if (self->_extractionAssetVersion != *(recordCopy + 10))
  {
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  v17 = self->_changeType == *(recordCopy + 45);
LABEL_24:

  return v17;
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
    v6 = equalCopy && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [(PPNamedEntityRecord *)self isEqualToNamedEntityRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(PPNamedEntity *)self->_entity hash];
  v4 = [(PPSource *)self->_source hash];
  v5 = self->_algorithm - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  *&v6 = self->_initialScore;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v8 = [v7 hash] - v5 + 32 * v5;

  *&v9 = self->_decayRate;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v11 = [v10 hash] - v8 + 32 * v8;

  v12 = [(NSString *)self->_extractionOsBuild hash];
  v13 = self->_extractionAssetVersion - (v12 - v11 + 32 * v11) + 32 * (v12 - v11 + 32 * v11);
  v14 = self->_changeType - v13 + 32 * v13;
  return [(PPNamedEntityMetadata *)self->_metadata hash]- v14 + 32 * v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleId = [(PPSource *)self->_source bundleId];
  v5 = [PPNamedEntityRecord describeAlgorithm:self->_algorithm];
  initialScore = self->_initialScore;
  v7 = [PPNamedEntityRecord describeChangeType:self->_changeType];
  v8 = [v3 initWithFormat:@"<PPNamedEntityRecord src:%@ a:'%@' s:%f ct:%@ e:%@>", bundleId, v5, *&initialScore, v7, self->_entity];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[PPMutableNamedEntityRecord allocWithZone:](PPMutableNamedEntityRecord init];
  v6 = [(PPNamedEntity *)self->_entity copyWithZone:zone];
  [(PPMutableNamedEntityRecord *)v5 setEntity:v6];

  [(PPMutableNamedEntityRecord *)v5 setSource:self->_source];
  [(PPMutableNamedEntityRecord *)v5 setAlgorithm:self->_algorithm];
  [(PPMutableNamedEntityRecord *)v5 setInitialScore:self->_initialScore];
  [(PPMutableNamedEntityRecord *)v5 setDecayRate:self->_decayRate];
  [(PPMutableNamedEntityRecord *)v5 setExtractionOsBuild:self->_extractionOsBuild];
  [(PPMutableNamedEntityRecord *)v5 setExtractionAssetVersion:self->_extractionAssetVersion];
  [(PPMutableNamedEntityRecord *)v5 setChangeType:self->_changeType];
  v5->super._bucketizedSentimentScore = self->_bucketizedSentimentScore;
  v7 = [(PPNamedEntityMetadata *)self->_metadata copyWithZone:zone];
  [(PPMutableNamedEntityRecord *)v5 setMetadata:v7];

  return v5;
}

+ (id)describeChangeType:(unsigned __int8)type
{
  if (type >= 4u)
  {
    type = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid (%lu)", type];
  }

  else
  {
    type = off_1E77F6040[type];
  }

  return type;
}

+ (id)algorithmForName:(id)name
{
  v12[16] = *MEMORY[0x1E69E9840];
  v11[0] = @"CoreNLP";
  v11[1] = @"Lookup Hints";
  v12[0] = &unk_1F1B45D00;
  v12[1] = &unk_1F1B45CE8;
  v11[2] = @"Data Detectors";
  v11[3] = @"Custom Tagger";
  v12[2] = &unk_1F1B45D30;
  v12[3] = &unk_1F1B45DA8;
  v11[4] = @"Core Routine";
  v11[5] = @"NSUA Structured Location";
  v12[4] = &unk_1F1B45D18;
  v12[5] = &unk_1F1B45D48;
  v11[6] = @"Trusted Location";
  v11[7] = @"Maps Interaction";
  v12[6] = &unk_1F1B45D60;
  v12[7] = &unk_1F1B45D78;
  v11[8] = @"Media Player Now Playing";
  v11[9] = @"EventKit Import";
  v12[8] = &unk_1F1B45D90;
  v12[9] = &unk_1F1B45DC0;
  v11[10] = @"Photos Knowledge Graph";
  v11[11] = @"Parsec Donation";
  v12[10] = &unk_1F1B45DD8;
  v12[11] = &unk_1F1B45DF0;
  v11[12] = @"Podcasts Interaction";
  v11[13] = @"Contacts Import";
  v12[12] = &unk_1F1B45E08;
  v12[13] = &unk_1F1B45E20;
  v11[14] = @"Augmented Gazetteer";
  v11[15] = @"Knowledge Graph";
  v12[14] = &unk_1F1B45E50;
  v12[15] = &unk_1F1B45E68;
  v3 = MEMORY[0x1E695DF20];
  nameCopy = name;
  v5 = [v3 dictionaryWithObjects:v12 forKeys:v11 count:16];
  v6 = [v5 objectForKeyedSubscript:nameCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_1F1B45EE0;
  }

  v8 = v7;

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)describeAlgorithm:(unint64_t)algorithm
{
  if (algorithm - 1 >= 0x11)
  {
    algorithm = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown (%lu)", algorithm];
    _pas_stringBackedByUTF8CString = [algorithm _pas_stringBackedByUTF8CString];
  }

  else
  {
    _pas_stringBackedByUTF8CString = off_1E77F5FB8[algorithm - 1];
  }

  return _pas_stringBackedByUTF8CString;
}

- (void)encodeWithCoder:(id)coder
{
  entity = self->_entity;
  coderCopy = coder;
  [coderCopy encodeObject:entity forKey:@"ent"];
  [coderCopy encodeObject:self->_source forKey:@"src"];
  [coderCopy encodeInt32:self->_algorithm forKey:@"alg"];
  *&v5 = self->_initialScore;
  [coderCopy encodeFloat:@"score" forKey:v5];
  *&v6 = self->_decayRate;
  [coderCopy encodeFloat:@"dec" forKey:v6];
  [coderCopy encodeObject:self->_extractionOsBuild forKey:@"bld"];
  [coderCopy encodeInt64:self->_extractionAssetVersion forKey:@"ast"];
  [coderCopy encodeInt32:self->_changeType forKey:@"cty"];
  [coderCopy encodeInt32:self->_bucketizedSentimentScore forKey:@"snt"];
  [coderCopy encodeObject:self->_metadata forKey:@"met"];
}

- (PPNamedEntityRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PPNamedEntityRecord;
  v5 = [(PPNamedEntityRecord *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ent"];
    entity = v5->_entity;
    v5->_entity = v7;

    v9 = PPGetSourceInternPool();
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"src"];
    v11 = [v9 intern:v10];
    source = v5->_source;
    v5->_source = v11;

    v5->_algorithm = [coderCopy decodeInt32ForKey:@"alg"];
    [coderCopy decodeFloatForKey:@"score"];
    v5->_initialScore = v13;
    [coderCopy decodeFloatForKey:@"dec"];
    v5->_decayRate = v14;
    v15 = PPGetStringInternPool();
    v16 = [coderCopy decodeObjectOfClass:v6 forKey:@"bld"];
    v17 = [v15 intern:v16];
    extractionOsBuild = v5->_extractionOsBuild;
    v5->_extractionOsBuild = v17;

    v5->_extractionAssetVersion = [coderCopy decodeInt64ForKey:@"ast"];
    v5->_changeType = [coderCopy decodeInt32ForKey:@"cty"];
    v5->_bucketizedSentimentScore = [coderCopy decodeInt32ForKey:@"snt"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"met"];
    metadata = v5->_metadata;
    v5->_metadata = v19;
  }

  return v5;
}

@end