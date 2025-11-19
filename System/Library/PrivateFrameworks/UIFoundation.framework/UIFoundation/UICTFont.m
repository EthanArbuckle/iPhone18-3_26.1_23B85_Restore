@interface UICTFont
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation UICTFont

- (unint64_t)hash
{
  v3 = _CFNonObjCHash();
  ExtraData = __CTFontGetExtraData(self);
  if (ExtraData)
  {
    v3 ^= [ExtraData hash];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  if (self == a3)
  {
    goto LABEL_9;
  }

  v5 = _CFNonObjCEqual();
  if (!v5)
  {
    return v5;
  }

  ExtraData = __CTFontGetExtraData(self);
  v7 = __CTFontGetExtraData(a3);
  if (ExtraData == v7)
  {
LABEL_9:
    LOBYTE(v5) = 1;
    return v5;
  }

  LOBYTE(v5) = [ExtraData isEqualToExtraData:v7];
  return v5;
}

@end