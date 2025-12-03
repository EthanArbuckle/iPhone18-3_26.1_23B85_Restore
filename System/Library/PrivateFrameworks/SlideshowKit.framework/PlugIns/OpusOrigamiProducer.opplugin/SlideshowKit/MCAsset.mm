@interface MCAsset
- (MCAsset)initWithImprint:(id)imprint andMontage:(id)montage;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCAsset

- (MCAsset)initWithImprint:(id)imprint andMontage:(id)montage
{
  v7.receiver = self;
  v7.super_class = MCAsset;
  v5 = [(MCObject *)&v7 initWithImprint:imprint andMontage:montage];
  if (v5)
  {
    v5->mPath = [imprint objectForKey:@"path"];
  }

  return v5;
}

- (void)demolish
{
  self->mPath = 0;
  v3.receiver = self;
  v3.super_class = MCAsset;
  [(MCObject *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCAsset;
  imprint = [(MCObject *)&v7 imprint];
  v4 = imprint;
  mPath = self->mPath;
  if (mPath)
  {
    [imprint setObject:mPath forKey:@"path"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  *(snapshot + 1) = self->super.mMontage;
  mPath = self->mPath;
  if (mPath)
  {
    *(snapshot + 3) = [(NSString *)mPath copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCAsset;
  return [NSString stringWithFormat:@"%@: '%@'", [(MCAsset *)&v3 description], self->mPath];
}

@end