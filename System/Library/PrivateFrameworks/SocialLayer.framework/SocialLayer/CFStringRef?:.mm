@interface CFStringRef?:
- (uint64_t)Any;
@end

@implementation CFStringRef?:

- (uint64_t)Any
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(self, v4);
  return self;
}

@end