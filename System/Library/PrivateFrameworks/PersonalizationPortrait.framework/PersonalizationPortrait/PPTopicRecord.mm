@interface PPTopicRecord
+ (id)algorithmForName:(id)a3;
+ (id)describeAlgorithm:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTopicRecord:(id)a3;
- (NSSet)featureNames;
- (PPTopicRecord)initWithCoder:(id)a3;
- (id)description;
- (id)featureValueForName:(id)a3;
- (id)identifier;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPTopicRecord

- (id)identifier
{
  v2 = [(PPTopic *)self->_topic clusterIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = objc_opt_new();
    v4 = [v5 UUIDString];
  }

  return v4;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"algorithm"])
  {
    v5 = MEMORY[0x1E695FE60];
    algorithm = self->_algorithm;
LABEL_3:
    v7 = [v5 featureValueWithInt64:algorithm];
LABEL_9:
    v10 = v7;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"initialScore"])
  {
    v8 = MEMORY[0x1E695FE60];
    initialScore = self->_initialScore;
LABEL_8:
    v7 = [v8 featureValueWithDouble:initialScore];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"decayRate"])
  {
    v8 = MEMORY[0x1E695FE60];
    initialScore = self->_decayRate;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"isLocal"])
  {
    v5 = MEMORY[0x1E695FE60];
    algorithm = self->_isLocal;
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"extractionAssetVersion"])
  {
    v5 = MEMORY[0x1E695FE60];
    algorithm = self->_extractionAssetVersion;
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"extractionOsBuild"])
  {
    v7 = [MEMORY[0x1E695FE60] featureValueWithString:self->_extractionOsBuild];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"sentimentScore"])
  {
    v5 = MEMORY[0x1E695FE60];
    algorithm = self->_bucketizedSentimentScore;
    goto LABEL_3;
  }

  if ([v4 hasPrefix:@"topic_"])
  {
    topic = self->_topic;
    v13 = @"topic_";
LABEL_27:
    v14 = [v4 substringFromIndex:{-[__CFString length](v13, "length")}];
    v10 = [topic featureValueForName:v14];

    goto LABEL_10;
  }

  if ([v4 hasPrefix:@"meta_"])
  {
    topic = self->_metadata;
    v13 = @"meta_";
    goto LABEL_27;
  }

  if ([v4 hasPrefix:@"source_"])
  {
    topic = self->_source;
    v13 = @"source_";
    goto LABEL_27;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (NSSet)featureNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PPTopicRecord_featureNames__block_invoke;
  block[3] = &unk_1E77F7CC8;
  block[4] = self;
  if (featureNames__pasOnceToken9_8557 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken9_8557, block);
  }

  return featureNames__pasExprOnceResult_233;
}

void __29__PPTopicRecord_featureNames__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"algorithm", @"initialScore", @"decayRate", @"isLocal", @"extractionAssetVersion", @"sentimentScore", @"extractionOsBuild", 0}];
  objc_autoreleasePoolPop(v3);
  v5 = [*(*(a1 + 32) + 8) featureNames];
  v6 = [v5 allObjects];

  v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_236];

  v8 = [*(*(a1 + 32) + 72) featureNames];
  v9 = [v8 allObjects];

  v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_238];

  v11 = [*(*(a1 + 32) + 16) featureNames];
  v12 = [v11 allObjects];

  v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_240];

  v14 = [v4 setByAddingObjectsFromArray:v7];
  v15 = [v14 setByAddingObjectsFromArray:v10];
  v16 = [v15 setByAddingObjectsFromArray:v13];

  v17 = featureNames__pasExprOnceResult_233;
  featureNames__pasExprOnceResult_233 = v16;

  objc_autoreleasePoolPop(v2);
}

- (BOOL)isEqualToTopicRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = self->_topic;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(PPTopic *)v5 isEqual:?];

    if (!v7)
    {
LABEL_22:
      v16 = 0;
      goto LABEL_23;
    }
  }

  v8 = self->_source;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(PPSource *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (self->_algorithm != v4[3] || self->_initialScore != *(v4 + 4) || self->_decayRate != *(v4 + 5) || self->_isLocal != *(v4 + 48))
  {
    goto LABEL_22;
  }

  v11 = self->_extractionOsBuild;
  v12 = v11;
  if (v11 == v4[7])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (self->_extractionAssetVersion != *(v4 + 16) || self->_bucketizedSentimentScore != *(v4 + 80))
  {
    goto LABEL_22;
  }

  v14 = self->_metadata;
  v15 = v14;
  if (v14 == v4[9])
  {
    v16 = 1;
  }

  else
  {
    v16 = [(PPTopicMetadata *)v14 isEqual:?];
  }

LABEL_23:
  return v16;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPTopicRecord *)self isEqualToTopicRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(PPTopic *)self->_topic hash];
  v4 = [(PPSource *)self->_source hash];
  v5 = self->_algorithm - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_initialScore];
  v7 = [v6 hash] - v5 + 32 * v5;

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_decayRate];
  v9 = [v8 hash] - v7 + 32 * v7;

  v10 = self->_isLocal - v9 + 32 * v9;
  v11 = [(NSString *)self->_extractionOsBuild hash];
  v12 = self->_extractionAssetVersion - (v11 - v10 + 32 * v10) + 32 * (v11 - v10 + 32 * v10);
  return [(PPTopicMetadata *)self->_metadata hash]- v12 + 32 * v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  topic = self->_topic;
  v5 = [(PPSource *)self->_source bundleId];
  v6 = [PPTopicRecord describeAlgorithm:self->_algorithm];
  v7 = v6;
  v8 = @"false";
  if (self->_isLocal)
  {
    v8 = @"true";
  }

  v9 = [v3 initWithFormat:@"<PPTopicRecord t:%@ src:%@ a:'%@' is:%f dr:%f l:%@ eob:%@ eav:%u m:%@>", topic, v5, v6, *&self->_initialScore, *&self->_decayRate, v8, self->_extractionOsBuild, self->_extractionAssetVersion, self->_metadata];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setTopic:self->_topic];
  [v4 setSource:self->_source];
  [v4 setAlgorithm:self->_algorithm];
  [v4 setInitialScore:self->_initialScore];
  [v4 setDecayRate:self->_decayRate];
  [v4 setIsLocal:self->_isLocal];
  [v4 setExtractionOsBuild:self->_extractionOsBuild];
  [v4 setExtractionAssetVersion:self->_extractionAssetVersion];
  v4[80] = self->_bucketizedSentimentScore;
  [v4 setMetadata:self->_metadata];
  return v4;
}

+ (id)algorithmForName:(id)a3
{
  v12[12] = *MEMORY[0x1E69E9840];
  v11[0] = @"ContextKit";
  v11[1] = @"Siri Donation";
  v12[0] = &unk_1F1B46168;
  v12[1] = &unk_1F1B46180;
  v11[2] = @"Lookup Hints";
  v11[3] = @"Named Entity";
  v12[2] = &unk_1F1B46198;
  v12[3] = &unk_1F1B461B0;
  v11[4] = @"Photos Knowledge Graph";
  v11[5] = @"High Level Topic Extraction";
  v12[4] = &unk_1F1B461C8;
  v12[5] = &unk_1F1B461E0;
  v11[6] = @"Parsec Donation";
  v11[7] = @"Podcasts Interaction";
  v12[6] = &unk_1F1B461F8;
  v12[7] = &unk_1F1B46210;
  v11[8] = @"HealthKit Import";
  v11[9] = @"Augmented Gazetteer";
  v12[8] = &unk_1F1B46228;
  v12[9] = &unk_1F1B46240;
  v11[10] = @"Knowledge Graph";
  v11[11] = @"Language Tagger";
  v12[10] = &unk_1F1B46258;
  v12[11] = &unk_1F1B46270;
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
    v7 = &unk_1F1B46288;
  }

  v8 = v7;

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)describeAlgorithm:(unint64_t)a3
{
  if (a3 - 1 >= 0xC)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown (%lu)", a3];
    v3 = [v4 _pas_stringBackedByUTF8CString];
  }

  else
  {
    v3 = off_1E77F7CE8[a3 - 1];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  topic = self->_topic;
  v5 = a3;
  [v5 encodeObject:topic forKey:@"top"];
  [v5 encodeObject:self->_source forKey:@"src"];
  [v5 encodeInt32:LODWORD(self->_algorithm) forKey:@"alg"];
  [v5 encodeDouble:@"score" forKey:self->_initialScore];
  [v5 encodeDouble:@"dec" forKey:self->_decayRate];
  [v5 encodeBool:self->_isLocal forKey:@"loc"];
  [v5 encodeObject:self->_extractionOsBuild forKey:@"bld"];
  [v5 encodeInt64:self->_extractionAssetVersion forKey:@"ast"];
  [v5 encodeInt32:self->_bucketizedSentimentScore forKey:@"snt"];
  [v5 encodeObject:self->_metadata forKey:@"met"];
}

- (PPTopicRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PPTopicRecord;
  v5 = [(PPTopicRecord *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"top"];
    topic = v5->_topic;
    v5->_topic = v7;

    v9 = PPGetSourceInternPool();
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"src"];
    v11 = [v9 intern:v10];
    source = v5->_source;
    v5->_source = v11;

    v5->_algorithm = [v4 decodeInt32ForKey:@"alg"];
    [v4 decodeDoubleForKey:@"score"];
    v5->_initialScore = v13;
    [v4 decodeDoubleForKey:@"dec"];
    v5->_decayRate = v14;
    v5->_isLocal = [v4 decodeBoolForKey:@"loc"];
    v15 = PPGetStringInternPool();
    v16 = [v4 decodeObjectOfClass:v6 forKey:@"bld"];
    v17 = [v15 intern:v16];
    extractionOsBuild = v5->_extractionOsBuild;
    v5->_extractionOsBuild = v17;

    v5->_extractionAssetVersion = [v4 decodeInt64ForKey:@"ast"];
    v5->_bucketizedSentimentScore = [v4 decodeInt32ForKey:@"snt"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"met"];
    metadata = v5->_metadata;
    v5->_metadata = v19;
  }

  return v5;
}

@end