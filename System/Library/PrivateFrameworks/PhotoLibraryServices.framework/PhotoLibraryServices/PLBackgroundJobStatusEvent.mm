@interface PLBackgroundJobStatusEvent
- (NSString)statusDump;
@end

@implementation PLBackgroundJobStatusEvent

- (NSString)statusDump
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateStyle:1];
  [v3 setTimeStyle:2];
  v4 = MEMORY[0x1E696AEC0];
  eventTimestamp = [(PLBackgroundJobStatusEvent *)self eventTimestamp];
  v6 = [v3 stringFromDate:eventTimestamp];
  v7 = [v4 stringWithFormat:@"%@", v6];

  return v7;
}

@end