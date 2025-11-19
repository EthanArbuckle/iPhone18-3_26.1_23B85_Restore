@interface MCPlugHaven
- (MCPlugHaven)initWithImprint:(id)a3 andMontage:(id)a4;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCPlugHaven

- (MCPlugHaven)initWithImprint:(id)a3 andMontage:(id)a4
{
  v7.receiver = self;
  v7.super_class = MCPlugHaven;
  v5 = [(MCPlug *)&v7 initWithImprint:a3 andMontage:a4];
  if (v5)
  {
    v5->mIDInSupercontainer = [a3 objectForKey:@"idInSupercontainer"];
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
  v3 = [(MCPlug *)&v5 imprint];
  [v3 setObject:self->mIDInSupercontainer forKey:@"idInSupercontainer"];
  return v3;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCPlugHaven;
  [(MCPlug *)&v6 _copySelfToSnapshot:?];
  mIDInSupercontainer = self->mIDInSupercontainer;
  if (mIDInSupercontainer)
  {
    *(a3 + 11) = [(NSString *)mIDInSupercontainer copy];
  }
}

@end