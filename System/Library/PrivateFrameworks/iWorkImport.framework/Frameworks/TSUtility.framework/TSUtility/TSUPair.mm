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
- (int64_t)compare:(id)compare;
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
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  first = [(TSUPair *)self first];
  first2 = [equal first];
  if (!(first | first2) || (v7 = [first isEqual:first2]) != 0)
  {
    second = [(TSUPair *)self second];
    second2 = [equal second];
    if (!(second | second2))
    {
LABEL_6:
      LOBYTE(v7) = 1;
      return v7;
    }

    LOBYTE(v7) = [second isEqual:second2];
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  v5 = objc_opt_class();
  v6 = TSUCheckedDynamicCast(v5, compare);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  first = [(TSUPair *)self first];
  if (first != [v7 first])
  {
    if (![(TSUPair *)self first])
    {
      return -1;
    }

    if (![v7 first])
    {
      return 1;
    }

    [(TSUPair *)self first];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPair compare:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPair.m"];
      [(TSUPair *)self first];
      [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:109 isFatal:0 description:"unable to perform comparison on %{public}@", objc_opt_class()];
LABEL_18:
      +[TSUAssertionHandler logBacktraceThrottled];
      return -1;
    }

    result = [-[TSUPair first](self "first")];
    if (result)
    {
      return result;
    }
  }

  second = [(TSUPair *)self second];
  if (second == [v7 second])
  {
    return 0;
  }

  if (![(TSUPair *)self second])
  {
    return -1;
  }

  if (![v7 second])
  {
    return 1;
  }

  [(TSUPair *)self second];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPair compare:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPair.m"];
    [(TSUPair *)self second];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:126 isFatal:0 description:"unable to perform comparison on %{public}@", objc_opt_class()];
    goto LABEL_18;
  }

  second2 = [(TSUPair *)self second];
  second3 = [v7 second];

  return [second2 compare:second3];
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