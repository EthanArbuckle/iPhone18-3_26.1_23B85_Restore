@interface TRIFBBoxedInt64
- (BOOL)isEqual:(id)a3;
- (TRIFBBoxedInt64)initWithVal:(int64_t)a3;
- (id)init_;
- (unint64_t)hash;
@end

@implementation TRIFBBoxedInt64

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIFBBoxedInt64 *)self val];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [(TRIFBBoxedInt64 *)self val];
      v9 = v8 == [v6 val];
      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TRIFBBoxedInt64)initWithVal:(int64_t)a3
{
  v4 = [[TRIFBMutableBoxedInt64 alloc] initWithVal:a3];
  p_super = &v4->super;
  if (v4)
  {
    v4->_allowMutation = 0;
  }

  return p_super;
}

- (id)init_
{
  v3.receiver = self;
  v3.super_class = TRIFBBoxedInt64;
  return [(TRIFBBoxedInt64 *)&v3 init];
}

@end