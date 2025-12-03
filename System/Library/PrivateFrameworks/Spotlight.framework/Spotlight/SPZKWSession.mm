@interface SPZKWSession
- (id)queryTaskWithContext:(id)context;
@end

@implementation SPZKWSession

- (id)queryTaskWithContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    contextCopy = objc_opt_new();
  }

  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D4BED0]) initWithSearchQueryContext:contextCopy];
  [v4 setQuery:v5];

  return v4;
}

@end