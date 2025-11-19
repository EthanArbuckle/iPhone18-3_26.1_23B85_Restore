@interface RCVoiceMemoMetadata
- (RCVoiceMemoMetadata)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCVoiceMemoMetadata

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RCVoiceMemoMetadata *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(RCVoiceMemoMetadata *)self path];
  [v4 encodeObject:v6 forKey:@"path"];

  v7 = [(RCVoiceMemoMetadata *)self folder];
  [v4 encodeObject:v7 forKey:@"folder"];

  v8 = [(RCVoiceMemoMetadata *)self codecs];
  [v4 encodeObject:v8 forKey:@"codecs"];

  v9 = [(RCVoiceMemoMetadata *)self creationTimeMillis];
  [v4 encodeObject:v9 forKey:@"creationTimeMillis"];

  v10 = [(RCVoiceMemoMetadata *)self durationMillis];
  [v4 encodeObject:v10 forKey:@"durationMillis"];

  v11 = [(RCVoiceMemoMetadata *)self deletionTimeMillis];
  [v4 encodeObject:v11 forKey:@"deletionTimeMillis"];

  v12 = [(RCVoiceMemoMetadata *)self favorite];
  [v4 encodeObject:v12 forKey:@"favorite"];

  v13 = [(RCVoiceMemoMetadata *)self recordedOnWatch];
  [v4 encodeObject:v13 forKey:@"recordedOnWatch"];

  v14 = [(RCVoiceMemoMetadata *)self enhanced];
  [v4 encodeObject:v14 forKey:@"multiLayerMix"];

  v15 = [(RCVoiceMemoMetadata *)self multiLayer];
  [v4 encodeObject:v15 forKey:@"multiLayer"];

  v16 = [(RCVoiceMemoMetadata *)self multiLayerMix];
  [v4 encodeObject:v16 forKey:@"enhanced"];

  v17 = [(RCVoiceMemoMetadata *)self wrappedURL];
  [v4 encodeObject:v17 forKey:@"wrappedURL"];
}

- (RCVoiceMemoMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  [(RCVoiceMemoMetadata *)self setTitle:v5];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  [(RCVoiceMemoMetadata *)self setPath:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"folder"];
  [(RCVoiceMemoMetadata *)self setFolder:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"codecs"];
  [(RCVoiceMemoMetadata *)self setCodecs:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationTimeMillis"];
  [(RCVoiceMemoMetadata *)self setCreationTimeMillis:v12];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"durationMillis"];
  [(RCVoiceMemoMetadata *)self setDurationMillis:v13];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deletionTimeMillis"];
  [(RCVoiceMemoMetadata *)self setDeletionTimeMillis:v14];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"favorite"];
  [(RCVoiceMemoMetadata *)self setFavorite:v15];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordedOnWatch"];
  [(RCVoiceMemoMetadata *)self setRecordedOnWatch:v16];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multiLayerMix"];
  [(RCVoiceMemoMetadata *)self setEnhanced:v17];

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multiLayer"];
  [(RCVoiceMemoMetadata *)self setMultiLayer:v18];

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enhanced"];
  [(RCVoiceMemoMetadata *)self setMultiLayerMix:v19];

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedURL"];

  [(RCVoiceMemoMetadata *)self setWrappedURL:v20];
  return self;
}

@end