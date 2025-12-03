@interface INDeleteTasksIntent(SPI)
- (uint64_t)rem_all;
@end

@implementation INDeleteTasksIntent(SPI)

- (uint64_t)rem_all
{
  v1 = [self all];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end