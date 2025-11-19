@interface __MRCCFType
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation __MRCCFType

- (id)description
{
  v2 = CFCopyDescription(self);

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == self)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

@end