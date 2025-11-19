@interface TSUPair
+ (id)pair;
+ (id)pairWithFirst:(id)a3 second:(id)a4;
+ (id)pairWithPair:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TSUPair)initWithCoder:(id)a3;
- (TSUPair)initWithFirst:(id)a3 second:(id)a4;
- (TSUPair)initWithPair:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)p_SetFirst:(id)a3;
- (void)p_SetSecond:(id)a3;
@end

@implementation TSUPair

+ (id)pairWithFirst:(id)a3 second:(id)a4
{
  v4 = [[a1 alloc] initWithFirst:a3 second:a4];

  return v4;
}

+ (id)pairWithPair:(id)a3
{
  v3 = [[a1 alloc] initWithPair:a3];

  return v3;
}

+ (id)pair
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSUPair)initWithFirst:(id)a3 second:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSUPair;
  v6 = [(TSUPair *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(TSUPair *)v6 p_SetFirst:a3];
    [(TSUPair *)v7 p_SetSecond:a4];
  }

  return v7;
}

- (TSUPair)initWithPair:(id)a3
{
  v5 = [a3 first];
  v6 = [a3 second];

  return [(TSUPair *)self initWithFirst:v5 second:v6];
}

- (void)dealloc
{
  [(TSUPair *)self p_SetFirst:0];
  [(TSUPair *)self p_SetSecond:0];
  v3.receiver = self;
  v3.super_class = TSUPair;
  [(TSUPair *)&v3 dealloc];
}

- (TSUPair)initWithCoder:(id)a3
{
  v5 = [a3 decodeObject];
  v6 = [a3 decodeObject];

  return [(TSUPair *)self initWithFirst:v5 second:v6];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:{-[TSUPair first](self, "first")}];
  v5 = [(TSUPair *)self second];

  [a3 encodeObject:v5];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [-[TSUPair first](self "first")];
      if (v5)
      {
        v6 = [(TSUPair *)self second];
        v7 = [a3 second];

        LOBYTE(v5) = [v6 isEqual:v7];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [-[TSUPair first](self "first")];
  v6 = [-[TSUPair second](self "second")];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithFirst:second:", v5, v6}];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [-[TSUPair first](self "first")];
  v6 = [-[TSUPair second](self "second")];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithFirst:second:", v5, v6}];

  return v7;
}

- (void)p_SetFirst:(id)a3
{
  mFirst = self->mFirst;
  if (mFirst != a3)
  {

    self->mFirst = a3;
  }
}

- (void)p_SetSecond:(id)a3
{
  mSecond = self->mSecond;
  if (mSecond != a3)
  {

    self->mSecond = a3;
  }
}

@end