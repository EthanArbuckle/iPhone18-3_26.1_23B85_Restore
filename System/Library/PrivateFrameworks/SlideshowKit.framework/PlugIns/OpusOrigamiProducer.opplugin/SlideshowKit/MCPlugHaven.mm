@interface MCPlugHaven
- (MCPlugHaven)initWithImprint:(id)imprint andMontage:(id)montage;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCPlugHaven

- (MCPlugHaven)initWithImprint:(id)imprint andMontage:(id)montage
{
  v7.receiver = self;
  v7.super_class = MCPlugHaven;
  v5 = [(MCPlug *)&v7 initWithImprint:imprint andMontage:montage];
  if (v5)
  {
    v5->mIDInSupercontainer = [imprint objectForKey:@"idInSupercontainer"];
  }

  return v5;
}

- (void)demolish
{
  self->mIDInSupercontainer = 0;
  self->mSupercontainer = 0;
  v3.receiver = self;
  v3.super_class = MCPlugHaven;
  [(MCPlug *)&v3 demolish];
}

- (id)imprint
{
  v5.receiver = self;
  v5.super_class = MCPlugHaven;
  imprint = [(MCPlug *)&v5 imprint];
  [imprint setObject:self->mIDInSupercontainer forKey:@"idInSupercontainer"];
  return imprint;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v6.receiver = self;
  v6.super_class = MCPlugHaven;
  [(MCPlug *)&v6 _copySelfToSnapshot:?];
  mIDInSupercontainer = self->mIDInSupercontainer;
  if (mIDInSupercontainer)
  {
    *(snapshot + 11) = [(NSString *)mIDInSupercontainer copy];
  }
}

@end