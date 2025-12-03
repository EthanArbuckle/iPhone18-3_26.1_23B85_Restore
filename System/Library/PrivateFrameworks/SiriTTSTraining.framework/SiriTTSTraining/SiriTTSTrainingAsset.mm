@interface SiriTTSTrainingAsset
- (BOOL)isEqual:(id)equal;
- (SiriTTSTrainingAsset)initWithFactor:(id)factor path:(id)path metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compatibilityVersion;
- (int64_t)contentVersion;
- (int64_t)diskSize;
- (int64_t)hash;
- (int64_t)qualityVersion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriTTSTrainingAsset

- (int64_t)diskSize
{
  selfCopy = self;
  v3 = SiriTTSTrainingAsset.diskSize.getter();

  return v3;
}

- (int64_t)qualityVersion
{
  selfCopy = self;
  SiriTTSTrainingAsset.qualityVersion.getter();
  v4 = v3;

  return v4;
}

- (int64_t)compatibilityVersion
{
  selfCopy = self;
  SiriTTSTrainingAsset.compatibilityVersion.getter();
  v4 = v3;

  return v4;
}

- (int64_t)contentVersion
{
  selfCopy = self;
  SiriTTSTrainingAsset.contentVersion.getter();
  v4 = v3;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_20FDA8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SiriTTSTrainingAsset.isEqual(_:)(v8);

  sub_49D8(v8, &qword_28C0C0, &qword_211E18);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SiriTTSTrainingAsset.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SiriTTSTrainingAsset.encode(with:)(coderCopy);
}

- (SiriTTSTrainingAsset)initWithFactor:(id)factor path:(id)path metadata:(id)metadata
{
  factorCopy = factor;
  pathCopy = path;
  metadataCopy = metadata;
  v16.receiver = self;
  v16.super_class = SiriTTSTrainingAsset;
  v12 = [(SiriTTSTrainingAsset *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_factor, factor);
    objc_storeStrong(&v13->_path, path);
    objc_storeStrong(&v13->_metadata, metadata);
    v14 = v13;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SiriTTSTrainingAsset allocWithZone:zone];
  factor = [(SiriTTSTrainingAsset *)self factor];
  path = [(SiriTTSTrainingAsset *)self path];
  metadata = [(SiriTTSTrainingAsset *)self metadata];
  v8 = [(SiriTTSTrainingAsset *)v4 initWithFactor:factor path:path metadata:metadata];

  return v8;
}

@end