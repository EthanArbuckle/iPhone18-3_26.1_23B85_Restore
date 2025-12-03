@interface ToolKitIndexingScheduler
- (BOOL)reindexWithDebouncer:(id)debouncer error:(id *)error;
@end

@implementation ToolKitIndexingScheduler

- (BOOL)reindexWithDebouncer:(id)debouncer error:(id *)error
{
  debouncerCopy = debouncer;

  sub_2310844E4(debouncerCopy);

  return 1;
}

@end