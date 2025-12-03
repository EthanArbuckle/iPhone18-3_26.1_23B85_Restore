@interface UISSlotTag
- (BOOL)isEqual:(id)equal;
@end

@implementation UISSlotTag

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end