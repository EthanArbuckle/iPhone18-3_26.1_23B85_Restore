@interface RTReferenceTimeProvider
+ (id)referenceTime;
@end

@implementation RTReferenceTimeProvider

+ (id)referenceTime
{
  TMGetReferenceTime();

  return 0;
}

@end