@interface PPSFlatStorage
- (PPSFlatStorage)init;
@end

@implementation PPSFlatStorage

- (PPSFlatStorage)init
{
  v3.receiver = self;
  v3.super_class = PPSFlatStorage;
  return [(PPSStorage *)&v3 init];
}

@end