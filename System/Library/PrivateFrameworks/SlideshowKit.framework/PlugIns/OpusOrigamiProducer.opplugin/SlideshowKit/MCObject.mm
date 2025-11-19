@interface MCObject
+ (id)objectWithImprint:(id)a3 andMontage:(id)a4;
- (MCObject)initWithImprint:(id)a3 andMontage:(id)a4;
- (id)_initWithObjectID:(id)a3;
- (id)initFromScratchWithMontage:(id)a3;
- (id)initSnapshot;
- (id)snapshot;
- (void)dealloc;
@end

@implementation MCObject

+ (id)objectWithImprint:(id)a3 andMontage:(id)a4
{
  result = NSClassFromString([a3 objectForKey:@"type"]);
  if (result)
  {
    v7 = [[result alloc] initWithImprint:a3 andMontage:a4];

    return v7;
  }

  return result;
}

- (id)initFromScratchWithMontage:(id)a3
{
  v4 = [(MCObject *)self init];
  v5 = v4;
  if (v4)
  {
    v4->mMontage = a3;
    v6 = [NSString alloc];
    mMontage = v5->mMontage;
    if (mMontage)
    {
      v8 = [(MCMontage *)mMontage uuidSeed];
    }

    else
    {
      v8 = v5;
    }

    v5->mObjectID = [v6 initWithFormat:@"/%llu", v8];
  }

  return v5;
}

- (MCObject)initWithImprint:(id)a3 andMontage:(id)a4
{
  v6 = [MCObject initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v6->mObjectID = [a3 objectForKey:@"id"];
    v6->mMontage = a4;
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

- (id)_initWithObjectID:(id)a3
{
  v4 = [(MCObject *)self init];
  if (v4)
  {
    v4->mObjectID = a3;
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
  v3 = [objc_alloc(objc_opt_class()) initSnapshot];
  [(MCObjectBase *)self _copySelfToSnapshot:v3];

  return v3;
}

@end