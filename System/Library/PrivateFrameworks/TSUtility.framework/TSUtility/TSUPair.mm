@interface TSUPair
+ (id)pair;
+ (id)pairWithFirst:(id)first second:(id)second;
+ (id)pairWithPair:(id)pair;
- (BOOL)isEqual:(id)equal;
- (TSUPair)initWithCoder:(id)coder;
- (TSUPair)initWithFirst:(id)first second:(id)second;
- (TSUPair)initWithPair:(id)pair;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)p_SetFirst:(id)first;
- (void)p_SetSecond:(id)second;
@end

@implementation TSUPair

+ (id)pairWithFirst:(id)first second:(id)second
{
  v4 = [[self alloc] initWithFirst:first second:second];

  return v4;
}

+ (id)pairWithPair:(id)pair
{
  v3 = [[self alloc] initWithPair:pair];

  return v3;
}

+ (id)pair
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSUPair)initWithFirst:(id)first second:(id)second
{
  v9.receiver = self;
  v9.super_class = TSUPair;
  v6 = [(TSUPair *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(TSUPair *)v6 p_SetFirst:first];
    [(TSUPair *)v7 p_SetSecond:second];
  }

  return v7;
}

- (TSUPair)initWithPair:(id)pair
{
  first = [pair first];
  second = [pair second];

  return [(TSUPair *)self initWithFirst:first second:second];
}

- (void)dealloc
{
  [(TSUPair *)self p_SetFirst:0];
  [(TSUPair *)self p_SetSecond:0];
  v3.receiver = self;
  v3.super_class = TSUPair;
  [(TSUPair *)&v3 dealloc];
}

- (TSUPair)initWithCoder:(id)coder
{
  decodeObject = [coder decodeObject];
  decodeObject2 = [coder decodeObject];

  return [(TSUPair *)self initWithFirst:decodeObject second:decodeObject2];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:{-[TSUPair first](self, "first")}];
  second = [(TSUPair *)self second];

  [coder encodeObject:second];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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
        second = [(TSUPair *)self second];
        second2 = [equal second];

        LOBYTE(v5) = [second isEqual:second2];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [-[TSUPair first](self "first")];
  v6 = [-[TSUPair second](self "second")];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithFirst:second:", v5, v6}];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [-[TSUPair first](self "first")];
  v6 = [-[TSUPair second](self "second")];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithFirst:second:", v5, v6}];

  return v7;
}

- (void)p_SetFirst:(id)first
{
  mFirst = self->mFirst;
  if (mFirst != first)
  {

    self->mFirst = first;
  }
}

- (void)p_SetSecond:(id)second
{
  mSecond = self->mSecond;
  if (mSecond != second)
  {

    self->mSecond = second;
  }
}

@end