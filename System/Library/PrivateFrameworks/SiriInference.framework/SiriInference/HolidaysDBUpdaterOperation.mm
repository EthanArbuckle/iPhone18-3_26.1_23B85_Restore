@interface HolidaysDBUpdaterOperation
- (BOOL)isReady;
- (void)main;
@end

@implementation HolidaysDBUpdaterOperation

- (BOOL)isReady
{
  v2 = self;
  v3 = HolidaysDBUpdaterOperation.isReady.getter();

  return v3 & 1;
}

- (void)main
{
  v2 = self;
  HolidaysDBUpdaterOperation.main()();
}

@end