@interface RCVoiceMemoMetadata
- (RCVoiceMemoMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCVoiceMemoMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(RCVoiceMemoMetadata *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  path = [(RCVoiceMemoMetadata *)self path];
  [coderCopy encodeObject:path forKey:@"path"];

  folder = [(RCVoiceMemoMetadata *)self folder];
  [coderCopy encodeObject:folder forKey:@"folder"];

  codecs = [(RCVoiceMemoMetadata *)self codecs];
  [coderCopy encodeObject:codecs forKey:@"codecs"];

  creationTimeMillis = [(RCVoiceMemoMetadata *)self creationTimeMillis];
  [coderCopy encodeObject:creationTimeMillis forKey:@"creationTimeMillis"];

  durationMillis = [(RCVoiceMemoMetadata *)self durationMillis];
  [coderCopy encodeObject:durationMillis forKey:@"durationMillis"];

  deletionTimeMillis = [(RCVoiceMemoMetadata *)self deletionTimeMillis];
  [coderCopy encodeObject:deletionTimeMillis forKey:@"deletionTimeMillis"];

  favorite = [(RCVoiceMemoMetadata *)self favorite];
  [coderCopy encodeObject:favorite forKey:@"favorite"];

  recordedOnWatch = [(RCVoiceMemoMetadata *)self recordedOnWatch];
  [coderCopy encodeObject:recordedOnWatch forKey:@"recordedOnWatch"];

  enhanced = [(RCVoiceMemoMetadata *)self enhanced];
  [coderCopy encodeObject:enhanced forKey:@"multiLayerMix"];

  multiLayer = [(RCVoiceMemoMetadata *)self multiLayer];
  [coderCopy encodeObject:multiLayer forKey:@"multiLayer"];

  multiLayerMix = [(RCVoiceMemoMetadata *)self multiLayerMix];
  [coderCopy encodeObject:multiLayerMix forKey:@"enhanced"];

  wrappedURL = [(RCVoiceMemoMetadata *)self wrappedURL];
  [coderCopy encodeObject:wrappedURL forKey:@"wrappedURL"];
}

- (RCVoiceMemoMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  [(RCVoiceMemoMetadata *)self setTitle:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  [(RCVoiceMemoMetadata *)self setPath:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"folder"];
  [(RCVoiceMemoMetadata *)self setFolder:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"codecs"];
  [(RCVoiceMemoMetadata *)self setCodecs:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationTimeMillis"];
  [(RCVoiceMemoMetadata *)self setCreationTimeMillis:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"durationMillis"];
  [(RCVoiceMemoMetadata *)self setDurationMillis:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deletionTimeMillis"];
  [(RCVoiceMemoMetadata *)self setDeletionTimeMillis:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"favorite"];
  [(RCVoiceMemoMetadata *)self setFavorite:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordedOnWatch"];
  [(RCVoiceMemoMetadata *)self setRecordedOnWatch:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multiLayerMix"];
  [(RCVoiceMemoMetadata *)self setEnhanced:v17];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multiLayer"];
  [(RCVoiceMemoMetadata *)self setMultiLayer:v18];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enhanced"];
  [(RCVoiceMemoMetadata *)self setMultiLayerMix:v19];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappedURL"];

  [(RCVoiceMemoMetadata *)self setWrappedURL:v20];
  return self;
}

@end