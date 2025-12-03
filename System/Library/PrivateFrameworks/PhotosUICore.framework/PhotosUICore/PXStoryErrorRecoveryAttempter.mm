@interface PXStoryErrorRecoveryAttempter
- (BOOL)isEqual:(id)equal;
@end

@implementation PXStoryErrorRecoveryAttempter

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end