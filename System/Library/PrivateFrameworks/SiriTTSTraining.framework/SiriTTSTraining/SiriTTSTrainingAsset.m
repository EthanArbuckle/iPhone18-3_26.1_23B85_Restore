@interface SiriTTSTrainingAsset
- (BOOL)isEqual:(id)a3;
- (SiriTTSTrainingAsset)initWithFactor:(id)a3 path:(id)a4 metadata:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compatibilityVersion;
- (int64_t)contentVersion;
- (int64_t)diskSize;
- (int64_t)hash;
- (int64_t)qualityVersion;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriTTSTrainingAsset

- (int64_t)diskSize
{
  v2 = self;
  v3 = SiriTTSTrainingAsset.diskSize.getter();

  return v3;
}

- (int64_t)qualityVersion
{
  v2 = self;
  SiriTTSTrainingAsset.qualityVersion.getter();
  v4 = v3;

  return v4;
}

- (int64_t)compatibilityVersion
{
  v2 = self;
  SiriTTSTrainingAsset.compatibilityVersion.getter();
  v4 = v3;

  return v4;
}

- (int64_t)contentVersion
{
  v2 = self;
  SiriTTSTrainingAsset.contentVersion.getter();
  v4 = v3;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_20FDA8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SiriTTSTrainingAsset.isEqual(_:)(v8);

  sub_49D8(v8, &qword_28C0C0, &qword_211E18);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = SiriTTSTrainingAsset.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SiriTTSTrainingAsset.encode(with:)(v4);
}

- (SiriTTSTrainingAsset)initWithFactor:(id)a3 path:(id)a4 metadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = SiriTTSTrainingAsset;
  v12 = [(SiriTTSTrainingAsset *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_factor, a3);
    objc_storeStrong(&v13->_path, a4);
    objc_storeStrong(&v13->_metadata, a5);
    v14 = v13;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SiriTTSTrainingAsset allocWithZone:a3];
  v5 = [(SiriTTSTrainingAsset *)self factor];
  v6 = [(SiriTTSTrainingAsset *)self path];
  v7 = [(SiriTTSTrainingAsset *)self metadata];
  v8 = [(SiriTTSTrainingAsset *)v4 initWithFactor:v5 path:v6 metadata:v7];

  return v8;
}

@end