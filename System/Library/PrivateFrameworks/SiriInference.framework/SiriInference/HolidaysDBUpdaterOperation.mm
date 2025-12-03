@interface HolidaysDBUpdaterOperation
- (BOOL)isReady;
- (void)main;
@end

@implementation HolidaysDBUpdaterOperation

- (BOOL)isReady
{
  selfCopy = self;
  v3 = HolidaysDBUpdaterOperation.isReady.getter();

  return v3 & 1;
}

- (void)main
{
  selfCopy = self;
  HolidaysDBUpdaterOperation.main()();
}

@end