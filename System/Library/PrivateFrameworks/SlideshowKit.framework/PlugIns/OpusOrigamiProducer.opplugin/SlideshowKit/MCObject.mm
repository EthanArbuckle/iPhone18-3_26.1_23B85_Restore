@interface MCObject
+ (id)objectWithImprint:(id)imprint andMontage:(id)montage;
- (MCObject)initWithImprint:(id)imprint andMontage:(id)montage;
- (id)_initWithObjectID:(id)d;
- (id)initFromScratchWithMontage:(id)montage;
- (id)initSnapshot;
- (id)snapshot;
- (void)dealloc;
@end

@implementation MCObject

+ (id)objectWithImprint:(id)imprint andMontage:(id)montage
{
  result = NSClassFromString([imprint objectForKey:@"type"]);
  if (result)
  {
    v7 = [[result alloc] initWithImprint:imprint andMontage:montage];

    return v7;
  }

  return result;
}

- (id)initFromScratchWithMontage:(id)montage
{
  v4 = [(MCObject *)self init];
  v5 = v4;
  if (v4)
  {
    v4->mMontage = montage;
    v6 = [NSString alloc];
    mMontage = v5->mMontage;
    if (mMontage)
    {
      uuidSeed = [(MCMontage *)mMontage uuidSeed];
    }

    else
    {
      uuidSeed = v5;
    }

    v5->mObjectID = [v6 initWithFormat:@"/%llu", uuidSeed];
  }

  return v5;
}

- (MCObject)initWithImprint:(id)imprint andMontage:(id)montage
{
  v6 = [MCObject initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v6->mObjectID = [imprint objectForKey:@"id"];
    v6->mMontage = montage;
  }

  return v6;
}

- (id)initSnapshot
{
  v2 = [(MCObject *)self init];
  if (v2)
  {
    v2->mObjectID = @"Snapshot";
  }

  return v2;
}

- (id)_initWithObjectID:(id)d
{
  v4 = [(MCObject *)self init];
  if (v4)
  {
    v4->mObjectID = d;
  }

  return v4;
}

- (void)dealloc
{
  [(MCObject *)self demolish];

  self->mObjectID = 0;
  v3.receiver = self;
  v3.super_class = MCObject;
  [(MCObjectBase *)&v3 dealloc];
}

- (id)snapshot
{
  initSnapshot = [objc_alloc(objc_opt_class()) initSnapshot];
  [(MCObjectBase *)self _copySelfToSnapshot:initSnapshot];

  return initSnapshot;
}

@end