@interface TRIFBBoxedDouble
- (BOOL)isEqual:(id)equal;
- (TRIFBBoxedDouble)initWithVal:(double)val;
- (id)init_;
- (unint64_t)hash;
@end

@implementation TRIFBBoxedDouble

- (id)init_
{
  v3.receiver = self;
  v3.super_class = TRIFBBoxedDouble;
  return [(TRIFBBoxedDouble *)&v3 init];
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  [(TRIFBBoxedDouble *)self val];
  v5 = v4;
  objc_autoreleasePoolPop(v3);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_autoreleasePoolPush();
      [(TRIFBBoxedDouble *)self val];
      v9 = v8;
      [v6 val];
      v11 = v9 == v10;
      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TRIFBBoxedDouble)initWithVal:(double)val
{
  v4 = [[TRIFBMutableBoxedDouble alloc] initWithVal:val];
  p_super = &v4->super;
  if (v4)
  {
    v4->_allowMutation = 0;
  }

  return p_super;
}

@end