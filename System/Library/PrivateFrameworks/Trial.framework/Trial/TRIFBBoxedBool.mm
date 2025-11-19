@interface TRIFBBoxedBool
- (BOOL)isEqual:(id)a3;
- (id)init_;
- (unint64_t)hash;
@end

@implementation TRIFBBoxedBool

- (id)init_
{
  v3.receiver = self;
  v3.super_class = TRIFBBoxedBool;
  return [(TRIFBBoxedBool *)&v3 init];
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIFBBoxedBool *)self val];
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
      v8 = [(TRIFBBoxedBool *)self val];
      v9 = [v6 val];
      objc_autoreleasePoolPop(v7);
      v10 = v8 ^ v9 ^ 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end