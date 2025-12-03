@interface __MRCCFType
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation __MRCCFType

- (id)description
{
  v2 = CFCopyDescription(self);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (equal == self)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

@end