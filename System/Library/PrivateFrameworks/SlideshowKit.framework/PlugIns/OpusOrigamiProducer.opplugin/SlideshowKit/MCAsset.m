@interface MCAsset
- (MCAsset)initWithImprint:(id)a3 andMontage:(id)a4;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCAsset

- (MCAsset)initWithImprint:(id)a3 andMontage:(id)a4
{
  v7.receiver = self;
  v7.super_class = MCAsset;
  v5 = [(MCObject *)&v7 initWithImprint:a3 andMontage:a4];
  if (v5)
  {
    v5->mPath = [a3 objectForKey:@"path"];
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
  v3 = [(MCObject *)&v7 imprint];
  v4 = v3;
  mPath = self->mPath;
  if (mPath)
  {
    [v3 setObject:mPath forKey:@"path"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)a3
{
  *(a3 + 1) = self->super.mMontage;
  mPath = self->mPath;
  if (mPath)
  {
    *(a3 + 3) = [(NSString *)mPath copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCAsset;
  return [NSString stringWithFormat:@"%@: '%@'", [(MCAsset *)&v3 description], self->mPath];
}

@end