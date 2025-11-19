@interface INSystemAppMapper(Shortcuts)
+ (id)sharedMapper;
@end

@implementation INSystemAppMapper(Shortcuts)

+ (id)sharedMapper
{
  if (sharedMapper_onceToken != -1)
  {
    dispatch_once(&sharedMapper_onceToken, &__block_literal_global_507);
  }

  v1 = sharedMapper_mapper;

  return v1;
}

@end