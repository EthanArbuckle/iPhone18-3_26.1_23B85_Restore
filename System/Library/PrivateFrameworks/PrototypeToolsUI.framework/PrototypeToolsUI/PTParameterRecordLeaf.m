@interface PTParameterRecordLeaf
- (BOOL)isEqual:(id)a3;
- (PTParameterRecordLeaf)initWithCoder:(id)a3;
- (PTParameterRecordLeaf)initWithRecordClassName:(id)a3 value:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PTParameterRecordLeaf

- (PTParameterRecordLeaf)initWithRecordClassName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PTParameterRecordLeaf;
  v8 = [(PTParameterRecordLeaf *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PTParameterRecordLeaf *)v8 setRecordClassName:v6];
    [(PTParameterRecordLeaf *)v9 setChangedValue:v7];
  }

  return v9;
}

- (PTParameterRecordLeaf)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordClassName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changedValue"];

  v7 = [(PTParameterRecordLeaf *)self initWithRecordClassName:v5 value:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PTParameterRecordLeaf *)self recordClassName];
  [v4 encodeObject:v5 forKey:@"recordClassName"];

  v6 = [(PTParameterRecordLeaf *)self changedValue];
  [v4 encodeObject:v6 forKey:@"changedValue"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PTParameterRecordLeaf *)self recordClassName];
  v6 = [(PTParameterRecordLeaf *)self changedValue];
  v7 = [v4 initWithRecordClassName:v5 value:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [BSEqualsBuilder builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(PTParameterRecordLeaf *)self recordClassName];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100002558;
  v16[3] = &unk_100018800;
  v7 = v4;
  v17 = v7;
  v8 = [v5 appendString:v6 counterpart:v16];
  v9 = [(PTParameterRecordLeaf *)self changedValue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002560;
  v14[3] = &unk_100018828;
  v15 = v7;
  v10 = v7;
  v11 = [v8 appendObject:v9 counterpart:v14];
  v12 = v11 != 0;

  return v12;
}

- (unint64_t)hash
{
  v3 = +[BSHashBuilder builder];
  v4 = [(PTParameterRecordLeaf *)self recordClassName];
  v5 = [v3 appendString:v4];
  v6 = [(PTParameterRecordLeaf *)self changedValue];
  v7 = [v5 appendObject:v6];
  v8 = [v7 hash];

  return v8;
}

@end